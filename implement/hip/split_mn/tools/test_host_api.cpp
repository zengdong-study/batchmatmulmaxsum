#include "bmms/split_mn.h"
#include <iostream>
#include <stdexcept>

void require(bool condition,const char* message) {
    if(!condition)throw std::runtime_error(message);
}
int main() {
    using namespace bmms;
    split_mn::Plan p;
    Problem problem{3,17,33,40,DataType::Float16,false,false};
    require(split_mn::make_plan(problem,{SplitAxis::M,16,4},&p)==Status::Success,"M plan failed");
    require(p.groups==2 && p.grid.x==6 && p.block.x==128,"M geometry wrong");
    require(p.workspace.completionOffset==256 && p.workspace.bytes==512,"M workspace wrong");
    auto before=p;auto invalid=problem;invalid.K=33;
    require(split_mn::make_plan(invalid,{SplitAxis::M,16,4},&p)==Status::InvalidArgument,"bad K accepted");
    require(p.ready && p.groups==before.groups && p.workspace.bytes==before.workspace.bytes,"failed plan modified output");
    require(split_mn::make_plan(problem,{SplitAxis::N,16,8},&p)==Status::Success,"N plan failed");
    require(p.groups==3 && p.grid.x==9 && p.block.x==256,"N geometry wrong");
    alignas(256) unsigned char workspace[4096];
    Arguments a;a.x1=workspace;a.x2=workspace;a.y=reinterpret_cast<float*>(workspace);
    a.workspace=workspace;a.workspaceBytes=p.workspace.bytes;
    auto bad=p;bad.groups++;
    require(split_mn::launch(bad,a)==Status::InvalidArgument,"tampered groups accepted");
    bad=p;bad.grid.y=2;
    require(split_mn::launch(bad,a)==Status::InvalidArgument,"tampered grid accepted");
    bad=p;bad.workspace.completionOffset+=4;
    require(split_mn::launch(bad,a)==Status::InvalidArgument,"tampered workspace accepted");
    a.workspaceBytes=p.workspace.bytes-1;
    require(split_mn::launch(p,a)==Status::InvalidArgument,"short workspace accepted");
    a.workspaceBytes=p.workspace.bytes;a.workspace=workspace+1;
    require(split_mn::launch(p,a)==Status::InvalidArgument,"misaligned workspace accepted");
    a.workspace=workspace;a.x1=nullptr;
    require(split_mn::launch(p,a)==Status::InvalidArgument,"null input accepted");
    std::size_t bytes=123,offset=456;
    require(bmms_mn_plan(1,16,16,32,2,0,0,0,64,4,&bytes,&offset)!=0,"invalid dtype flag accepted");
    require(bytes==123 && offset==456,"C plan failure modified outputs");
    std::cout<<"host planning and launch rejection checks passed; no GPU launch\n";
}
