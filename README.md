
# Zig Windows Input
A zig implementation of SendInput for synthesiz keystrokes, mouse motions, and button clicks. 
See [nf-winsuer-sendinput](https://learn.microsoft.com/nb-no/windows/win32/api/winuser/nf-winuser-sendinput).

## Adding this package to a project in build.zig

```zig
const windowsInput = @import("libs/windowsInput/build.zig");

pub fn build(b: *std.build.Builder) void {
 ...
 exe.addPackage(windowsInput.pkg);
 ...
}
```

Assumes that the code have been copied to libs/windowsInput

## Example usage
"Press Win + D (collapse all open windows)"

```zig
const windowsInput = @import("windowsInput");
const Input = windowsInput.Input;

pub fn main() !void {
  var inputs: [4]Input = undefined;
  inputs[0] = Input.initKeyboard(.{ .wVk = .LWIN });
  inputs[1] = Input.initKeyboard(.{ .wVk = .KEY_D });
  inputs[2] = Input.initKeyboard(.{ .wVk = .KEY_D, .dwFlags = .KeyUp });
  inputs[3] = Input.initKeyboard(.{ .wVk = .LWIN, .dwFlags = .KeyUp });
  _ = try sendInputs(inputs[0..]);
}
```

## Running Tests

```zig
zig build test
```

Warning! Running tests will send different inputs to your machine.