library(dplyr)

assignments <-
  tibble::tribble(
      ~names,
      "SarahAttaway",
       "ansley9521",
     "ElisaCarsten",
      "alliechoate",
      "mcloutier96",
        "lconover1",
       "wesley4546",
  "oliviagasparoni",
        "sgranitto",
        "agregory3",
       "gooberglob",
        "Jenkins16",
         "jmkralik",
     "joannalawler",
         "Gmackay3",
         "ecmonson",
     "alicesonorbe",
         "bpeluffo",
        "akpernice",
    "melissapierre",
    "marianruiz002",
       "alexsciuto",
          "siplink",
     "JerrySlutsky",
        "vieirak97",
   "kaitlinwhite19",
    "MZimmerman321"
  ) %>%
  mutate(
    self = 1:27,
    r1 = sample(1:27, 27, replace = FALSE),
    r2 = sample(1:27, 27, replace = FALSE)
    ) %>%
  mutate(pr1 = names[r1], pr2 = names[r2])

filter(assignments, r1 == r2)
filter(assignments, self == r1)
filter(assignments, self == r2)

assignments[c(3, 7, 10, 17, 21), c(4, 6)] <- assignments[c(17, 3, 21, 10, 7), c(4, 6)]

any(assignments$r1 == assignments$r2)
any(assignments$self == assignments$r1)
any(assignments$self == assignments$r2)

assignments %>%
  mutate(will_rev_1 = names[sapply(assignments$self, function(x) which(assignments$r1 == x))],
         will_rev_2 = names[sapply(assignments$self, function(x) which(assignments$r2 == x))]
         ) %>%
  transmute(Name = names,
            `To Review` = paste("Please review", pr1, "and", pr2),
            `Will Review` = paste("You will be reviewed by", will_rev_1, "and", will_rev_2)) %>%
  write.table("clipboard", sep = "\t", row.names = FALSE, quote = FALSE)

