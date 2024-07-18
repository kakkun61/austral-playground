AUSTRAL_LIB_DIR := $(HOME)/.local/share/austral/standard/src
AUSTRAL_LIBS := $(foreach lib,$(wildcard $(AUSTRAL_LIB_DIR)/*.aui) $(wildcard $(AUSTRAL_LIB_DIR)/*/*.aui),$(lib),$(lib:.aui=.aum))

C_FILES := $(foreach aui,$(wildcard *.aui),$(aui:.aui=.c))

.PHONY: all
all: $(C_FILES)

%.c: %.aui %.aum
	austral compile --output=$@ --target-type=c --no-entrypoint $(AUSTRAL_LIBS) $<,$(<:.aui=.aum)
