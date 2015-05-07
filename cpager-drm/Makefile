PROGRAM_FILES=	pager.c types.h sys.h sys.c mem.h mem.c swap.h swap.c
PROGRAM_FILES+= free.h free.c
PROGRAM_FILES+=	memalg.h memalg_fifo.c memalg_sc.c memalg_esc.c memalg_arb.c
SOURCES=		${PROGRAM_FILES:%.h=}
ifeq (${MAKE},gmake)
CFLAGS= 	-Wall -g -fno-stack-protector -z execstack
else
CFLAGS= 	-Wall -g -D_GNU_SOURCE -fno-stack-protector -z execstack
endif

.PHONY: all
all: cpager-drm

# Depends and recipe for pager program
cpager-drm: ${SOURCES:.c=.o}
	${CC} -o $@ $^

.PHONY: clean
clean:
	${RM} ${SOURCES:.c=.o} cpager-drm
