# kentuckyderby.R: A Kentucky Derby-Inspired Color Palette Package for R

# Required libraries
library(ggplot2)
library(scales)
library(grDevices)

# ============================================================================
# COLOR DEFINITIONS
# ============================================================================

derby_colors <- list(
  # --- Traditional Silks ----------------------------------------------------
  churchill_red    = "#DC143C",
  roses_deep       = "#C21E56",
  racing_pink      = "#F479A1",
  roses_light      = "#FFB6C1",
  orange_blaze     = "#FF6B35",
  jockey_gold      = "#FFD700",
  kelly_green      = "#00A86B",
  midnight_blue    = "#191970",
  royal_purple     = "#6B3AA0",
  racing_black     = "#0A0A0A",
  
  # --- Famous Farms ---------------------------------------------------------
  calumet_devil_red = "#8B0000",
  calumet_blue      = "#000080",
  keeneland_green   = "#006847",
  keeneland_orange  = "#FF6600",
  keeneland_stone   = "#D3C7B8",
  claiborne_orange  = "#FF4500",
  claiborne_black   = "#000000",
  
  # --- Kentucky Landscape ---------------------------------------------------
  bluegrass_meadow  = "#7CFC00",
  bluegrass_deep    = "#228B22",
  bluegrass_shadow  = "#355E3B",
  morning_mist      = "#F0F8FF",
  limestone_white   = "#FAF0E6",
  limestone_gray    = "#D3D3D3",
  saddle_brown      = "#8B4513",
  
  # --- Bourbon Heritage -----------------------------------------------------
  barrel_char       = "#3E2723",
  copper_still      = "#B87333",
  bourbon_amber     = "#FF8C00",
  bourbon_gold      = "#FFB347",
  
  # --- Seasonal / Event -----------------------------------------------------
  oaks_lily_pink    = "#FF69B4",
  dogwood_pink      = "#FFB7C5",
  mint_julep        = "#98FF98",
  silver_julep      = "#C0C0C0",
  dogwood_white     = "#FFFAF0",
  
  # --- Accent ---------------------------------------------------------------
  goldenrod         = "#FFD700",
  photo_silver      = "#C0C0C0",
  charcoal_rail     = "#36454F",
  starting_green    = "#00FF00",
  
  # -------------------------------------------------------------------------
  # color-blind–palette helper hues
  # -------------------------------------------------------------------------
  bourbon_orange    = "#E69F00",  # vivid orange (Okabe-Ito)
  calumet_sky       = "#56B4E9",  # clear sky blue
  mint_turf         = "#009E73",  # turf green
  jockey_yellow     = "#F0E442",  # bright yellow
  bluegrass_blue    = "#0072B2",  # mid-blue
  clay_track        = "#D55E00",  # reddish clay
  lily_magenta      = "#CC79A7",  # magenta-pink
  midnight_spire    = "#332288",  # deep indigo
  spring_sky        = "#88CCEE",  # pale sky blue
  paddock_teal      = "#44AA99",  # teal
  bluegrass_forest  = "#117733",  # dark green
  golden_field      = "#999933",  # muted mustard
  silks_khaki       = "#DDCC77",  # khaki
  rose_dust         = "#CC6677",  # dusty rose
  winners_wine      = "#882255",  # wine red
  orchard_purple    = "#AA4499"  # purple
)
# ============================================================================
# QUALITATIVE PALETTES
# ============================================================================

