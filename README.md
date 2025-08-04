# 🏇 Kentucky Derby Color Palettes for R

*"The most exciting two minutes in Kentucky data visualization!"*

**A collection of color palettes inspired by the pageantry, tradition, and natural beauty of the Kentucky Derby and the Bluegrass State**

![All Kentucky Derby Colors](gallery/all_kentucky_colors.png)

[![R](https://img.shields.io/badge/R-%3E%3D%203.5.0-blue)](https://www.r-project.org/)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)
[![Palettes](https://img.shields.io/badge/palettes-25+-red)](##available-palettes)

## 📋 Table of Contents

- [Installation](#installation)
- [Quick Start](#quick-start)
- [Color Collections](#color-collections)
- [Palette Gallery](#palette-gallery)
- [Usage Examples](#usage-examples)
- [Colorblind-Safe Options](#colorblind-safe-options)
- [Advanced Features](#advanced-features)

## Installation

```r

** TO DO **

```

## Quick Start

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

## Color Collections

The package includes 46 carefully curated colors inspired by Kentucky Derby traditions:

### Traditional Silks
![churchill_red](https://img.shields.io/badge/churchill__red-%23DC143C-DC143C) `#DC143C` - The iconic red of Churchill Downs  
![roses_deep](https://img.shields.io/badge/roses__deep-%23C21E56-C21E56) `#C21E56` - Deep rose garland hue  
![racing_pink](https://img.shields.io/badge/racing__pink-%23F479A1-F479A1) `#F479A1` - Vibrant jockey silk pink  
![roses_light](https://img.shields.io/badge/roses__light-%23FFB6C1-FFB6C1) `#FFB6C1` - Delicate rose petal  
![orange_blaze](https://img.shields.io/badge/orange__blaze-%23FF6B35-FF6B35) `#FF6B35` - Bold racing orange  
![jockey_gold](https://img.shields.io/badge/jockey__gold-%23FFD700-FFD700) `#FFD700` - Winner's gold  
![kelly_green](https://img.shields.io/badge/kelly__green-%2300A86B-00A86B) `#00A86B` - Classic racing green  
![midnight_blue](https://img.shields.io/badge/midnight__blue-%23191970-191970) `#191970` - Deep evening blue  
![royal_purple](https://img.shields.io/badge/royal__purple-%236B3AA0-6B3AA0) `#6B3AA0` - Regal purple  
![pure_white](https://img.shields.io/badge/pure__white-%23FFFFFF-FFFFFF?style=flat&labelColor=gray) `#FFFFFF` - Clean silk white  
![racing_black](https://img.shields.io/badge/racing__black-%230A0A0A-0A0A0A) `#0A0A0A` - Bold contrast black  

### Famous Farms
![calumet_devil_red](https://img.shields.io/badge/calumet__devil__red-%238B0000-8B0000) `#8B0000` - Historic Calumet Farm red  
![calumet_blue](https://img.shields.io/badge/calumet__blue-%23000080-000080) `#000080` - Calumet's signature blue  
![keeneland_green](https://img.shields.io/badge/keeneland__green-%23006847-006847) `#006847` - Keeneland's distinctive green  
![keeneland_orange](https://img.shields.io/badge/keeneland__orange-%23FF6600-FF6600) `#FF6600` - Keeneland's bright orange  
![keeneland_stone](https://img.shields.io/badge/keeneland__stone-%23D3C7B8-D3C7B8) `#D3C7B8` - Limestone architecture  
![claiborne_orange](https://img.shields.io/badge/claiborne__orange-%23FF4500-FF4500) `#FF4500` - Claiborne Farm orange  
![claiborne_black](https://img.shields.io/badge/claiborne__black-%23000000-000000) `#000000` - Pure black accent  

### Kentucky Landscape
![bluegrass_meadow](https://img.shields.io/badge/bluegrass__meadow-%237CFC00-7CFC00) `#7CFC00` - Fresh spring grass  
![bluegrass_deep](https://img.shields.io/badge/bluegrass__deep-%23228B22-228B22) `#228B22` - Rich bluegrass  
![bluegrass_shadow](https://img.shields.io/badge/bluegrass__shadow-%23355E3B-355E3B) `#355E3B` - Shaded pasture  
![morning_mist](https://img.shields.io/badge/morning__mist-%23F0F8FF-F0F8FF?style=flat&labelColor=gray) `#F0F8FF` - Dawn mist  
![limestone_white](https://img.shields.io/badge/limestone__white-%23FAF0E6-FAF0E6?style=flat&labelColor=gray) `#FAF0E6` - Kentucky limestone  
![limestone_gray](https://img.shields.io/badge/limestone__gray-%23D3D3D3-D3D3D3) `#D3D3D3` - Weathered stone  
![saddle_brown](https://img.shields.io/badge/saddle__brown-%238B4513-8B4513) `#8B4513` - Rich leather  

### Bourbon Heritage
![barrel_char](https://img.shields.io/badge/barrel__char-%233E2723-3E2723) `#3E2723` - Charred oak barrel  
![copper_still](https://img.shields.io/badge/copper__still-%23B87333-B87333) `#B87333` - Distillery copper  
![bourbon_amber](https://img.shields.io/badge/bourbon__amber-%23FF8C00-FF8C00) `#FF8C00` - Aged bourbon  
![bourbon_gold](https://img.shields.io/badge/bourbon__gold-%23FFB347-FFB347) `#FFB347` - Golden bourbon  

## Palette Gallery

The palettes are divided into three types: **Qualitative** for categorical data, **Sequential** for gradients representing low-to-high values, and **Diverging** for data with a meaningful midpoint.

### Color Groups
The core colors are organized into thematic groups.

| Traditional Silks | Bourbon Heritage | Famous Farms | Kentucky Landscape |
| :---: | :---: | :---: | :---: |
| ![Traditional Silks](gallery/group_traditional_silks.png) | ![Bourbon Heritage](gallery/group_bourbon_heritage.png) | ![Famous Farms](gallery/group_famous_farms.png) | ![Kentucky Landscape](gallery/group_kentucky_landscape.png) |

<br>

### Qualitative Palettes (Categorical Data)
These palettes are designed for discrete categorical data where colors need to be distinct.

| Palette Name | Description | Visualization |
| :--- | :--- | :--- |
| **`traditional_silks`** | The full range of 11 classic jockey silk colors. | ![traditional_silks](gallery/palette_traditional_silks.png) |
| **`bourbon_heritage`** | 4 rich, distillery-inspired earth tones. | ![bourbon_heritage](gallery/palette_bourbon_heritage.png) |
| **`classic_silks`** | A refined selection of 7 traditional jockey silk colors. | ![classic_silks](gallery/palette_classic_silks.png) |
| **`derby_day`** | Festive palette capturing the pageantry of Derby Day. | ![derby_day](gallery/palette_derby_day.png) |
| **`kentucky_farms`** | Colors inspired by the historic horse farms of the Bluegrass. | ![kentucky_farms](gallery/palette_kentucky_farms.png) |
| **`famous_farms`** | A 7-color palette from historic Kentucky horse farms. | ![famous_farms](gallery/palette_famous_farms.png) |
| **`versailles_landscape`** | 11 colors drawn from natural Kentucky scenery. | ![versailles_landscape](gallery/palette_versailles_landscape.png) |
| **`phd_stakes`** | A 15-color palette designed for academic presentations. | ![phd_stakes](gallery/palette_phd_stakes.png) |
| **`rolling_hills`** | A comprehensive 17-color landscape palette. | ![rolling_hills](gallery/palette_rolling_hills.png) |
| **`the_paddock`** | The ultimate versatile palette with 21 distinct colors. | ![the_paddock](gallery/palette_the_paddock.png) |
| **`jockey_silks_cb`** | 8-color **colorblind-safe** palette (Okabe-Ito based). | ![jockey_silks_cb](gallery/palette_jockey_silks_cb.png) |
| **`twin_spires_cb`** | 10-color **colorblind-safe** palette (Paul Tol inspired). | ![twin_spires_cb](gallery/palette_twin_spires_cb.png) |
| **`winners_circle_cb`**| An extended 12-color **colorblind-safe** palette. | ![winners_circle_cb](gallery/palette_winners_circle_cb.png) |

### Sequential Palettes (Continuous Data)
Use these smooth gradients for continuous data that progresses from low to high.

| Palette Name | Description | Visualization |
| :--- | :--- | :--- |
| **`run_for_roses`** | White → Pink → Deep Red | ![run_for_roses](gallery/palette_run_for_roses.png) |
| **`bluegrass_morning`** | Mist → Mint → Deep Green | ![bluegrass_morning](gallery/palette_bluegrass_morning.png) |
| **`bourbon_sunset`** | Light → Gold → Dark Brown | ![bourbon_sunset](gallery/palette_bourbon_sunset.png) |
| **`purple_silk`** | Lavender → Purple → Indigo | ![purple_silk](gallery/palette_purple_silk.png) |
| **`midnight_fade`** | Lavender → Midnight Blue → Black | ![midnight_fade](gallery/palette_midnight_fade.png) |
| **`golden_silk`** | White → Light Gold → Deep Gold | ![golden_silk](gallery/palette_golden_silk.png) |

### Diverging Palettes (Data with a Midpoint)
These palettes are ideal for visualizing data that deviates from a central value (like zero).

| Palette Name | Description | Visualization |
| :--- | :--- | :--- |
| **`roses_to_mint`** | Red ← White → Green | ![roses_to_mint](gallery/palette_roses_to_mint.png) |
| **`derby_rivalry`** | Red ← Gray → Blue | ![derby_rivalry](gallery/palette_derby_rivalry.png) |
| **`sunrise_churchill`** | Purple ← Mist → Gold | ![sunrise_churchill](gallery/palette_sunrise_churchill.png) |
| **`blue_orange_derby`** | **Colorblind-safe**: Blue ← White → Orange | ![blue_orange_derby](gallery/palette_blue_orange_derby.png) |
| **`purple_gold_silk`** | **Colorblind-safe**: Purple ← White → Gold | ![purple_gold_silk](gallery/palette_purple_gold_silk.png) |


## Usage Examples

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

## Colorblind-Safe Options

The package includes three colorblind-optimized palettes based on established research:

1. **`jockey_silks_cb`** - Based on Okabe-Ito palette
2. **`twin_spires_cb`** - Inspired by Paul Tol's schemes
3. **`winners_circle_cb`** - Extended 12-color safe palette

Additionally, most palettes can be used with `colorblind = TRUE`:

```r
# Automatic colorblind-safe substitution
scale_color_derby("classic_silks", colorblind = TRUE)
```

## Advanced Features

### Custom Theme

The `derby_theme()` function provides a complete ggplot2 theme:

```r
ggplot(data, aes(x, y)) +
  geom_point() +
  derby_theme(base_size = 14)
```

Features:
- Limestone white background
- Serif typography
- Subtle grid lines
- Themed facet strips
- Professional appearance

### Line Types and Shapes

Thematically appropriate line types and point shapes:

```r
# Access Derby-themed aesthetics
derby_linetypes  # 6 line patterns
derby_shapes     # 8 point shapes

# Use in plots
ggplot(data, aes(x, y, linetype = group, shape = group)) +
  geom_line() +
  geom_point() +
  scale_linetype_manual(values = derby_linetypes) +
  scale_shape_manual(values = derby_shapes)
```

### Palette Exploration

```r
# List all available palettes
list_derby_palettes()

# View specific palette
show_derby_palette("bourbon_heritage")

# Demo all palettes
demo_all_derby_palettes()

# Get palette info
length(derby_palette("the_paddock"))  # Number of colors
```

## Example Visualizations

```r
# Bar chart with farm colors
ggplot(mpg, aes(class, fill = class)) +
  geom_bar() +
  scale_fill_derby("kentucky_farms") +
  derby_theme() +
  theme(legend.position = "none")

# Heatmap with sequential palette
ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_tile() +
  scale_fill_derby_seq("bourbon_sunset") +
  derby_theme()

# Scatter plot with colorblind-safe palette
ggplot(iris, aes(Sepal.Length, Petal.Length, color = Species)) +
  geom_point(size = 3, alpha = 0.8) +
  scale_color_derby("jockey_silks_cb") +
  derby_theme()
```

## Citation

If you use this package in your work, please cite:

```bibtex
@software{kentuckyderby2025,
  author = {Trevor Wrobleski},
  title = {kentuckyderby: Kentucky Derby-Inspired Color Palettes for R},
  year = {2025},
  url = {https://github.com/trevorwrobleski/kentuckyderby}
}
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Run for the Colors!

I hope you enjoy data visualizations with the pageantry and tradition of the Kentucky Derby.
