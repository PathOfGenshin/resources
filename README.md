# resources

UI image resources for certain anime games. Optimized as `.png` files via `oxipng`.

____

Current repository game version update status:
- `GI: 4.6`
- `HSR: 2.2`

How to use (see `justfile`):
1. Make a copy of `.env.template` named simply `.env`, and fill out the missing
  environment variables
2. Generate asset maps first via the `just generate-maps` command
3. Extract sprite images via the `just extract-sprites` command
4. Optimize the output `.png` files via the `just optimize` command (make sure `oxipng`
  is installed)

## Disclaimer

This repository is not affiliated with miHoYo nor HoYoverse in any way. All image
resources in this repository are a property of miHoYo and HoYoverse, and are used for
educational purposes only. All rights reserved to miHoYo and HoYoverse.

If you are a representative of miHoYo and wish for these image resources to be removed,
please email me.

Please note that the rest of the code in this repository (non-images) is licensed under
the GNU GENERAL PUBLIC LICENSE Version 3.
