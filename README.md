# wayland-protocols zig

[wayland-protocols](https://gitlab.freedesktop.org/wayland/wayland-protocols), packaged for the Zig build system.

## Using

First, update your `build.zig.zon`:

```
zig fetch --save git+https://github.com/allyourcodebase/wayland-protocols.git
```

Then in your `build.zig`:

```zig
const dep = b.dependency("wayland_protocols", .{});
const root = dep.namedLazyPath("root");
```
