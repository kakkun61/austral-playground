AUSTRAL_LIB_DIR := $(HOME)/.local/share/austral/standard/src
AUSTRAL_LIBS := $(foreach lib,$(wildcard $(AUSTRAL_LIB_DIR)/*.aui) $(wildcard $(AUSTRAL_LIB_DIR)/*/*.aui),$(lib),$(lib:.aui=.aum))

app: main.aum
	austral compile --output=$@ --entrypoint=Main:main $(AUSTRAL_LIBS) $^
