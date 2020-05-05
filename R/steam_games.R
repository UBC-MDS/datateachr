#' Steam Games
#' This dataset contain games from steam shop with detailed data downloaded from kaggle with a CC0 license.
#'
#' @source <https://www.kaggle.com/trolukovich/steam-games-complete-dataset>, downloaded 2019-06-16 and edited 2020-05-05
#' @format A data frame with columns:
#' \describe{
#'  \item{id}{Unique tree identifier}
#'  \item{url}{url site at which the game is located}
#'  \item{types}{type of package - app, sub, bundle}
#'  \item{name}{Game name}
#'  \item{desc_snippet}{Game description snippet}
#'  \item{recent_reviews}{recent reviews}
#'  \item{all_reviews}{all reviews}
#'  \item{release_date}{release date}
#'  \item{developer}{Game developer}
#'  \item{publisher}{Game publisher}
#'  \item{popular_tags}{tags}
#'  \item{game_details}{Game details}
#'  \item{languages}{languages the game is available in}
#'  \item{achievements}{Achievement number}
#'  \item{genre}{Game genre}
#'  \item{game_description}{Game description}
#'  \item{mature_content}{Description of mature content}
#'  \item{minimum_requirements}{Minimum specifications/requirements to play the game}
#'  \item{recommended_requirements}{Recommended specifications/requirements to play the game}
#'  \item{original_price}{regular price}
#'  \item{discount_price}{sale price with discount}
#' }
#' @examples
#' steam_games
#'
#' head(steam_games)
#' summary(steam_games)

"steam_games"
