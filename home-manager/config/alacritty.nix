{config, pkgs, ...}:
{
  programs.alacritty.enable = true;
  
  programs.alacritty.settings = {
  env = {
    TERM = "alacritty";
  };

  window = {
    padding = {
      x = 20;
      y = 20;
    };
  };
    
  scrolling = {
    history = 10000; 
    multiplier = 3;
  };

  font = {
    normal = {
      family = "JetBrains Mono"; 
      style = "Regular";
    };

  size = 9;
  builtin_box_drawing = true;
  draw_bold_text_with_bright_colors = false;
  };

  colors = {
    primary = {
      background = "#111111";
      foreground = "#ffffff";
    };

    cursor = {
      text = "CellBackground";
      cursor = "CellForeground";
    };

    vi_mode_cursor = {
      text = "CellBackground";
      cursor = "CellForeground";
    };
  
    normal = {
      black = "#111111";
      red = "#d40b0e";
      green = "#52ff80";
      yellow = "#fff642";
      blue = "#1a93c7";
      magenta = "#db1d00";
      cyan = "#5ae8e1";
      white = "#ffffff";
    };

    transparent_background_colors = true;
  };

  live_config_reload = true;

  key_bindings = [
    { 
      key = "C";
      mods = "Control | Shift"; 
      chars = "\\x03"; 
    }
    { 
      key = "C"; 
      mods = "Control"; 
      action = "Copy"; 
    }
    { 
      key = "V"; 
      mods = "Control"; 
      action = "Paste"; 
    } 
    { 
      key = "O"; 
      mods = "Control"; 
      action = "ScrollHalfPageUp"; 
    }
    { 
      key = "P"; 
      mods = "Control"; 
      action = "ScrollHalfPageDown"; 
    }
    { 
      key = "Equals"; 
      mods = "Control"; 
      action = "IncreaseFontSize"; 
    }
    { 
      key = "Plus"; 
      mods = "Control"; 
      action = "IncreaseFontSize"; 
    }
    { 
      key = "Minus"; 
      mods = "Control"; 
      action = "DecreaseFontSize"; 
    }
  ];

  debug = {
    render_timer = false;
    persistent_logging = false;
    log_level = "Warn";
    print_events = false;
  };
  };
}
