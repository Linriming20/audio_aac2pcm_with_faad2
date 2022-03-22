src := aac_adts.c aac_adts.h main.c
static_lib := lib/libfaad.a #lib/libfaad_drm.a

CC := gcc
CFLAGS := -I./include
LDFLAGS := -lm


all: aac2pcm


aac2pcm: $(src) $(static_lib)
	$(CC) $^ $(CFLAGS) $(LDFLAGS) -o $@

clean:
	rm -f aac2pcm out*
.PHONY := clean
