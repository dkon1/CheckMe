#' Initializes data tables
#'
#' This function creates a blank data table for
#' answers to be filled into.
#'
#' @return Blank data table
#' @export
initialize_solution <- function(solutions_path = "",url=FALSE){
  check_table <<- data.table::data.table(
    question = character(),
    answer = list(),
    fun = character(),
    
    stringsAsFactors = FALSE
  )
  if(url){
    solutions_table <<- loadRData(solutions_path,url=TRUE)
  } else if(file.exists(solutions_path)){
    solutions_table <<- loadRData(solutions_path)
  } else {
    print("Solutions table not found.")
  }
  
  
}



