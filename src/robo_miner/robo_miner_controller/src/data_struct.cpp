//
// Created by parallels on 10/23/22.
//

#include "data_struct.h"
#include <cstdint>

typedef struct MapNode {
    std::uint8_t x;
    std::uint8_t y;
    std::uint8_t symbol;
    bool isVisited;
}MapNode;


void initNode(MapNode** node){
    (*node)->x = 0;
    (*node)->y = 0;
    (*node)->symbol = 0;
    (*node)->isVisited = false;
}

void setNodeCoords(MapNode** node, uint8_t x, uint8_t y){
    (*node)->x = x;
    (*node)->y = y;
}

void setNodeSymbol(MapNode** node, uint8_t symbol){
    (*node)->symbol = symbol;
}

void setNodeVisited(MapNode** node){
    (*node)->isVisited = true;
}
