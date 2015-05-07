FILES= 			drm.tex aims.tex literature.tex drm.bib

USE_LATEXMK= 	yes
USE_BIBLATEX= 	yes

.PHONY: all
all: drm.pdf

drm.pdf: ${FILES} llncs

.PHONY: clean
clean: clean-drm
clean-drm:
	${MAKE} -C cpager-drm clean


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
