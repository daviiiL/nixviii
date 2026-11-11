{lib, ...}: {
  plugins.smear-cursor = {
    enable = lib.mkDefault true;
    settings = {
      distance_stop_animating = 0.5;
      hide_target_hack = false;
      stiffness = 0.8;
      trailing_stiffness = 0.5;
    };
  };
}