derby_palettes_qual <- list(
  # --- Primary Palettes ---
 
  traditional_silks = c(
    derby_colors$churchill_red,
    derby_colors$roses_deep,
    derby_colors$racing_pink,
    derby_colors$roses_light,
    derby_colors$orange_blaze,
    derby_colors$jockey_gold,
    derby_colors$kelly_green,
    derby_colors$midnight_blue,
    derby_colors$royal_purple,
    derby_colors$limestone_gray,
    derby_colors$racing_black
  ),
  
  famous_farms = c(
    derby_colors$calumet_devil_red,
    derby_colors$calumet_blue,
    derby_colors$keeneland_green,
    derby_colors$keeneland_orange,
    derby_colors$keeneland_stone,
    derby_colors$claiborne_orange,
    derby_colors$claiborne_black
  ),
  
  versailles_landscape = c(
    derby_colors$starting_green,
    derby_colors$bluegrass_meadow,
    derby_colors$bluegrass_deep,
    derby_colors$bluegrass_shadow,
    derby_colors$morning_mist,
    derby_colors$limestone_white,
    derby_colors$limestone_gray,
    derby_colors$saddle_brown,
    derby_colors$goldenrod,
    derby_colors$photo_silver,
    derby_colors$charcoal_rail
),
  
  bourbon_heritage = c(
    derby_colors$barrel_char,
    derby_colors$copper_still,
    derby_colors$bourbon_amber,
    derby_colors$bourbon_gold
  ),
  
  rolling_hills = c(
    derby_colors$bourbon_orange,
    derby_colors$calumet_sky,
    derby_colors$mint_turf,
    derby_colors$jockey_yellow,
    derby_colors$bluegrass_blue,
    derby_colors$clay_track,
    derby_colors$lily_magenta,
    derby_colors$midnight_spire,
    derby_colors$spring_sky,
    derby_colors$paddock_teal,
    derby_colors$bluegrass_forest,
    derby_colors$golden_field,
    derby_colors$silks_khaki,
    derby_colors$rose_dust,
    derby_colors$winners_wine,
    derby_colors$orchard_purple,
    derby_colors$limestone_gray
  ),
  
   classic_silks = c(
    derby_colors$jockey_gold,
    derby_colors$churchill_red,
    derby_colors$royal_purple,
    derby_colors$calumet_blue,
    derby_colors$orange_blaze,
    derby_colors$saddle_brown,
    derby_colors$limestone_white
  ),
  
  kentucky_farms = c(
    derby_colors$calumet_blue,
    derby_colors$keeneland_green,
    derby_colors$claiborne_orange,
    derby_colors$calumet_devil_red,
    derby_colors$saddle_brown,
    derby_colors$keeneland_stone
  ),
  
  derby_day = c(
    derby_colors$jockey_gold,
    derby_colors$roses_deep,
    derby_colors$dogwood_pink,
    derby_colors$mint_julep,
    derby_colors$bourbon_amber,
    derby_colors$midnight_blue,
    derby_colors$morning_mist
  ),
  
  # --- Expanded Palette for PhD Work ---
  phd_stakes = c(
    derby_colors$calumet_blue,
    derby_colors$claiborne_orange,
    derby_colors$keeneland_green,
    derby_colors$royal_purple,
    derby_colors$calumet_devil_red,
    derby_colors$jockey_gold,
    derby_colors$saddle_brown,
    derby_colors$copper_still,
    derby_colors$mint_julep,
    derby_colors$dogwood_pink,
    derby_colors$churchill_red,
    derby_colors$bourbon_gold,
    derby_colors$charcoal_rail,
    derby_colors$keeneland_stone,
    derby_colors$silver_julep
  ),
  
  the_paddock = c(
    # --- Core Hues ---
    derby_colors$calumet_blue,      # Dark, pure blue
    derby_colors$claiborne_orange,  # Strong, classic orange
    derby_colors$keeneland_green,   # Deep, rich green
    derby_colors$calumet_devil_red, # Dark, classic red
    derby_colors$jockey_gold,       # Bright, true yellow
    derby_colors$royal_purple,      # The definitive purple
    
    # --- Browns and Mid-Tones ---
    derby_colors$saddle_brown,      # Rich, medium brown
    derby_colors$churchill_red,     # Brighter, truer red
    derby_colors$midnight_blue,     # Dark, slightly purplish blue
    derby_colors$copper_still,      # Lighter, coppery brown
    derby_colors$oaks_lily_pink,    # The most saturated pink
    
    # --- Darks and Accents ---
    derby_colors$charcoal_rail,     # Dark slate blue/grey
    derby_colors$bourbon_amber,     # Muted, golden orange
    derby_colors$kelly_green,       # A brighter, classic green
    derby_colors$barrel_char,       # Very dark, warm brown
    derby_colors$roses_deep,        # Distinct purplish-red
    
    # --- Lights and Neutrals ---
    derby_colors$keeneland_stone,   # Light, warm beige
    derby_colors$bourbon_gold,      # Soft, light gold
    derby_colors$silver_julep,      # Cool, light grey
    derby_colors$mint_julep,        # Very light, distinct mint
    derby_colors$racing_black       # True black for maximum contrast
  ),
  
  # --- Color-blind–safe alternatives (referencing derby_colors) --------------
  jockey_silks_cb = c(
    derby_colors$racing_black,    # 000000
    derby_colors$bourbon_orange,  # E69F00
    derby_colors$calumet_sky,     # 56B4E9
    derby_colors$mint_turf,       # 009E73
    derby_colors$jockey_yellow,   # F0E442
    derby_colors$bluegrass_blue,  # 0072B2
    derby_colors$clay_track,      # D55E00
    derby_colors$lily_magenta     # CC79A7
  ),
  
  twin_spires_cb = c(
    derby_colors$midnight_spire,   # 332288
    derby_colors$spring_sky,       # 88CCEE
    derby_colors$paddock_teal,     # 44AA99
    derby_colors$bluegrass_forest, # 117733
    derby_colors$golden_field,     # 999933
    derby_colors$silks_khaki,      # DDCC77
    derby_colors$rose_dust,        # CC6677
    derby_colors$winners_wine,     # 882255
    derby_colors$orchard_purple,   # AA4499
    derby_colors$limestone_gray    # DDDDDD
  ),
  
  winners_circle_cb = c(
    derby_colors$racing_black,    # 000000
    derby_colors$bourbon_orange,  # E69F00
    derby_colors$calumet_sky,     # 56B4E9
    derby_colors$mint_turf,       # 009E73
    derby_colors$jockey_yellow,   # F0E442
    derby_colors$bluegrass_blue,  # 0072B2
    derby_colors$lily_magenta,    # CC79A7
    derby_colors$clay_track,      # D55E00
    derby_colors$orchard_purple,  # AA4499
    derby_colors$paddock_teal,    # 44AA99
    derby_colors$golden_field,    # 999933
    derby_colors$midnight_spire   # 332288
  )
)

