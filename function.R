# Define function to take the mode of a given vector
get_mode <- function(data, return_table){ 
    if(is.vector(data) == FALSE) { # Check that the data is a vector, and print out an error message if it is not (for example the user has entered a whole data frame)
        print("Error: the object provided in the data argument is not a vector.")
    } 
    else{
        frequency_table <- table(data) # Tabulate the frequency of each unique value in the vector
        max_frequency <- max(frequency_table) # Take the most frequent value
        mode <- names(frequency_table[frequency_table == max_frequency]) # Filter the name of the most frequent (modal) value
        if(return_table == TRUE){
            return(data.frame(frequency_table))
        } else{
            return(mode) 
        }  
    }
}

data("trees") # Load example data into workspace
get_mode(data = quakes$station, return_table = FALSE) # Test function
get_mode(data = quakes, return_table = FALSE) # Test error message

get_mode(data = quakes$station, return_table = TRUE)
