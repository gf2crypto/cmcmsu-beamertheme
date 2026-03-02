# cmcmsu — Beamer Theme for CMC MSU

Modern **LaTeX Beamer theme** designed for mathematical and theoretical presentations
(coding theory, cryptography, discrete mathematics, theoretical computer science).

The theme provides:

- clean minimalistic theorem environments,
- consistent appearance across **XeLaTeX / LuaLaTeX / pdfLaTeX**,
- PT Sans typography,
- lightweight visual design suitable for dense mathematical slides,
- self-contained installation (no TEXMF setup required).

---

## Features

### Typography

#### XeLaTeX / LuaLaTeX
- Text font: **PT Sans**
- Math font: **TeX Gyre Termes Math** (`texgyretermes-math.otf`)
- Unicode-native workflow

#### pdfLaTeX (default)
- Text: **Paratype (PT Sans family)**
- Math: **newtxmath**
- Full Cyrillic support (configured by the document)

The visual appearance is intentionally close between engines.

---

## Block Design

The theme uses a modern minimal style:

- colored vertical bar on the left,
- no background fill,
- colored theorem title,
- body text follows immediately below.

Supported theorem environments:

- `definition`
- `proposition`
- `theorem`

Beamer blocks are mapped automatically:

| Beamer block | Style |
|--------------|------|
| `block` | definition |
| `alertblock` | theorem |
| `exampleblock` | example |

---

## Repository Structure

```text
cmcmsu-beamertheme/
│
├── beamerthemecmcmsu.sty
├── cmcmsu.sty
│
├── sty/
│   ├── cmcmsu-options.sty
│   ├── cmcmsu-fonts.sty
│   ├── cmcmsu-colors.sty
│   ├── cmcmsu-beamer.sty
│   ├── cmcmsu-title.sty
│   ├── cmcmsu-sections.sty
│   └── cmcmsu-tcb.sty
│
└── images/
    ├── msu-cmc-logo.png
    └── msu-cmc-logo2.png
```

The theme automatically detects its own location — no manual path configuration is required.

---

## Installation

### Local installation (recommended)

Place the directory `cmcmsu-beamertheme/` next to your presentation:

```text
project/
 ├── main.tex
 └── cmcmsu-beamertheme/
```

### Global installation

Clone or download the repository to your system.

#### 1. Locate your `TEXMFHOME` directory

Run the following command in a terminal:

```bash
kpsewhich -var-value TEXMFHOME
```

Suppose the returned directory is:

```bash
~/Library/texmf
```

(This is typical for macOS; on Linux it is usually `~/texmf`.)

---

#### 2. Create the required directory structure

Create the directory `tex/latex` inside your `TEXMFHOME`:

```bash
mkdir -p ~/Library/texmf/tex/latex
```

---

#### 3. Create a symbolic link to the theme

Create a symbolic link from the repository directory
`<path>/cmcmsu-beamertheme` to your local TeX tree:

```bash
ln -s /ABS/PATH/TO/repo/cmcmsu-beamertheme \
~/Library/texmf/tex/latex/cmcmsu-beamertheme
```

Replace `/ABS/PATH/TO/repo` with the absolute path to the cloned repository.

---

#### 4. Update the LaTeX filename database

Run:

```bash
mktexlsr ~/Library/texmf
```

(Alternatively, in most TeX Live installations, simply run `mktexlsr`.)

---

#### 5. Verify the installation

Check that LaTeX can find the theme:

```bash
kpsewhich beamerthemecmcmsu.sty
```

The installation is successful if the output looks like:

```bash
/ABS/PATH/TO/repo/cmcmsu-beamertheme/beamerthemecmcmsu.sty
```

---

## Usage

### Recommended method

```latex
\documentclass{beamer}

\usepackage{cmcmsu-beamertheme/cmcmsu}
```

### Classical Beamer method

If the theme is visible to TeX:

```latex
\usetheme{cmcmsu}
```

---

## Theme Options

```latex
\usepackage[
  titlebackground=true,
  sectiontransition=true,
  cornerlogo=true
]{cmcmsu-beamertheme/cmcmsu}
```

### Available options

| Option | Description |
|---|---|
| `titlebackground` | background logo on title slide |
| `sectiontransition` | section transition frames |
| `cornerlogo` | small corner logo |

---

## pdfLaTeX Font Options

Default configuration:

```
paratype + newtxmath
```

Customization example:

```latex
\usepackage[
  font=default,
  mathfont=cm
]{cmcmsu-beamertheme/cmcmsu}
```

### Text options (`font`)

| Value | Meaning |
|---|---|
| `paratype` | PT Sans family (recommended) |
| `default` | Computer Modern |

### Math options (`mathfont`)

| Value | Meaning |
|---|---|
| `newtx` | Times-like math (default) |
| `cm` | Computer Modern math |
| `stix2` | STIX2 math |

---

## Engine Recommendations

Recommended compilation engines:

- `xelatex`
- `lualatex`

`pdflatex` is fully supported.

---

## Language Support

The theme intentionally **does not load language packages**.

Users should configure language settings in the document preamble, for example:

```latex
\usepackage[T2A]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[russian]{babel}
```

(or `polyglossia` for XeLaTeX/LuaLaTeX).

---

## Design Philosophy

The theme is optimized for:

- mathematical talks,
- theorem-heavy slides,
- projection readability,
- minimal visual noise.

Large colored boxes and heavy backgrounds are intentionally avoided.

---

## License

MIT License (recommended)
—or specify your preferred license—

---

## Author

Ivan Chizhov
CMC MSU — Information Security Department

---

## Acknowledgements

Inspired by modern Beamer themes such as:

- Metropolis
- Madrid
- minimal academic theorem layouts