# ============================================================================
# SEQUENTIAL PALETTES
# ============================================================================

derby_palettes_seq <- list(
  run_for_roses = colorRampPalette(c(
    derby_colors$dogwood_white,
    derby_colors$roses_light,
    derby_colors$roses_deep
  )),
  
  bluegrass_morning = colorRampPalette(c(
    derby_colors$morning_mist,
    derby_colors$mint_julep,
    derby_colors$bluegrass_deep
  )),
  
  bourbon_sunset = colorRampPalette(c(
    derby_colors$limestone_white,
    derby_colors$bourbon_gold,
    derby_colors$barrel_char
  )),
  
  purple_silk = colorRampPalette(c(
    "#E6D7FF",
    derby_colors$royal_purple,
    "#4B0082"
  )),
  
  # Colorblind-safe versions (single-hue progressions)
  midnight_fade = colorRampPalette(c(
    "#E6E6FA",  # Lavender
    derby_colors$midnight_blue,
    derby_colors$racing_black
  )),
  
  golden_silk = colorRampPalette(c(
    derby_colors$dogwood_white,
    derby_colors$bourbon_gold,
    derby_colors$jockey_gold
  ))
)

# ============================================================================
# DIVERGING PALETTES
# ============================================================================

derby_palettes_div <- list(
  roses_to_mint = colorRampPalette(c(
    derby_colors$roses_deep,
    derby_colors$limestone_white,
    derby_colors$bluegrass_deep
  )),
  
  derby_rivalry = colorRampPalette(c(
    derby_colors$churchill_red,
    derby_colors$limestone_gray,
    derby_colors$calumet_blue
  )),
  
  sunrise_churchill = colorRampPalette(c(
    derby_colors$royal_purple,
    derby_colors$morning_mist,
    derby_colors$jockey_gold
  )),
  
  # Colorblind-safe diverging
  blue_orange_derby = colorRampPalette(c(
    derby_colors$calumet_blue,
    derby_colors$limestone_white,
    derby_colors$claiborne_orange
  )),
  
  purple_gold_silk = colorRampPalette(c(
    derby_colors$royal_purple,
    derby_colors$limestone_white,
    derby_colors$jockey_gold
  ))
)

