# See .env.template for required environment variables to be copied over to a .env file
# Also requires 'oxipng' to be installed for optimizing output PNG images

set dotenv-load

generate-maps-gi:
    $ASSET_STUDIO_CLI "$GAME_DIR_GI" ./ --game GI --map_op Both --map_type JSON --map_name gi_assets_map

generate-maps-hsr:
    $ASSET_STUDIO_CLI "$GAME_DIR_HSR" ./ --game SR --map_op Both --map_type JSON --map_name hsr_assets_map

extract-sprites-gi:
    $ASSET_STUDIO_CLI "$GAME_DIR_GI" ./resources/gi --game GI --map_op Load --map_type JSON --map_name gi_assets_map --names ^UI_ --types Sprite

extract-sprites-hsr:
    $ASSET_STUDIO_CLI "$GAME_DIR_HSR" ./resources/hsr --game SR --map_op Load --map_type JSON --map_name hsr_assets_map --group_assets ByContainer --containers ^assets/asbres/spriteoutput/ --types Sprite

optimize-gi:
    oxipng -o max -s -r ./resources/gi

optimize-hsr:
    oxipng -o max -s -r ./resources/hsr

# Generate asset maps for both games
generate-maps: generate-maps-gi generate-maps-hsr

# Extract sprites from both games
extract-sprites: extract-sprites-gi extract-sprites-hsr

# Optimize all PNG images in the resources directory using oxipng
optimize: optimize-gi optimize-hsr
