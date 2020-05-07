#' Vancouver Street Trees
#'
#' This dataset includes information about public trees in the City of
#' Vancouver. The data is updated weekly, but tree attributes are
#' rarely updated.
#'
#' @source <https://opendata.vancouver.ca/explore/dataset/street-trees/information/>, downloaded 2020-05-04
#' @format A data frame with columns:
#' \describe{
#'  \item{tree_id}{Unique tree identifier.}
#'  \item{civic_number}{Street address of the site at which the tree is associated with.}
#'  \item{std_street}{Street name of the site at which the tree is associated with.}
#'  \item{genus_name}{Genus name.}
#'  \item{species_name}{Species name.}
#'  \item{cultivar_name}{Cultivar name.}
#'  \item{common_name}{Common name.}
#'  \item{assigned}{Indicates whether the address is made up to associate the tree with a nearby lot.}
#'  \item{root_barrier}{Root barrier installed.}
#'  \item{plant_area}{B = behind sidewalk, G = in tree grate, N = no sidewalk, C = cutout, a number indicates boulevard width in feet.}
#'  \item{on_street_block}{The street block at which the tree is physically located on.}
#'  \item{on_street}{The name of the street at which the tree is physically located on.}
#'  \item{neighbourhood_name}{City's defined local area in which the tree is located.  For more information, see the Local Area Boundary Datapage.}
#'  \item{street_side_name}{The street side which the tree is physically located on (Even, Odd or Median (Med)).}
#'  \item{height_range_id}{0-10 for every 10 feet (e.g., 0 = 0-10 ft, 1 = 10-20 ft, 2 = 20-30 ft, and10 = 100+ ft).}
#'  \item{diameter}{DBH in inches (DBH stands for diameter of tree at breast height).}
#'  \item{curb}{Curb presence (Y = Yes, N = No)}
#'  \item{date_planted}{The date of planting in YYYYMMDD format.  Data for this field may not be available for all trees.}
#'  \item{longitude}{Longitude coordinate}
#'  \item{latitude}{Latitude coordinate}
#' }
#' @examples
#' vancouver_trees
#'
#' head(vancouver_trees)
#' summary(vancouver_trees)

"vancouver_trees"