# ============================================================================
# KENTUCKY-THEMED LINE STYLES AND SHAPES
# ============================================================================

derby_linetypes <- c(
  "solid",    # Standard rail
  "dashed",   # Hurdle pattern
  "dotted",   # Hoofprints
  "dotdash",  # Rail and post
  "longdash", # Fence sections
  "twodash"   # Double rail
)

derby_shapes <- c(
  16,  # Filled circle (roses)
  17,  # Filled triangle (twin spires)
  15,  # Filled square (starting gate)
  18,  # Filled diamond (jockey silks)
  19,  # Filled circle (horseshoe)
  8,   # Star (winner)
  4,   # X (photo finish)
  3    # Plus (medical/vet)
)

# ============================================================================
# MAIN PALETTE ACCESS FUNCTION
# ============================================================================

#' Access Kentucky Derby Color Palettes
#'
#' @param name The name of the palette
#' @param n Number of colors to return (for sequential/diverging)
#' @param colorblind Use colorblind-safe version if available
#' @param type Type of palette: "qualitative", "sequential", or "diverging"
#' @return A vector of colors
#' @export
derby_palette <- function(name, n = NULL, colorblind = FALSE, type = "qualitative") {
  
  # Handle colorblind suffix
  if (colorblind && type == "qualitative") {
    cb_name <- paste0(name, "_cb")
    if (cb_name %in% names(derby_palettes_qual)) {
      name <- cb_name
    } else {
      warning("No colorblind version available for ", name, ". Using original.")
    }
  }
  
  # Get palette based on type
  if (type == "qualitative") {
    if (!name %in% names(derby_palettes_qual)) {
      stop("Palette '", name, "' not found. Available: ", 
           paste(names(derby_palettes_qual), collapse = ", "))
    }
    pal <- derby_palettes_qual[[name]]
    
    if (!is.null(n)) {
      if (n > length(pal)) {
        warning("Only ", length(pal), " colors available. Recycling colors.")
        pal <- rep_len(pal, n)
      } else {
        pal <- pal[1:n]
      }
    }
    return(pal)
    
  } else if (type == "sequential") {
    if (colorblind && name %in% c("run_for_roses", "bluegrass_morning")) {
      name <- ifelse(grepl("rose", name), "golden_silk", "midnight_fade")
    }
    
    if (!name %in% names(derby_palettes_seq)) {
      stop("Sequential palette '", name, "' not found.")
    }
    
    n <- ifelse(is.null(n), 7, n)
    return(derby_palettes_seq[[name]](n))
    
  } else if (type == "diverging") {
    if (colorblind && name %in% c("roses_to_mint", "derby_rivalry")) {
      name <- ifelse(grepl("rose", name), "purple_gold_silk", "blue_orange_derby")
    }
    
    if (!name %in% names(derby_palettes_div)) {
      stop("Diverging palette '", name, "' not found.")
    }
    
    n <- ifelse(is.null(n), 11, n)
    return(derby_palettes_div[[name]](n))
  }
}

# ============================================================================
# GGPLOT2 SCALE FUNCTIONS
# ============================================================================

#' Discrete color scale for Kentucky Derby palettes
#' @export
scale_color_derby <- function(palette = "classic_silks", colorblind = FALSE, ...) {
  pal <- derby_palette(palette, colorblind = colorblind, type = "qualitative")
  discrete_scale("colour", paste0("derby_", palette), 
                 palette = function(n) {
                   if (n > length(pal)) {
                     warning("Not enough colors in palette, recycling")
                     rep_len(pal, n)
                   } else {
                     pal[1:n]
                   }
                 }, ...)
}

#' @export
scale_fill_derby <- function(palette = "classic_silks", colorblind = FALSE, ...) {
  pal <- derby_palette(palette, colorblind = colorblind, type = "qualitative")
  discrete_scale("fill", paste0("derby_", palette), 
                 palette = function(n) {
                   if (n > length(pal)) {
                     warning("Not enough colors in palette, recycling")
                     rep_len(pal, n)
                   } else {
                     pal[1:n]
                   }
                 }, ...)
}

