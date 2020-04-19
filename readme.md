# LaTeX Templates TuDa

## Instructions

```git
git clone --recursive https://github.com/informatikk/latex-templates
```

### Updating dependency

```bash
git submodule foreach git pull origin master
```

## Docs

### Colors

* Blue

## Preamble

### Class

### Standard KOMA article

```tex
\documentclass[10pt, draft=false, a4paper]{scrartcl}
```


### Report (Zusammenfassung)

```tex
\documentclass[a4paper, draft=false, 11pt]{scrreprt}
````

#### TUDa CI

##### Zusammenfassung


```tex
\documentclass[
    ngerman,
    DIV=calc, % prevents Warning
    type=intern, $ so no Metadata for PDF/A is required
    class=report,
    marginpar=false,
    accentcolor=2d
]{tudapub}
```

With PDF/A Metadata:

```tex
\documentclass[
ngerman,
% fontsize=11pt,
% type=intern, % causes pdfa=false
marginpar=false,
% class=report,
accentcolor=2d,
%logofile=example-image, %Falls die Logo Dateien nicht vorliegen
]{tudapub}
```

```tex
% in \begin{document}
\Metadata{
  author=Pascal Weiland,
  title=Kuchen Pub,
  subject=Merkzettel,
  date=2343-13-37,
  keywords=TU Darmstadt \sep Kuchen \sep Merkzettel
}
```

##### Exercises (Math)

```tex
\documentclass[
ngerman,
colorbacktitle,
color=2b,
colorback=false,
% accentcolor=2b,
compat=true
]{tudaexercise}
```

### Packages and Config

```tex
% Input encoding and language settings
\usepackage[utf8x]{inputenc}
\usepackage[english, main=ngerman]{babel}
\usepackage[T1]{fontenc}
\usepackage[babel]{csquotes}
\usepackage[ngerman]{varioref} % Intelligent page references
\usepackage[right]{eurosym} % Euro Signs

% Layout
\usepackage{fullpage} % wider spacing (margin)
% \usepackage{parskip} % remove all paragraph whitespace

% Fonts
\frenchspacing
\usepackage[factor=2000]{microtype}
\usepackage{lmodern}  % more modern fonts

% Maths
\usepackage{amsopn}
\usepackage{amsfonts} % mathdesign favoured
\usepackage{amsmath} % theorem
\usepackage{amssymb} % symbols / mathdesign favoured
\usepackage[mathcal]{euscript}
% \usepackage[Gray,squaren,thinqspace,thinspace]{SIunits}
\usepackage{mathtools}
\usepackage{proof}
\usepackage{array}

% Lists
\usepackage{enumitem}
\usepackage{listings}
\usepackage{rotating}
\usepackage{textcomp}
\usepackage{minted} % Source Code

% Colors, graphics and figures
\usepackage{float} % floats (images, tables)
\usepackage{xcolor}
\usepackage{graphicx}
\usepackage[most]{tcolorbox}
\usepackage{tikz}

% \graphicspath{{figures/}}

% Tables
\usepackage{tabularx}
\usepackage{booktabs}
% \usepackage{longtable} 

```

### Todos

```tex
\usepackage[disable]{todonotes}
```

### Warnings

```tex
% Show warnings
\usepackage[l2tabu,orthodox]{nag} % newer (and safer) LaTeX commands

% Silence warnings
\RequirePackage{silence} % silence warning (coming from the template)
\WarningFilter{typearea}{DVI} % does not seem to work
\WarningFilter{todonotes}{The length}
\WarningFilter{scrlayer-scrpage}{Very small head}
```

### Math and Logic shortcuts

```tex
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\I}{\mathbb{I}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\K}{\mathbb{K}}
\newcommand{\X}{\mathcal{X}}
\newcommand{\B}{\mathbb{B}}
\newcommand{\D}{\mathcal{D}}
\newcommand{\A}{\mathcal{A}}
\renewcommand{\mod}{\mathrm{\ mod \ }}
\newcommand{\<}{\left\langle}
\renewcommand{\>}{\right\rangle}

\newcommand{\REG}{\text{REG}(\Sigma)}
```

### Exercise config

```tex
% Removes left margin from enumerates a), b), ...
\setenumerate{leftmargin=*}
% Removes left margin from itemsize listings 
\setitemize{leftmargin=*}
\renewcommand{\labelitemi}{$\cdot$}
\renewcommand{\labelitemii}{$\cdot$}
\setcounter{secnumdepth}{0}
```

### Doc Start

```tex
\title{Merkzettel}
\subject{Kuchen}
\author{Pascal Weiland}
\subtitle{von Pascal Weiland}
\publishers{Technische Universität Darmstadt}

\date{\today}

\begin{document}
    \maketitle
    \tableofcontents
    % \listoftodos

    \chapter{Allgemein}
        \section{Mengen}
            \paragraph{Standard-Mengen}
```

## About

### Files

* .sty
* .cls
* .bib
* .clo
* .def

### Types

* Assignment
* Summary
* CheatSheet

## Credits

This repo is an interface/simplification to quickly use [TU Darmstadt's LaTeX Templates](https://github.com/tudace/tuda_latex_templates/) by the awesome [TeXhackse](https://github.com/TeXhackse).

### Good Preambles

* [typokurz Präambel](https://web.archive.org/web/20200419183318/https://zvisionwelt.files.wordpress.com/2012/01/praeambel.pdff)
* [https://olivierpieters.be/blog/2016/08/10/latex-preamble](https://web.archive.org/web/20200419183147/https://olivierpieters.be/blog/2016/08/10/latex-preamble#close)
