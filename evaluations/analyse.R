t_grades <- readr::read_csv(
  file = "grades.csv",
  col_types = readr::cols(
    day = readr::col_date(),
    grade = readr::col_number()
  )
)

ggplot2::ggplot(
  t_grades, ggplot2::aes(x = day, y = grade)
) + ggplot2::geom_point() +
  ggplot2::scale_x_date("Date") +
  ggplot2::scale_y_continuous("Grade", limits = c(0, 5)) +
  ggplot2::geom_smooth(method = "lm") +
  ggplot2::labs(
    title = "Grades",
    caption = "Trendline is linear, with a 95% confidence interval"
  )
ggplot2::ggsave("grades.png", width = 7, height = 7)

