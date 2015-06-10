MAKEFLAGS += --no-builtin-rules                                                                 
.DEFAULT_GOAL := all
.DELETE_ON_ERROR:
.SUFFIXES:
.PHONY: all dist clean clean-dist

all::

dist:: all

clean:: clean-dist
	rm -rf build

clean-dist::

$(ATMOSTESTS_DIR)/%:
	$(MAKE) -C $(ATMOSTESTS_DIR) $*

$(SCHAER_ADVECTION_DIR)/%:
	$(MAKE) -C $(SCHAER_ADVECTION_DIR) $*

include $(MAKE_COMMON)/executables/Makefile
include $(MAKE_COMMON)/executables/Makefile-OpenFOAM
include $(MAKE_COMMON)/globals/Makefile-OpenFOAM
include $(MAKE_COMMON)/templates/Makefile-FileSystem
include $(MAKE_COMMON)/templates/Makefile-LaTeX
include $(MAKE_COMMON)/templates/Makefile-Gnuplot
include make/executables/Makefile-Gmt
include make/globals/Makefile-OpenFOAM
include make/templates/Makefile-GmtPlot
include make/templates/Makefile-PlotMesh
include make/templates/Makefile-GravityWaves
include make/Makefile-Meshes
include make/Makefile-Advection
include make/Makefile-Resting
include make/Makefile-GravityWaves
include make/Makefile-TF-CutCell-Comparison