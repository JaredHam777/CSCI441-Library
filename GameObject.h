//
// Created by JaredHam777 on 9/23/2020.
//

#ifndef TUTORIALS_GAMEOBJECT_H
#define TUTORIALS_GAMEOBJECT_H

#include "Transform.cpp"
#include <string>

#include <cstdio>				// for printf functionality
#include <cstdlib>			    // for exit functionality
class GameObject    {
public:
    Transform transform;
    std::string meshType;
    void draw();
    GameObject();

};
#endif //TUTORIALS_GAMEOBJECT_H
