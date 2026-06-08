{ ... }:

{
  flake.templates.rust = {
    path = ../templates/rust;
    description = "Latest stable rust toolchain";
  };

  flake.templates.zig = {
    path = ../templates/zig;
    description = "Minimal zig project";
  };
}
