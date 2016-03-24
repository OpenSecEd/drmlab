.PHONY: all
all: drm.pdf

SRC=	drm.tex aims.tex literature.tex drm.bib

drm.pdf: ${SRC} llncs

.PHONY: clean
clean: clean-drm
clean-drm:
	${MAKE} -C cpager-drm clean


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
