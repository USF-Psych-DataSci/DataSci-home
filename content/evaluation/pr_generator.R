library(dplyr)

assignments <-
  tibble::tribble(
    ~names,
    "antoniettaa",
    "diegodulanto",
    "eburkey",
    "gregrousis",
    "iannel",
    "Han-Lee93",
    "kaycheharvey",
    "khoanguyen0812",
    "lendijoy",
    "Naidantu",
    "ncaliskan",
    "njie-DP",
    "roxannefelig",
    "samanthashepard",
    "samruddhis",
    "sejalkesh",
    "tylerallan",
    "whitneykasenetz"
  ) %>%
  mutate(
    self = 1:18,
    r1 = sample(1:18, 18, replace = FALSE),
    r2 = sample(1:18, 18, replace = FALSE)
    ) %>%
  mutate(pr1 = names[r1], pr2 = names[r2])

filter(assignments, r1 == r2)
filter(assignments, self == r1)
filter(assignments, self == r2)

assignments[c(3, 15), c(3, 5)] <- assignments[c(15, 3), c(3, 5)]

assignments[c(11, 12), c(4, 6)] <- assignments[c(12, 11), c(4, 6)]

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




