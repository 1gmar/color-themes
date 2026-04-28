{
  description = "Color themes";

  inputs = { };

  outputs =
    _:
    let
      baseColors = {
        base03 = "#002b36";
        base02 = "#073642";
        base01 = "#586e75";
        base00 = "#657b83";
        base0 = "#839496";
        base1 = "#93a1a1";
        base2 = "#eee8d5";
        base3 = "#fdf6e3";
      };
      accentColors = {
        yellow = "#b58900";
        orange = "#cb4b16";
        red = "#dc322f";
        magenta = "#d33682";
        violet = "#6c71c4";
        blue = "#268bd2";
        cyan = "#2aa198";
        green = "#859900";
      };
    in
    {
      solarized = with baseColors; {
        light = {
          background = base3;
          backHighlight = base2;
          secondaryContent = base1;
          primaryContent = base00;
          highlight = base01;
          black = base02;
          brightBlack = base03;
          brightBlue = base0;
        }
        // accentColors;
        dark = {
          background = base03;
          backHighlight = base02;
          secondaryContent = base01;
          primaryContent = base0;
          highlight = base1;
          white = base2;
          brightWhite = base3;
          brightYellow = base00;
        }
        // accentColors;
      };
    };
}
