#pragma once
#include <stdio.h>

typedef struct _config {

    // Render stuff
    char    bHeadless;

    size_t  sWindowsCt;
    size_t* asWindowsX;
    size_t* asWindowsY;
    size_t* asWindowsW;
    size_t* asWindowsH;

    int     iQuality;

} config_t;

config_t*   LoadConfigFromFile(FILE* file);
int     SaveConfigToFile(FILE* file, config_t* cfg);
