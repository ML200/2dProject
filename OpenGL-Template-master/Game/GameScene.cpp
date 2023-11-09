//
// Created by m on 09.11.2023.
//

#include "GameScene.h"

void GameScene::awake() {
    //Set all the meshes used and their initial properties

    //Do the first draw call here

}

void GameScene::update() {
    //Do the game loop operations on the objects (eg movement logic)

    //When finished, do the draw calls for the objects
    //Later, do the draw call computation in a separate thread (wait for already computed game loop objects and immediately do the draw call)
}

//Do a drawcall on the renderer for all objects (use transform and a list of its vertices to call the function)
void GameScene::drawCall() {
    for(int i = 0; i< gameObjects.size(); i++){

    }
}
