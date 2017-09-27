FORMAT := png svg
SOURCEDIR := $(CURDIR)/docs
STYLE := plantuml-toolset/super-serious-style.isvg

all: plantuml-toolset

plantuml-toolset:
	git clone https://github.com/rbkmoney/plantuml-toolset.git

update-toolset: plantuml-toolset
	cd $< && git pull

-include plantuml-toolset/wsd.mk
