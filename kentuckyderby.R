# kentuckyderby.R: A Kentucky Derby-Inspired Color Palette Package for R
# Updated to include the "Equestrian Tack" collection

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
  kelly_green      = "#00A86B",
  midnight_blue    = "#191970",
  royal_purple     = "#6B3AA0",
  racing_black     = "#0A0A0A",
  
  # --- Famous Farms ---------------------------------------------------------
  calumet_devil_red = "#8B0000",
  calumet_blue      = "#000080",
  keeneland_green   = "#006847",
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
  
  # --- Color-blind–palette helper hues -------------------------------------
  bourbon_orange    = "#E69F00",  
  calumet_sky       = "#56B4E9",
  mint_turf         = "#009E73",
  jockey_yellow     = "#F0E442",
  bluegrass_blue    = "#0072B2",
  clay_track        = "#D55E00",
  lily_magenta      = "#CC79A7",
  midnight_spire    = "#332288",
  spring_sky        = "#88CCEE",
  paddock_teal      = "#44AA99",
  bluegrass_forest  = "#117733",
  golden_field      = "#999933",
  silks_khaki       = "#DDCC77",
  rose_dust         = "#CC6677",
  winners_wine      = "#882255",
  orchard_purple    = "#AA4499"
)

# ============================================================================
# EQUESTRIAN TACK COLLECTION
# ============================================================================

# Individual colors 
derby_colors <- c(derby_colors, list(
  # Pinks & Reds
  tack_rose_porcelaine = "#DDBCB4",
  tack_rose_coquille   = "#E1B2A0",
  tack_rose_baltique   = "#D2A49B",
  tack_rose_horizon    = "#EB655A",
  tack_orange_boite    = "#EE7E3D",
  tack_orange_poppy    = "#EA562C",
  tack_rose_incarnat   = "#E34B61",
  tack_rouge_exotique  = "#DA3037",
  tack_rose_tamise     = "#A56969",
  tack_rouge_casaque   = "#C82A20",
  tack_rose_indien     = "#DA3655",
  tack_orange_brule    = "#C14034",
  tack_rose_magenta    = "#CD3B5C",
  tack_rouge_amazone   = "#BE2920",
  tack_rouge_grenade   = "#C52A3A",
  tack_rouge_piment    = "#B8262A",
  tack_rouge_h_dark    = "#590F10",
  tack_rouge_h_muted   = "#755151",
  
  # Greens & Blues
  tack_vert_egyptien   = "#2B6651",
  tack_vert_ecossais   = "#19413E",
  tack_bleu_encre      = "#21213A",
  tack_bleu_agate_dark = "#33485D",
  tack_bleu_agate_light= "#42576C",
  tack_bleu_indigo     = "#48474D",
  tack_vert_fonce      = "#51524C",
  
  # Neutrals & Accents
  tack_jaune_imperial  = "#D9A447",
  tack_gris_etoupe     = "#9A816B",
  tack_etoupe          = "#817269",
  tack_violet_byzantin = "#3C1122",
  tack_brun_bistre     = "#3C2D26",
  tack_ebene           = "#413C39",
  tack_noir            = "#212121",
  tack_ardoise         = "#4D494E",
  
  # Custom Warm/Cool Groups
  tack_warm_1          = "#C96051",
  tack_warm_2          = "#831E12",
  tack_warm_3          = "#AB2D26",
  tack_warm_4          = "#C1765E",
  
  tack_cool_1          = "#323727",
  tack_cool_2          = "#4A591D",
  tack_cool_3          = "#3C354B",
  tack_cool_4          = "#375E8E",
  tack_cool_5          = "#CBDB9D"
))

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
    derby_colors$goldenrod,
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
    derby_colors$goldenrod,
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
    derby_colors$goldenrod,
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
    derby_colors$goldenrod,
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
    derby_colors$calumet_blue,
    derby_colors$claiborne_orange,
    derby_colors$keeneland_green,
    derby_colors$calumet_devil_red,
    derby_colors$goldenrod,
    derby_colors$royal_purple,
    derby_colors$saddle_brown,
    derby_colors$churchill_red,
    derby_colors$midnight_blue,
    derby_colors$copper_still,
    derby_colors$oaks_lily_pink,
    derby_colors$charcoal_rail,
    derby_colors$bourbon_amber,
    derby_colors$kelly_green,
    derby_colors$barrel_char,
    derby_colors$roses_deep,
    derby_colors$keeneland_stone,
    derby_colors$bourbon_gold,
    derby_colors$silver_julep,
    derby_colors$mint_julep,
    derby_colors$racing_black
  ),
  
  # --- Color-blind–safe alternatives ----------------------------------------
  jockey_silks_cb = c(
    derby_colors$racing_black,
    derby_colors$bourbon_orange,
    derby_colors$calumet_sky,
    derby_colors$mint_turf,
    derby_colors$jockey_yellow,
    derby_colors$bluegrass_blue,
    derby_colors$clay_track,
    derby_colors$lily_magenta
  ),
  
  twin_spires_cb = c(
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
  
  winners_circle_cb = c(
    derby_colors$racing_black,
    derby_colors$bourbon_orange,
    derby_colors$calumet_sky,
    derby_colors$mint_turf,
    derby_colors$jockey_yellow,
    derby_colors$bluegrass_blue,
    derby_colors$lily_magenta,
    derby_colors$clay_track,
    derby_colors$orchard_purple,
    derby_colors$paddock_teal,
    derby_colors$golden_field,
    derby_colors$midnight_spire
  ),
  
  # --- Equestrian Tack collection (qualitative) -----------------------------
  equestrian_tack_main = c(
    derby_colors$tack_rouge_casaque,
    derby_colors$tack_orange_boite,
    derby_colors$tack_jaune_imperial,
    derby_colors$tack_vert_egyptien,
    derby_colors$tack_bleu_agate_light,
    derby_colors$tack_rose_magenta,
    derby_colors$tack_violet_byzantin,
    derby_colors$tack_gris_etoupe
  ),
  
  equestrian_tack_pinks_reds = c(
    derby_colors$tack_rose_porcelaine,
    derby_colors$tack_rose_horizon,
    derby_colors$tack_rose_incarnat,
    derby_colors$tack_rouge_piment,
    derby_colors$tack_rouge_amazone,
    derby_colors$tack_rouge_h_dark
  ),
  
  equestrian_tack_earth_tones = c(
    derby_colors$tack_vert_egyptien,
    derby_colors$tack_vert_ecossais,
    derby_colors$tack_gris_etoupe,
    derby_colors$tack_etoupe,
    derby_colors$tack_brun_bistre,
    derby_colors$tack_orange_brule
  ),
  
  equestrian_tack_deep_jewels = c(
    derby_colors$tack_rouge_grenade,
    derby_colors$tack_vert_ecossais,
    derby_colors$tack_bleu_encre,
    derby_colors$tack_violet_byzantin,
    derby_colors$tack_jaune_imperial,
    derby_colors$tack_rouge_h_dark
  ),
  
  equestrian_tack_warm = c(
    derby_colors$tack_warm_1,
    derby_colors$tack_warm_2,
    derby_colors$tack_warm_3,
    derby_colors$tack_warm_4
  ),
  
  equestrian_tack_cool = c(
    derby_colors$tack_cool_1,
    derby_colors$tack_cool_2,
    derby_colors$tack_cool_3,
    derby_colors$tack_cool_4,
    derby_colors$tack_cool_5
  )
)

