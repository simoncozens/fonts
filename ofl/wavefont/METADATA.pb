name: "Wavefont"
designer: "Dmitry Ivanov"
license: "OFL"
category: "DISPLAY"
date_added: "2023-06-16"
fonts {
  name: "Wavefont"
  style: "normal"
  weight: 400
  filename: "Wavefont[ROND,YELA,wght].ttf"
  post_script_name: "Wavefont-Thin"
  full_name: "Wavefont Thin"
  copyright: "Copyright 2022 The Wavefont Project Authors (https://github.com/dy/wavefont)"
}
subsets: "menu"
axes {
  tag: "ROND"
  min_value: 0.0
  max_value: 100.0
}
axes {
  tag: "YELA"
  min_value: -100.0
  max_value: 100.0
}
axes {
  tag: "wght"
  min_value: 4.0
  max_value: 1000.0
}
registry_default_overrides {
  key: "ROND"
  value: 100.0
}
registry_default_overrides {
  key: "YELA"
  value: -100.0
}
source {
  repository_url: "https://github.com/dy/wavefont"
  commit: "76d6e2cb12f3cbea3fb2766ae3f849a061a54227"
  files {
    source_file: "OFL.txt"
    dest_file: "OFL.txt"
  }
  files {
    source_file: "fonts/variable/Wavefont[ROND,YELA,wght].ttf"
    dest_file: "Wavefont[ROND,YELA,wght].ttf"
  }
  branch: "master"
  config_yaml: "sources/config.yaml"
}
sample_text {
  masthead_full: "111198765432111987654432111"
  masthead_partial: "123456789"
  styles: "čćŜĘķŌŎļĺļġđĦŊōōĤķňŅĦĽĜėċĥĭİŐĬĝęŉŉĿħĲŁŠŀğĭōĦŚĦĠŢČ"
  tester: "ıĐđœăĉĔĠĪĈĤīąĖńļŖĻĔćĦĭĿăŚŃĖāğŋġŀőġīĚĹĿŞĄĉŁăėŇčćŜĘķŌŎļĺļġđĦŊōōĤķňŅĦĽĜėċĥĭİŐĬĝęŉŉĿħĲŁŠŀğĭōĦŚĦĠŢČŉĦĦęğķĮĘĘńĒĬĠŁ"
  poster_sm: "0123456789"
  poster_md: "0123456789"
  poster_lg: "0123456789"
}
minisite_url: "https://dy.github.io/wavefont/scripts/"
classifications: "DISPLAY"
classifications: "SYMBOLS"
