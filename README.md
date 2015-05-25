# Comparison of Terrain Following and Cut Cell Grids using a Non-Hydrostatic Model
J. Shaw & H. Weller 2015

## Compilation
First, you will need to install:
- OpenFOAM 2.3.0
- GMT 5.1.0
- gnuplot 5.0
- a LaTeX installation

First you will need to `git clone` some dependencies and define respective environment variables:
- https://github.com/hertzsprung/make-common [`MAKE_COMMON`]
- https://github.com/hertzsprung/AtmosFOAM
- https://github.com/hertzsprung/AtmosTests [`ATMOSTESTS_DIR`]
- https://github.com/hertzsprung/schaer-advection (currently private) [`SCHAER_ADVECTION_DIR`]

AtmosFOAM will need to be installed, see its README for instructions.

From the root directory of `tf-cutcell-comparison`, issue `make` to compile the document.
Note that the resting atmosphere tests may take several minutes and the gravity waves test several hours.

To exactly reproduce the results, use the `shaw-weller-2015-mwr` tag for all repositories.
