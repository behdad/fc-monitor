PKGS = fontconfig glib-2.0 gobject-2.0 gio-2.0

CFLAGS = `pkg-config --cflags $(PKGS)` -DFONTCONFIG_MONITOR_TEST
LDFLAGS = `pkg-config --libs $(PKGS)` -lm

all: fc-monitor

%: %.c
	$(CC) -std=c99 -o $@ $^ $(CFLAGS) $(LDFLAGS)