# ============================================================================
# SEQUENTIAL PALETTES
# ============================================================================

derby_palettes_seq <- list(
  rose_fade = colorRampPalette(c(
    derby_colors$tack_rose_porcelaine,
    derby_colors$tack_rose_incarnat,
    derby_colors$tack_rouge_h_dark
  )),
  
  bluegrass_morning = colorRampPalette(c(
    derby_colors$morning_mist,
    derby_colors$mint_julep,
    derby_colors$bluegrass_deep
  )),
  
  bourbon_sunset = colorRampPalette(c(
    derby_colors$tack_jaune_imperial,
    derby_colors$tack_orange_poppy,
    derby_colors$tack_rouge_piment
  )),
  
  # Colorblind-safe single-hue progression retained
  midnight_fade = colorRampPalette(c(
    "#E6E6FA",  # Lavender
    derby_colors$midnight_blue,
    derby_colors$racing_black
  )),
  

  forest_night = colorRampPalette(c(
    derby_colors$tack_vert_egyptien,
    derby_colors$tack_vert_ecossais,
    derby_colors$tack_bleu_encre,
    derby_colors$tack_noir
  ))
)

# ============================================================================
# DIVERGING PALETTES
# ============================================================================

derby_palettes_div <- list(
  roses_to_mint = colorRampPalette(c(
    derby_colors$tack_rouge_piment,
    derby_colors$tack_gris_etoupe,
    derby_colors$tack_vert_egyptien
  )),
  
  derby_rivalry = colorRampPalette(c(
    derby_colors$churchill_red,
    derby_colors$limestone_gray,
    derby_colors$calumet_blue
  )),
  
  sunrise_churchill = colorRampPalette(c(
    derby_colors$royal_purple,
    derby_colors$morning_mist,
    derby_colors$goldenrod
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
    derby_colors$goldenrod
  )),
  
  # Additional tack diverging (exposed for expansion)
  equestrian_orange_blue = colorRampPalette(c(
    derby_colors$tack_orange_boite,
    derby_colors$tack_rose_porcelaine,
    derby_colors$tack_bleu_agate_light
  ))
)

# ============================================================================
# KENTUCKY-THEMED LINE STYLES AND SHAPES
# ============================================================================

derby_linetypes <- c(
  "solid", "dashed", "dotted", "dotdash", "longdash", "twodash"
)

