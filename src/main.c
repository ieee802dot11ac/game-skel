#include "common/common.h"
#include "ui/ui.h"
#include "input/input.h"
#include "render/render.h"
#include "engine/engine.h"
#include "game.h"

int main(int argc, char** argv) {
    LoadConfigFromFile();
    InputInit();
    RendInit();
    UiInit();
    EngineInit();
    GameRun();
    return GameShutdown();
}