#' Continuous color scale for sequential palettes
#' @export
scale_color_derby_seq <- function(palette = "run_for_roses", colorblind = FALSE, ...) {
  pal_func <- derby_palettes_seq[[palette]]
  if (colorblind && palette %in% c("run_for_roses", "bluegrass_morning")) {
    palette <- ifelse(grepl("rose", palette), "golden_silk", "midnight_fade")
    pal_func <- derby_palettes_seq[[palette]]
  }
  scale_color_gradientn(colours = pal_func(256), ...)
}

#' @export
scale_fill_derby_seq <- function(palette = "run_for_roses", colorblind = FALSE, ...) {
  pal_func <- derby_palettes_seq[[palette]]
  if (colorblind && palette %in% c("run_for_roses", "bluegrass_morning")) {
    palette <- ifelse(grepl("rose", palette), "golden_silk", "midnight_fade")
    pal_func <- derby_palettes_seq[[palette]]
  }
  scale_fill_gradientn(colours = pal_func(256), ...)
}

#' Diverging color scale
#' @export
scale_color_derby_div <- function(palette = "roses_to_mint", colorblind = FALSE, ...) {
  pal_func <- derby_palettes_div[[palette]]
  if (colorblind && palette %in% c("roses_to_mint", "derby_rivalry")) {
    palette <- ifelse(grepl("rose", palette), "purple_gold_silk", "blue_orange_derby")
    pal_func <- derby_palettes_div[[palette]]
  }
  scale_color_gradient2(low = pal_func(11)[1], 
                        mid = pal_func(11)[6], 
                        high = pal_func(11)[11], ...)
}

# ============================================================================
# VISUALIZATION HELPERS
# ============================================================================

#' Display a palette
#' @export
show_derby_palette <- function(palette, n = NULL, colorblind = FALSE, 
                               type = "qualitative") {
  colors <- derby_palette(palette, n, colorblind, type)
  
  par(mar = c(1, 1, 3, 1))
  plot(1:length(colors), rep(1, length(colors)), 
       col = colors, pch = 19, cex = 8, 
       xlim = c(0.5, length(colors) + 0.5),
       ylim = c(0.5, 1.5),
       axes = FALSE, xlab = "", ylab = "")
  
  title(main = paste0("Derby Palette: ", palette, 
                      ifelse(colorblind, " (Colorblind Safe)", "")),
        cex.main = 1.2)
  
  text(1:length(colors), rep(0.7, length(colors)), 
       colors, cex = 0.8, srt = 45)
}

#' Create a Kentucky-themed presentation plot
#' @export
derby_theme <- function(base_size = 12, colorblind = FALSE) {
  
  bg_color <- derby_colors$limestone_white
  text_color <- derby_colors$barrel_char
  grid_color <- derby_colors$limestone_gray
  
  theme_minimal(base_size = base_size) +
    theme(
      plot.background = element_rect(fill = bg_color, color = NA),
      panel.background = element_rect(fill = bg_color, color = NA),
      
      panel.grid.major = element_line(color = grid_color, size = 0.5),
      panel.grid.minor = element_line(color = grid_color, size = 0.25),
      
      text = element_text(family = "serif", color = text_color),
      plot.title = element_text(size = base_size * 1.5, 
                                face = "bold", 
                                hjust = 0.5,
                                margin = margin(b = base_size)),
      plot.subtitle = element_text(size = base_size * 1.1, 
                                   hjust = 0.5,
                                   margin = margin(b = base_size * 0.5)),
      
      axis.title = element_text(size = base_size * 1.1, face = "bold"),
      axis.text = element_text(size = base_size * 0.9),
      
      legend.background = element_rect(fill = alpha(bg_color, 0.9), 
                                       color = grid_color),
      legend.key = element_rect(fill = bg_color, color = NA),
      legend.title = element_text(face = "bold"),
      
      strip.background = element_rect(fill = alpha(derby_colors$silver_julep, 0.3), 
                                      color = grid_color),
      strip.text = element_text(face = "bold", size = base_size)
    )
}

# ============================================================================
# UTILITY FUNCTIONS
# ============================================================================

#' List all available palettes
#' @export
list_derby_palettes <- function() {
  list(
    qualitative = names(derby_palettes_qual),
    sequential = names(derby_palettes_seq),
    diverging = names(derby_palettes_div)
  )
}


