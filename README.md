# 🏇 Kentucky Derby Color Palettes for R
*"The most exciting two minutes in data visualization!"*

**A collection of color palettes inspired by the pageantry, tradition, and natural beauty of the Kentucky Derby and the Bluegrass State**

[![R](https://img.shields.io/badge/R-%3E%3D%203.5.0-blue)](https://www.r-project.org/)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![Palettes](https://img.shields.io/badge/palettes-25+-red)](##available-palettes)

## 📋 Table of Contents

- [Installation](#installation)
- [Quick Start](#quick-start)
- [Color Collections](#color-collections)
- [Available Palettes](#available-palettes)
- [Usage Examples](#usage-examples)
- [Colorblind-Safe Options](#colorblind-safe-options)
- [Advanced Features](#advanced-features)

## 🎯 Installation

```r
# Option 1: Direct sourcing
source("https://raw.githubusercontent.com/yourusername/kentuckyderby/main/kentuckyderby.R")

# Option 2: Local installation
source("path/to/kentuckyderby.R")

# Option 3: As a package (after proper packaging)
# devtools::install_github("yourusername/kentuckyderby")
```

## 🚀 Quick Start

```r
# Load required libraries
library(ggplot2)
library(scales)

# Source the palette
source("kentuckyderby.R")

# View main palettes
demo_derby_palettes()

# Use in a plot
ggplot(mpg, aes(displ, hwy, color = class)) +
  geom_point(size = 3) +
  scale_color_derby("classic_silks") +
  derby_theme()
```

## 🎨 Color Collections

The package includes 46 carefully curated colors inspired by Kentucky Derby traditions:

### Traditional Silks
![#DC143C](https://via.placeholder.com/15/DC143C/DC143C.png) `churchill_red` (#DC143C) - The iconic red of Churchill Downs  
![#C21E56](https://via.placeholder.com/15/C21E56/C21E56.png) `roses_deep` (#C21E56) - Deep rose garland hue  
![#F479A1](https://via.placeholder.com/15/F479A1/F479A1.png) `racing_pink` (#F479A1) - Vibrant jockey silk pink  
![#FFB6C1](https://via.placeholder.com/15/FFB6C1/FFB6C1.png) `roses_light` (#FFB6C1) - Delicate rose petal  
![#FF6B35](https://via.placeholder.com/15/FF6B35/FF6B35.png) `orange_blaze` (#FF6B35) - Bold racing orange  
![#FFD700](https://via.placeholder.com/15/FFD700/FFD700.png) `jockey_gold` (#FFD700) - Winner's gold  
![#00A86B](https://via.placeholder.com/15/00A86B/00A86B.png) `kelly_green` (#00A86B) - Classic racing green  
![#191970](https://via.placeholder.com/15/191970/191970.png) `midnight_blue` (#191970) - Deep evening blue  
![#6B3AA0](https://via.placeholder.com/15/6B3AA0/6B3AA0.png) `royal_purple` (#6B3AA0) - Regal purple  
![#FFFFFF](https://via.placeholder.com/15/FFFFFF/FFFFFF.png) `pure_white` (#FFFFFF) - Clean silk white  
![#0A0A0A](https://via.placeholder.com/15/0A0A0A/0A0A0A.png) `racing_black` (#0A0A0A) - Bold contrast black  

### Famous Farms
![#8B0000](https://via.placeholder.com/15/8B0000/8B0000.png) `calumet_devil_red` (#8B0000) - Historic Calumet Farm red  
![#000080](https://via.placeholder.com/15/000080/000080.png) `calumet_blue` (#000080) - Calumet's signature blue  
![#006847](https://via.placeholder.com/15/006847/006847.png) `keeneland_green` (#006847) - Keeneland's distinctive green  
![#FF6600](https://via.placeholder.com/15/FF6600/FF6600.png) `keeneland_orange` (#FF6600) - Keeneland's bright orange  
![#D3C7B8](https://via.placeholder.com/15/D3C7B8/D3C7B8.png) `keeneland_stone` (#D3C7B8) - Limestone architecture  
![#FF4500](https://via.placeholder.com/15/FF4500/FF4500.png) `claiborne_orange` (#FF4500) - Claiborne Farm orange  
![#000000](https://via.placeholder.com/15/000000/000000.png) `claiborne_black` (#000000) - Pure black accent  

### Kentucky Landscape
![#7CFC00](https://via.placeholder.com/15/7CFC00/7CFC00.png) `bluegrass_meadow` (#7CFC00) - Fresh spring grass  
![#228B22](https://via.placeholder.com/15/228B22/228B22.png) `bluegrass_deep` (#228B22) - Rich bluegrass  
![#355E3B](https://via.placeholder.com/15/355E3B/355E3B.png) `bluegrass_shadow` (#355E3B) - Shaded pasture  
![#F0F8FF](https://via.placeholder.com/15/F0F8FF/F0F8FF.png) `morning_mist` (#F0F8FF) - Dawn mist  
![#FAF0E6](https://via.placeholder.com/15/FAF0E6/FAF0E6.png) `limestone_white` (#FAF0E6) - Kentucky limestone  
![#D3D3D3](https://via.placeholder.com/15/D3D3D3/D3D3D3.png) `limestone_gray` (#D3D3D3) - Weathered stone  
![#8B4513](https://via.placeholder.com/15/8B4513/8B4513.png) `saddle_brown` (#8B4513) - Rich leather  

### Bourbon Heritage
![#3E2723](https://via.placeholder.com/15/3E2723/3E2723.png) `barrel_char` (#3E2723) - Charred oak barrel  
![#B87333](https://via.placeholder.com/15/B87333/B87333.png) `copper_still` (#B87333) - Distillery copper  
![#FF8C00](https://via.placeholder.com/15/FF8C00/FF8C00.png) `bourbon_amber` (#FF8C00) - Aged bourbon  
![#FFB347](https://via.placeholder.com/15/FFB347/FFB347.png) `bourbon_gold` (#FFB347) - Golden bourbon  

## 📊 Available Palettes

### Qualitative Palettes (Categorical Data)

#### Primary Palettes

**`classic_silks`** (7 colors)
![Classic Silks](https://via.placeholder.com/400x40/FFD700/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/DC143C/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/6B3AA0/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/000080/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/FF6B35/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/8B4513/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/FFFFFF/000000?text=+)

**`kentucky_farms`** (6 colors)
![Kentucky Farms](https://via.placeholder.com/400x40/000080/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/006847/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/FF4500/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/8B0000/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/8B4513/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/D3C7B8/000000?text=+)

**`derby_day`** (7 colors)
![Derby Day](https://via.placeholder.com/400x40/FFD700/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/C21E56/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/FFB7C5/000000?text=+) ![](https://via.placeholder.com/400x40/98FF98/000000?text=+) ![](https://via.placeholder.com/400x40/FF8C00/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/191970/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/FFFFFF/000000?text=+)

#### Extended Palettes

- **`traditional_silks`** (11 colors) - Full range of jockey silk colors
- **`famous_farms`** (7 colors) - Historic Kentucky horse farms
- **`versailles_landscape`** (11 colors) - Natural Kentucky scenery
- **`bourbon_heritage`** (4 colors) - Distillery-inspired earth tones
- **`rolling_hills`** (17 colors) - Comprehensive landscape palette
- **`phd_stakes`** (15 colors) - Academic presentation palette
- **`the_paddock`** (21 colors) - Ultimate versatile palette

#### Colorblind-Safe Palettes

- **`jockey_silks_cb`** (8 colors) - Okabe-Ito optimized
- **`twin_spires_cb`** (10 colors) - Paul Tol inspired
- **`winners_circle_cb`** (12 colors) - Extended accessible palette

### Sequential Palettes (Continuous Data)

**`run_for_roses`** - White → Pink → Deep Red  
![Run for Roses](https://via.placeholder.com/400x40/FFFAF0/000000?text=+) ![](https://via.placeholder.com/400x40/FFB6C1/000000?text=+) ![](https://via.placeholder.com/400x40/C21E56/FFFFFF?text=+)

**`bluegrass_morning`** - Mist → Mint → Deep Green  
![Bluegrass Morning](https://via.placeholder.com/400x40/F0F8FF/000000?text=+) ![](https://via.placeholder.com/400x40/98FF98/000000?text=+) ![](https://via.placeholder.com/400x40/228B22/FFFFFF?text=+)

**`bourbon_sunset`** - Light → Gold → Dark Brown  
![Bourbon Sunset](https://via.placeholder.com/400x40/FAF0E6/000000?text=+) ![](https://via.placeholder.com/400x40/FFB347/000000?text=+) ![](https://via.placeholder.com/400x40/3E2723/FFFFFF?text=+)

### Diverging Palettes (Data with Natural Midpoint)

**`roses_to_mint`** - Red ← White → Green  
![Roses to Mint](https://via.placeholder.com/400x40/C21E56/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/FAF0E6/000000?text=+) ![](https://via.placeholder.com/400x40/228B22/FFFFFF?text=+)

**`derby_rivalry`** - Red ← Gray → Blue  
![Derby Rivalry](https://via.placeholder.com/400x40/DC143C/FFFFFF?text=+) ![](https://via.placeholder.com/400x40/D3D3D3/000000?text=+) ![](https://via.placeholder.com/400x40/000080/FFFFFF?text=+)

## 💻 Usage Examples

### Basic Usage

```r
# Get a palette
colors <- derby_palette("classic_silks")

# Specify number of colors
colors <- derby_palette("derby_day", n = 5)

# Get colorblind-safe version
colors <- derby_palette("classic_silks", colorblind = TRUE)
```

### With ggplot2

```r
# Discrete scales
ggplot(data, aes(x, y, color = category)) +
  geom_point() +
  scale_color_derby("kentucky_farms")

# Sequential scales
ggplot(data, aes(x, y, fill = value)) +
  geom_tile() +
  scale_fill_derby_seq("bourbon_sunset")

# Diverging scales
ggplot(data, aes(x, y, fill = difference)) +
  geom_tile() +
  scale_fill_derby_div("roses_to_mint")
```

### Complete Themed Plot

```r
# Create a publication-ready plot
example_derby_plot("the_paddock", colorblind = FALSE)

# Or build your own
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  scale_color_derby("classic_silks") +
  derby_theme() +
  labs(title = "Iris Dataset",
       subtitle = "Styled with Kentucky Derby Colors")
```

## ♿ Colorblind-Safe Options

The package includes three colorblind-optimized palettes based on established research:

1. **`jockey_silks_cb`** - Based on Okabe-Ito palette
2. **`twin_spires_cb`** - Inspired by Paul Tol's schemes
3. **`winners_circle_cb`** - Extended 12-color safe palette

Additionally, most palettes can be used with `colorblind = TRUE`:

```r
# Automatic colorblind-safe substitution
scale_color_derby("classic_silks", colorblind = TRUE)
```

## 🎯 Advanced Features

### Custom Theme

The `derby_theme()` function provides a complete ggplot2 theme:

```r
ggplot(data, aes(x, y)) +
  geom_point() +
  derby_theme(base_size = 14)
```

### Line Types and Shapes

Thematically appropriate line types and point shapes:

```r
# Access Derby-themed aesthetics
derby_linetypes  # 6 line patterns
derby_shapes     # 8 point shapes
```

### Palette Exploration

```r
# List all available palettes
list_derby_palettes()

# View specific palette
show_derby_palette("bourbon_heritage")

# Demo all palettes
demo_all_derby_palettes()
```

## 📝 Citation

If you use this package in your work, please cite:

```
Trevor Wrobleski (2025). kentuckyderby: Kentucky Derby-Inspired Color Palettes for R.
GitHub: https://github.com/trevorwrobleski/kentuckyderby
```

## 🌹 Run for the Colors!

Transform your data visualizations with the pageantry and tradition of the Kentucky Derby. Whether you're presenting at conferences, publishing papers, or creating stunning visualizations, these palettes bring the beauty of Churchill Downs to your R plots.

---

**Happy plotting! 🏇🌹**
