//
// Created by JaredHam777 on 9/23/2020.
//
#include "GameObject.h"
#include <CSCI441/objects.hpp>
#include <CSCI441/SimpleShader.hpp>



    void GameObject::draw() {
        if(meshType=="cube")    {
            CSCI441::SimpleShader3::pushTransformation( transform.getMatrix());
            CSCI441::SimpleShader3::setMaterialColor(glm::vec3(1,1,1));
            CSCI441::drawSolidCube(1.0);
            CSCI441::SimpleShader3::popTransformation();
        }
    }
    GameObject::GameObject() {
        transform.revertToDefaultValues();
        meshType = "cube";
    }