derby_shapes <- c(
  16, 17, 15, 18, 19, 8, 4, 3
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
  
  # Handle colorblind suffix for qualitative
  if (colorblind && type == "qualitative") {
    cb_name <- paste0(name, "_cb")
    if (cb_name %in% names(derby_palettes_qual)) {
      name <- cb_name
    } else {
      warning("No colorblind version available for ", name, ". Using original.")
    }
  }
  
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
    # Updated colorblind handling due to palette changes
    if (colorblind && name %in% c("rose_fade", "bluegrass_morning", "bourbon_sunset")) {
      name <- "midnight_fade"
    }
    
    if (!name %in% names(derby_palettes_seq)) {
      stop("Sequential palette '", name, "' not found. Available: ",
           paste(names(derby_palettes_seq), collapse = ", "))
    }
    
    n <- ifelse(is.null(n), 7, n)
    return(derby_palettes_seq[[name]](n))
    
  } else if (type == "diverging") {
    if (colorblind && name %in% c("roses_to_mint", "derby_rivalry")) {
      name <- ifelse(grepl("rose", name), "purple_gold_silk", "blue_orange_derby")
    }
    
    if (!name %in% names(derby_palettes_div)) {
      stop("Diverging palette '", name, "' not found. Available: ",
           paste(names(derby_palettes_div), collapse = ", "))
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
scale_color_derby_seq <- function(palette = "rose_fade", colorblind = FALSE, ...) {
  # Map to colorblind-safe alt where needed
  target <- palette
  if (colorblind && palette %in% c("rose_fade", "bluegrass_morning", "bourbon_sunset")) {
    target <- "midnight_fade"
  }
  pal_func <- derby_palettes_seq[[target]]
  scale_color_gradientn(colours = pal_func(256), ...)
}

#' @export
scale_fill_derby_seq <- function(palette = "rose_fade", colorblind = FALSE, ...) {
  target <- palette
  if (colorblind && palette %in% c("rose_fade", "bluegrass_morning", "bourbon_sunset")) {
    target <- "midnight_fade"
  }
  pal_func <- derby_palettes_seq[[target]]
  scale_fill_gradientn(colours = pal_func(256), ...)
}

#' Diverging color scale
#' @export
scale_color_derby_div <- function(palette = "roses_to_mint", colorblind = FALSE, ...) {
  target <- palette
  if (colorblind && palette %in% c("roses_to_mint", "derby_rivalry")) {
    target <- ifelse(grepl("rose", palette), "purple_gold_silk", "blue_orange_derby")
  }
  pal_func <- derby_palettes_div[[target]]
  cols <- pal_func(11)
  scale_color_gradient2(low = cols[1], mid = cols[6], high = cols[11], ...)
}

#' Diverging fill scale
#' @export
scale_fill_derby_div <- function(palette = "roses_to_mint", colorblind = FALSE, ...) {
  target <- palette
  if (colorblind && palette %in% c("roses_to_mint", "derby_rivalry")) {
    target <- ifelse(grepl("rose", palette), "purple_gold_silk", "blue_orange_derby")
  }
  pal_func <- derby_palettes_div[[target]]
  cols <- pal_func(11)
  scale_fill_gradient2(low = cols[1], mid = cols[6], high = cols[11], ...)
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
  
  # Showcasing primary qualitative palettes
  for (pal in c("classic_silks", "kentucky_farms", "derby_day")) {
    show_derby_palette(pal, type = "qualitative")
  }
  
  # Updated sequential set with requested changes
  for (pal in c("rose_fade", "bluegrass_morning", "bourbon_sunset")) {
    colors <- derby_palette(pal, n = 20, type = "sequential")
    plot(1:20, rep(1, 20), col = colors, pch = 15, cex = 3,
         axes = FALSE, xlab = "", ylab = "", 
         main = paste("Sequential:", pal))
  }
  
  # Diverging showcase (roses_to_mint now uses tack piment_vert)
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
  
  # Display all qualitative palettes (this was already correct)
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
    # *** THE FIX: Changed nrow=1 to ncol=1 ***
    image(matrix(1:20, ncol = 1), col = colors,
          axes = FALSE, main = paste("Seq:", pal))
  }
  
  # Display all diverging palettes
  for (pal in all_div) {
    colors <- derby_palettes_div[[pal]](21)
    # *** THE FIX: Changed nrow=1 to ncol=1 ***
    image(matrix(1:21, ncol = 1), col = colors,
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
cat("Updates:\n")
cat("  - Added Equestrian Tack collection (qual, seq, div)\n")
cat("  - Replaced 'run_for_roses' with 'rose_fade'\n")
cat("  - Replaced 'bourbon_sunset' with 'sunset'\n")
cat("  - Removed 'golden_silk' and 'purple_silk' sequential palettes\n")
cat("  - 'roses_to_mint' now uses the piment_vert gradient\n")
cat("Try:\n")
cat("  demo_derby_palettes()       - to see the main palettes\n")
cat("  demo_all_derby_palettes()   - to see ALL available palettes\n")
cat("  example_derby_plot()        - for a sample visualization\n")
cat("  list_derby_palettes()       - to see available options\n")