{config, pkgs, ...}:
{

  hardware.bluetooth.enable = true;

  services.pipewire.media-session.config.bluez-monitor.rules = [
        {
          # Matches all cards
          matches = [{ "device.name" = "~bluez_card.*"; }];
          actions = {
            "update-props" = {
            "bluez5.auto-connect" = [ "hfp_hf" "hsp_hs" "a2dp_sink" ];
            };
          };
        }
        {
          matches = [
            #Matches all sources
            { "node.name" = "~bluez_input.*"; }
            #Matches all outputs
            { "node.name" = "~bluez_output.*"; }
            ];
        actions = {
          "node.pause-on-idle" = false;
          };
        }
    ];

  environment.etc = {
          "wireplumber/bluetooth.lua.d/51-bluez-config.lua".text = ''
                  bluez_monitor.properties = {
                          ["bluez5.enable-sbc-xq"] = true,
                          ["bluez5.enable-msbc"] = true,
                          ["bluez5.enable-hw-volume"] = true,
                          ["bluez5.headset-roles"] = "[ hsp_hs hsp_ag hfp_hf hfp_ag ]"
                  }
          '';
  };
}
