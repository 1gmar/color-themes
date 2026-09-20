{
  description = "Color themes";

  inputs = { };

  outputs =
    _:
    let
      baseColors = {
        base03 = {
          val = "#002b36";
          idx = 8;
        };
        base02 = {
          val = "#073642";
          idx = 0;
        };
        base01 = {
          val = "#586e75";
          idx = 10;
        };
        base00 = {
          val = "#657b83";
          idx = 11;
        };
        base0 = {
          val = "#839496";
          idx = 12;
        };
        base1 = {
          val = "#93a1a1";
          idx = 14;
        };
        base2 = {
          val = "#eee8d5";
          idx = 7;
        };
        base3 = {
          val = "#fdf6e3";
          idx = 15;
        };
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
      ctermAccentColors = {
        yellow = 3;
        orange = 9;
        red = 1;
        magenta = 5;
        violet = 13;
        blue = 4;
        cyan = 6;
        green = 2;
      };
    in
    {
      solarized = with baseColors; {
        light = {
          cterm = {
            background = base3.idx;
            backHighlight = base2.idx;
            secondaryContent = base1.idx;
            primaryContent = base00.idx;
            highlight = base01.idx;
            black = base02.idx;
            brightBlack = base03.idx;
            brightBlue = base0.idx;
          }
          // ctermAccentColors;
          gui = {
            background = base3.val;
            backHighlight = base2.val;
            secondaryContent = base1.val;
            primaryContent = base00.val;
            highlight = base01.val;
            black = base02.val;
            brightBlack = base03.val;
            brightBlue = base0.val;
          }
          // accentColors;
        };
        dark = {
          cterm = {
            background = base03.idx;
            backHighlight = base02.idx;
            secondaryContent = base01.idx;
            primaryContent = base0.idx;
            highlight = base1.idx;
            white = base2.idx;
            brightWhite = base3.idx;
            brightYellow = base00.idx;
          }
          // ctermAccentColors;
          gui = {
            background = base03.val;
            backHighlight = base02.val;
            secondaryContent = base01.val;
            primaryContent = base0.val;
            highlight = base1.val;
            white = base2.val;
            brightWhite = base3.val;
            brightYellow = base00.val;
          }
          // accentColors;
        };
      };
    };
}
