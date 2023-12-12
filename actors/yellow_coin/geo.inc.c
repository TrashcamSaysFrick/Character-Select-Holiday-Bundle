#include "src/game/envfx_snow.h"

const GeoLayout yellow_coin_geo[] = {
    GEO_NODE_START(),
    GEO_OPEN_NODE(),
        GEO_SHADOW(0, 180, 50),
        GEO_ASM(0, geo_rotate_coin),
        GEO_ROTATION_NODE(0, 0, 0, 0)
        GEO_OPEN_NODE(),
            GEO_DISPLAY_LIST(LAYER_OPAQUE, yellow_coin_Cylinder_mesh_layer_1),
            GEO_DISPLAY_LIST(LAYER_OPAQUE, yellow_coin_material_revert_render_settings),
        GEO_CLOSE_NODE(),
    GEO_CLOSE_NODE(),
    GEO_END(),
};

const GeoLayout yellow_coin_no_shadow_geo[] = {
    GEO_NODE_START(),
    GEO_OPEN_NODE(),
        GEO_ASM(0, geo_rotate_coin),
        GEO_ROTATION_NODE(0, 0, 0, 0)
        GEO_OPEN_NODE(),
            GEO_DISPLAY_LIST(LAYER_OPAQUE, yellow_coin_Cylinder_mesh_layer_1),
            GEO_DISPLAY_LIST(LAYER_OPAQUE, yellow_coin_material_revert_render_settings),
        GEO_CLOSE_NODE(),
    GEO_CLOSE_NODE(),
    GEO_END(),
};