{ config, pkgs, ... }:
let
  
  latex = pkgs.texlive.combine {
    inherit (pkgs.texlive) scheme-medium
      wrapfig capt-of preview lxfonts latexmk
      natbib biblatex biblatex-abnt fourier xpatch
      ctex xetex minted fvextra amsmath upquote catchfile
      xstring framed dvipng hanging;
  };
  
in {
  home.packages = with pkgs; [
    # latex
    # libreoffice-bin
    # onlyoffice-bin
    pcmanfm
    # mupdf
    poppler
    # zathura
    zotero
  ];
}
