const std = @import("std");

pub const pkg = std.build.Pkg{
    .name = "windowsInput",
    .source = .{ .path = thisDir() ++ "/src/windowsInput.zig" },
};

pub fn build(b: *std.build.Builder) void {
    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();

    // const lib = b.addStaticLibrary("zig-windows-input", "src/main.zig");
    // lib.setBuildMode(mode);
    // lib.install();

    const main_tests = b.addTest("src/tests.zig");
    main_tests.setBuildMode(mode);

    const test_step = b.step("test", "Run library tests");
    test_step.dependOn(&main_tests.step);
}

fn thisDir() []const u8 {
    comptime {
        return std.fs.path.dirname(@src().file) orelse ".";
    }
}