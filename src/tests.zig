const std = @import("std");
const testing = std.testing;

const sendInputs = @import("input.zig").sendInputs;
const Input = @import("input.zig").Input;
const VirtualKey = @import("input.zig").VirtualKey;

test "basic add functionality" {
    var inputs: [4]Input = undefined;
    inputs[0] = Input.initKeyboard(.{ .wVk = .LWIN });
    inputs[1] = Input.initKeyboard(.{ .wVk = .KEY_D });
    inputs[2] = Input.initKeyboard(.{ .wVk = .KEY_D, .dwFlags = .KeyUp });
    inputs[3] = Input.initKeyboard(.{ .wVk = .LWIN, .dwFlags = .KeyUp });
    const count = try sendInputs(inputs[0..]);
    try testing.expectEqual(inputs.len, count);
}

test "keys" {
    try std.testing.expectEqual(0x5B, @enumToInt(VirtualKey.LWIN));
}