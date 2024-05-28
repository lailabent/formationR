
# fonction de stat agregee
calculer_stat_desc <- function(racine, estimateur = "moyenne", ...) {
  if (estimateur == "moyenne") {
    x <- mean(racine, na.rm = T, ...)
  } else if (estimateur == "ecart-type" | estimateur == "sd") {
    x <- sd(racine, na.rm = T, ...)
  } else if (estimateur == "variance") {
    x <- var(racine, na.rm = T, ...)
  }
  return(x)
}

calculer_stat_desc(racine = rnorm(10),estimateur = "sd")
fonction_de_stat_agregee(rnorm(10))
fonction_de_stat_agregee(rnorm(10), "ecart-type")
fonction_de_stat_agregee(rnorm(10), "variance")
rnorm(10)
