#' Set figure theme for presentations
#'
#' @param base_size
#' @param base_family
#'
#' @return
#' @export theme_present
#'
#' @examples
#'
#'theme_present(base_size = 18, base_family = "sans")
#'
#'Other fonts are available, though sans font is
#'the easiest to implement using the following.
#'
#'theme_present(base_family = "")
#'
#'Updating font size is accomplished by changing the base_size.
#'
#'theme_present(base_size = 16)
#'
theme_present <- function(base_size = 18, base_family = "sans") {

  half_line <- base_size/2

  theme_light(base_size = base_size, base_family = base_family) +
    theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank(),
      axis.ticks.length = unit(half_line / 2.2, "pt"),
      strip.background = element_rect(fill = NA, colour = NA),
      strip.text.x = element_text(colour = "black"),
      strip.text.y = element_text(colour = "black"),
      panel.border = element_rect(fill = NA),
      legend.key.size = unit(0.9, "lines"),
      legend.key = element_rect(colour = NA, fill = NA),
      legend.background = element_rect(colour = NA, fill = NA)
    )
}
