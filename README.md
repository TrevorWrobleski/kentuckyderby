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
# First, install the 'remotes' package if you haven't already
if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes")
}

# Now, install the kentuckyderby package from GitHub
remotes::install_github("trevorwrobleski/kentuckyderby")

# Finally, load the package
library(kentuckyderby)
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

### Equestrian Tack

#### Pinks & Reds
![rose_porcelaine](https://img.shields.io/badge/rose__porcelaine-%23DDBCB4-DDBCB4) `#DDBCB4` - Porcelain blush leather  
![rose_coquille](https://img.shields.io/badge/rose__coquille-%23E1B2A0-E1B2A0) `#E1B2A0` - Shell pink saddle dye  
![rose_baltique](https://img.shields.io/badge/rose__baltique-%23D2A49B-D2A49B) `#D2A49B` - Baltic rose patina  
![rose_horizon](https://img.shields.io/badge/rose__horizon-%23EB655A-EB655A) `#EB655A` - Horizon rose lacquer  
![orange_boite](https://img.shields.io/badge/orange__boite-%23EE7E3D-EE7E3D) `#EE7E3D` - Box-orange enamel accent  
![orange_poppy](https://img.shields.io/badge/orange__poppy-%23EA562C-EA562C) `#EA562C` - Poppy orange highlight  
![rose_incarnat](https://img.shields.io/badge/rose__incarnat-%23E34B61-E34B61) `#E34B61` - Incarnadine ribbon dye  
![rouge_exotique](https://img.shields.io/badge/rouge__exotique-%23DA3037-DA3037) `#DA3037` - Exotic red enamel  
![rose_tamise](https://img.shields.io/badge/rose__tamise-%23A56969-A56969) `#A56969` - Tamisé rose suede  
![rouge_casaque](https://img.shields.io/badge/rouge__casaque-%23C82A20-C82A20) `#C82A20` - Casaque red livery  
![rose_indien](https://img.shields.io/badge/rose__indien-%23DA3655-DA3655) `#DA3655` - Indian rose dye  
![orange_brule](https://img.shields.io/badge/orange__brule-%23C14034-C14034) `#C14034` - Burnt orange bridle  
![rose_magenta](https://img.shields.io/badge/rose__magenta-%23CD3B5C-CD3B5C) `#CD3B5C` - Magenta rose  
![rouge_amazone](https://img.shields.io/badge/rouge__amazone-%23BE2920-BE2920) `#BE2920` - Amazone red tack  
![rouge_grenade](https://img.shields.io/badge/rouge__grenade-%23C52A3A-C52A3A) `#C52A3A` - Pomegranate red  
![rouge_piment](https://img.shields.io/badge/rouge__piment-%23B8262A-B8262A) `#B8262A` - Chili red accent  
![rouge_h_dark](https://img.shields.io/badge/rouge__h__dark-%23590F10-590F10) `#590F10` - Deep oxblood core  
![rouge_h_muted](https://img.shields.io/badge/rouge__h__muted-%23755151-755151) `#755151` - Muted saddle rose  

#### Greens & Blues
![vert_egyptien](https://img.shields.io/badge/vert__egyptien-%232B6651-2B6651) `#2B6651` - Egyptian green leather  
![vert_ecossais](https://img.shields.io/badge/vert__ecossais-%2319413E-19413E) `#19413E` - Scottish green tweed  
![bleu_encre](https://img.shields.io/badge/bleu__encre-%2321213A-21213A) `#21213A` - Inkwell midnight blue  
![bleu_agate_dark](https://img.shields.io/badge/bleu__agate__dark-%2333485D-33485D) `#33485D` - Dark agate blue  
![bleu_agate_light](https://img.shields.io/badge/bleu__agate__light-%2342576C-42576C) `#42576C` - Light agate blue  
![bleu_indigo](https://img.shields.io/badge/bleu__indigo-%2348474D-48474D) `#48474D` - Indigo steel  
![vert_fonce](https://img.shields.io/badge/vert__fonce-%2351524C-51524C) `#51524C` - Deep moss green  

#### Neutrals & Accents
![jaune_imperial](https://img.shields.io/badge/jaune__imperial-%23D9A447-D9A447) `#D9A447` - Imperial bridle gold  
![gris_etoupe](https://img.shields.io/badge/gris__etoupe-%239A816B-9A816B) `#9A816B` - Classic étoupe grain  
![etoupe](https://img.shields.io/badge/etoupe-%23817269-817269) `#817269` - Taupe saddle  
![violet_byzantin](https://img.shields.io/badge/violet__byzantin-%233C1122-3C1122) `#3C1122` - Byzantine violet  
![brun_bistre](https://img.shields.io/badge/brun__bistre-%233C2D26-3C2D26) `#3C2D26` - Bistre brown leather  
![ebene](https://img.shields.io/badge/ebene-%23413C39-413C39) `#413C39` - Ebony edge paint  
![noir](https://img.shields.io/badge/noir-%23212121-212121) `#212121` - Jet black  
![ardoise](https://img.shields.io/badge/ardoise-%234D494E-4D494E) `#4D494E` - Slate hardware  

#### Custom Warm/Cool
![warm_1](https://img.shields.io/badge/warm__1-%23C96051-C96051) `#C96051` - Warm terracotta  
![warm_2](https://img.shields.io/badge/warm__2-%23831E12-831E12) `#831E12` - Rust cinch  
![warm_3](https://img.shields.io/badge/warm__3-%23AB2D26-AB2D26) `#AB2D26` - Brick girth  
![warm_4](https://img.shields.io/badge/warm__4-%23C1765E-C1765E) `#C1765E` - Sienna bridle oil  
![cool_1](https://img.shields.io/badge/cool__1-%23323727-323727) `#323727` - Deep field green  
![cool_2](https://img.shields.io/badge/cool__2-%234A591D-4A591D) `#4A591D` - Olive turf  
![cool_3](https://img.shields.io/badge/cool__3-%233C354B-3C354B) `#3C354B` - Twilight blue-violet  
![cool_4](https://img.shields.io/badge/cool__4-%23375E8E-375E8E) `#375E8E` - Cobalt reins  
![cool_5](https://img.shields.io/badge/cool__5-%23CBDB9D-CBDB9D) `#CBDB9D` - Pasture mint  

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
| **`equestrian_tack_reds`**| An extended 12-color **colorblind-safe** palette. | ![equestrian_tack_reds](gallery/palette_equestrian_tack_pinks_reds.png) |

### Sequential Palettes (Continuous Data)
Use these smooth gradients for continuous data that progresses from low to high.

| Palette Name | Description | Visualization |
| :--- | :--- | :--- |
| **`run_for_roses`** | White → Pink → Deep Red | ![run_for_roses](gallery/palette_run_for_roses.png) |
| **`bluegrass_morning`** | Mist → Mint → Deep Green | ![bluegrass_morning](gallery/palette_bluegrass_morning.png) |
| **`bourbon_sunset`** | Light → Gold → Dark Brown | ![bourbon_sunset](gallery/palette_bourbon_sunset.png) |
| **`midnight_fade`** | Lavender → Midnight Blue → Black | ![midnight_fade](gallery/palette_midnight_fade.png) |
| **`rose_fade`** | Light pink -> Pink -> Oxblood | ![midnight_fade](gallery/palette_rose_fade.png) |
| **`forest_night`** | Vert Egyptien -> Ecossais -> Bleu Encre | ![midnight_fade](gallery/palette_forest_night.png) |


### Diverging Palettes (Data with a Midpoint)
These palettes are ideal for visualizing data that deviates from a central value (like zero).

| Palette Name | Description | Visualization |
| :--- | :--- | :--- |
| **`roses_to_mint`** | Red ← White → Green | ![roses_to_mint](gallery/palette_roses_to_mint.png) |
| **`derby_rivalry`** | Red ← Gray → Blue | ![derby_rivalry](gallery/palette_derby_rivalry.png) |
| **`sunrise_churchill`** | **Colorblind-safe**: Purple ← Mist → Gold | ![sunrise_churchill](gallery/palette_sunrise_churchill.png) |
| **`blue_orange_derby`** | **Colorblind-safe**: Blue ← White → Orange | ![blue_orange_derby](gallery/palette_blue_orange_derby.png) |
| **`equestrian_orange_blue`** | **Colorblind-safe**: Orange ← White → Blue | ![equestrian_orange_blue](gallery/palette_equestrian_orange_blue.png) |

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

## Example Visualizations

This gallery showcases plots created using the `kentuckyderby` color palettes and theme.

---

### Waffle Chart: Breeding Grounds of Champions

This waffle chart uses a custom categorical palette to effectively illustrate the overwhelming dominance of Kentucky as the breeding ground for Derby winners since 1875. Each square represents one champion to compare different breeding locations.

![Waffle Chart of Derby Winner Breeding Locations](gallery/brlb1.png)

```r
# Create the waffle chart with custom aesthetics
waffle(
  breeding_wins, 
  rows = 7, 
  size = 0.7, 
  colors = custom_colors,
  legend_pos = "bottom"
) +
  
  # Use labs() to set the title and subtitle
  labs(
    title = "Born to Run: A Legacy in Bluegrass",
    subtitle = "A breakdown of where Kentucky Derby champions are bred since 1875."
  ) +

  # Apply custom theme elements
  theme(
    plot.background = element_rect(fill = derby_colors$limestone_white, color = NA),
    panel.background = element_rect(fill = derby_colors$limestone_white, color = NA),
    plot.title = element_text(hjust = 0.5, size = 26, face = "bold", 
                              family = "serif", color = derby_colors$charcoal_rail),
    plot.subtitle = element_text(hjust = 0.5, size = 14,
                                 family = "serif", color = derby_colors$charcoal_rail,
                                 margin = margin(t = 5, b = 20)),
    legend.text = element_text(family = "serif", color = derby_colors$charcoal_rail, size = 12),
    legend.background = element_rect(fill = derby_colors$limestone_white),
    legend.key = element_rect(fill = derby_colors$limestone_white)
  )
```

---

### Choropleth Map: The Heart of Horse Country

This choropleth map shows the concentration of horse farms across Kentucky's counties. It uses the `bluegrass_morning` sequential palette to visually represent the density of the equine industry, highlighting the central Bluegrass region as the heart of thoroughbred country.

![Choropleth Map of Kentucky Horse Farms](gallery/lkei1.png)

```r
ggplot(kentucky_map_data, aes(x = long, y = lat, group = group)) +
  geom_polygon(aes(fill = farm_count), color = alpha(derby_colors$charcoal_rail, 0.4)) +
  scale_fill_derby_seq(
    palette = "bluegrass_morning",
    name = "Number of Farms with Horses", # Title for the legend
    na.value = "grey90",
    labels = comma,
    # Make the legend bar horizontal and adjust size
    guide = guide_colorbar(
      barwidth = 15, 
      barheight = 0.7, 
      title.position = "top",
      title.hjust = 0.5 # Center the title over the bar
    )
  ) +
  coord_map(projection = "albers", lat0 = 36, lat1 = 39) +
  derby_theme() +
  labs(
    title = "The Landscape of Kentucky's Equine Industry",
    subtitle = "Mapping the Heart of Thoroughbred Country"
  ) +
  theme(
    axis.title = element_blank(),
    axis.text = element_blank(),
    axis.ticks = element_blank(),
    panel.grid = element_blank(),
    # Position the legend at the bottom
    legend.position = "bottom",
    legend.direction = "horizontal",
    legend.title = element_text(size = 9), # Slightly smaller title text
    legend.text = element_text(size = 8)   # Slightly smaller label text
  )
```

---

### Lollipop Chart: Betting Odds Shift

This lollipop chart highlights how betting odds changed for key contenders in the 149th Kentucky Derby (2023), from the morning line to the final odds. The plot uses the diverging `derby_rivalry` palette to clearly distinguish between horses whose odds shortened (blue) versus those that drifted out (red).

![Lollipop Chart of Betting Odds Changes](gallery/cbo149.png)

```r
# Plot the odds change
ggplot(derby_odds_2023, aes(x = reorder(Horse, OddsChange), y = OddsChange, color = OddsChange)) +
  geom_segment(aes(xend = reorder(Horse, OddsChange), yend = 0), linewidth = 1) +
  geom_point(size = 5) +
  scale_color_derby_div(palette = "derby_rivalry") +
  coord_flip() +
  derby_theme() +
  labs(
    title = "Change in Betting Odds: 149th Kentucky Derby",
    subtitle = "From Morning Line to Final Odds at Post Time",
    x = "Horse",
    y = "Change in Odds (Final - Morning Line)"
  ) +
  theme(legend.position = "none") +
  geom_hline(yintercept = 0, linetype = "dashed", color = derby_colors$barrel_char)
```

### Additional Examples to Try
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