#' Demo function showing the main palettes
#' @export
demo_derby_palettes <- function() {
  
  par(mfrow = c(3, 3), mar = c(2, 2, 3, 1))
  
  # Showcasing the primary revised qualitative palettes
  for (pal in c("classic_silks", "kentucky_farms", "derby_day")) {
    show_derby_palette(pal, type = "qualitative")
  }
  
  for (pal in c("run_for_roses", "bluegrass_morning", "bourbon_sunset")) {
    colors <- derby_palette(pal, n = 20, type = "sequential")
    plot(1:20, rep(1, 20), col = colors, pch = 15, cex = 3,
         axes = FALSE, xlab = "", ylab = "", 
         main = paste("Sequential:", pal))
  }
  
  for (pal in c("roses_to_mint", "derby_rivalry", "sunrise_churchill")) {
    colors <- derby_palette(pal, n = 21, type = "diverging")
    plot(1:21, rep(1, 21), col = colors, pch = 15, cex = 3,
         axes = FALSE, xlab = "", ylab = "",
         main = paste("Diverging:", pal))
  }
  
  par(mfrow = c(1, 1))
}

#' Comprehensive demo showing ALL palettes
#' @export
demo_all_derby_palettes <- function() {
  
  all_qual <- names(derby_palettes_qual)
  all_seq <- names(derby_palettes_seq)
  all_div <- names(derby_palettes_div)
  
  total_palettes <- length(all_qual) + length(all_seq) + length(all_div)
  
  n_cols <- 3
  n_rows <- ceiling(total_palettes / n_cols)
  
  par(mfrow = c(n_rows, n_cols), mar = c(2, 1, 3, 1))
  
  # Display all qualitative palettes
  for (pal in all_qual) {
    colors <- derby_palettes_qual[[pal]]
    n <- length(colors)
    barplot(rep(1, n), col = colors, 
            main = paste("Qual:", pal), 
            border = NA, axes = FALSE, space = 0)
  }
  
  # Display all sequential palettes
  for (pal in all_seq) {
    colors <- derby_palettes_seq[[pal]](20)
    image(matrix(1:20, nrow=1), col = colors,
          axes = FALSE, main = paste("Seq:", pal))
  }
  
  # Display all diverging palettes
  for (pal in all_div) {
    colors <- derby_palettes_div[[pal]](21)
    image(matrix(1:21, nrow=1), col = colors,
          axes = FALSE, main = paste("Div:", pal))
  }
  
  par(mfrow = c(1, 1))
}


# ============================================================================
# EXAMPLE USAGE
# ============================================================================

#' Example: Create a Derby-themed plot
#' @export
example_derby_plot <- function(palette = "kentucky_farms", colorblind = FALSE) {
  
  set.seed(1875) 
  data <- data.frame(
    farm = rep(c("Calumet", "Keeneland", "Claiborne", "Spendthrift", 
                 "Three Chimneys", "WinStar"), each = 10),
    year = rep(2015:2024, 6),
    wins = rpois(60, lambda = rep(c(3, 2, 4, 2.5, 3.5, 4), each = 10))
  )
  
  p <- ggplot(data, aes(x = year, y = wins, color = farm)) +
    geom_line(linewidth = 1.5, aes(linetype = farm)) +
    geom_point(size = 3, aes(shape = farm)) +
    scale_color_derby(palette, colorblind = colorblind) +
    scale_linetype_manual(values = derby_linetypes) +
    scale_shape_manual(values = derby_shapes[1:6]) +
    labs(
      title = "Kentucky Derby Wins by Farm",
      subtitle = "Simulated Performance 2015-2024",
      x = "Year",
      y = "Number of Wins",
      color = "Farm",
      linetype = "Farm",
      shape = "Farm"
    ) +
    derby_theme()
  
  return(p)
}

# Print welcome message when loaded
cat("Kentucky Derby Color Palettes loaded!\n")
cat("Try:\n")
cat("  demo_derby_palettes()   - to see the main palettes\n")
cat("  demo_all_derby_palettes() - to see ALL available palettes\n")
cat("  example_derby_plot()    - for a sample visualization\n")
cat("  list_derby_palettes()   - to see available options\n")