print_percent_missing <- function(df1) {
  percent_missing <- 100.0 * mean(is.na(df1))
  formatted <- sprintf("%.2f", percent_missing)
  print(paste("% missing =", formatted))
}

print_section <- function(message) {
    separator <- "=== === ==="

    print_line <- function() {
        print(paste(separator, separator, separator))
    }

    print_line()
    print(paste(separator, message, separator))
    print_line()
}

run_and_print <- function(expr) {
  print(body(expr))
  print(expr())
  invisible()
}

short_summary <- function(my_data) {
    cat("Rows:", nrow(my_data), "Columns:", ncol(my_data), "\n")
}

str_big <- function(my_data) {
    str(my_data, list.len = nrow(my_data))  # disable truncation
}

wait_for_enter <- function() {
    print("Press [enter] to continue")
    scan("stdin", character(), n=1)
}
