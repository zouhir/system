{ config, pkgs, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
       window = {
       	dynamic_padding = false;
       	padding = {
       		x = 8;
       		y = 28;
       	};
       	decorations = "transparent";
       	opacity = 1;
       };
			font.size = 12.0;
			import = [ pkgs.alacritty-theme.github_dark_default ];
    };
  };
}
