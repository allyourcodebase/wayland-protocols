const std = @import("std");

pub fn build(b: *std.Build) void {
    const upstream = b.dependency("wayland_protocols_c", .{});

    b.addNamedLazyPath("root", upstream.path(""));
    inline for (.{ "stable", "staging", "unstable" }) |category|
        b.addNamedLazyPath(category, upstream.path(category));
}
