initialize_check <- function(){
  check_table <<- data.table::data.table(
    question = character(),
    answer = list(),
    stringsAsFactors = FALSE
  )
}
