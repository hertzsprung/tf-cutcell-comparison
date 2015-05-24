MAKEFLAGS += --no-builtin-rules                                                                 
.DEFAULT_GOAL := all
.DELETE_ON_ERROR:
.SUFFIXES:
.PHONY: all clean

all::

clean:
	rm -rf build

$(ATMOSTESTS_DIR)/%:
	$(MAKE) -C $(ATMOSTESTS_DIR) $*

$(SCHAER_ADVECTION_DIR)/%:
	$(MAKE) -C $(SCHAER_ADVECTION_DIR) $*

include $(MAKE_COMMON)/executables/Makefile
include $(MAKE_COMMON)/templates/Makefile-FileSystem
include make/template/Makefile-LaTeX
include make/Makefile-TF-CutCell-Comparison
