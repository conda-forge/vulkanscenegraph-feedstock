#include <vsg/all.h>

int main()
{
    auto group = vsg::Group::create();
    group->children.push_back(vsg::Group::create());
    return group->children.size() == 1 ? 0 : 1;
}
