const std = @import("std");

pub fn build(b: *std.Build) void {
    const upstream = b.dependency("upstream", .{});

    b.addNamedLazyPath("root", upstream.path(""));
    inline for (.{ "stable", "staging", "unstable" }) |category|
        b.addNamedLazyPath(category, upstream.path(category));
}
