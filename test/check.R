#' Checks data table of answers with table of solutions
#'
#' This function compares the values in the answer column of
#' the solutions_table with those in the check_table. It returns
#' a table with booleans indicating matches between answer provided
#' and solution set.
#'
#' @return Data table with results rendered
#' @export
check <- function(){
  questions <- solutions_table$question

  student <- check_table$answer
  solution <- solutions_table$answer

  grades <- student %in% solution

  result <<- data.table::data.table()
  result <- cbind(check_table, matches_solution = grades)

  # Remove fun column in check_table -- column that records function calls
  # result <- result[,fun:=NULL] ## FIXME breaks when used as package

  ## FIXME "matches_solution undefined"
  # if(mean(result$matches_solution)==1){
  #   print("All answers match solutions!")
  # } else {
  #   print("Not all answers match solutions...")
  #   print("The answers to the following questions are incorrect:")
  #   print(result[matches_solution != TRUE]$question)
  # }

  View(result)
}
