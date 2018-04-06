# Exercise 2: using `*apply()` functions

# Create a *list* of 10 random numbers. Use the `runif()` function to make a 
# vector of random numbers, then use `as.list()` to convert that to a list
rnums <- c(runif(10,0,50))
rnums

# Use `lapply()` to apply the `round()` function to each number, rounding it to 
# the nearest 0.1 (one decimal place)
rnums <- lapply(rnums,round, 1)
rnums

# Create a variable 'sentence' that contains a sentence of text (something 
# longish). Make the sentence lowercase; you can use a function to help.
sentence <- "relation between a physical object and a person"

# Use the `strsplit()` function to split the sentence into a vector of letters.
# Hint: split on `""` to split every character
# Note: this will return a _list_ with 1 element (which is the vector of letters)
letters <- strsplit(sentence, "")
letters 

# Extract the vector of letters from the resulting list
letters_v <- letters[[1]]
letters_v

# Use the `unique()` function to get a vector of unique letters
unique <- unique(letters_v)
unique

# Define a function `count_occurrences` that takes in two parameters: a letter 
# and a vector of letters. The function should return how many times that letter
# occurs in the provided vector.
# Hint: use a filter operation!
count_occurences <- function(letter, letters_vector) {
  length(letters_vector[letters_vector == letter])
}

# Call your `count_occurrences()` function to see how many times the letter 'e'
# is in your sentence.
count_occurences('e',letters_v)

# Use `sapply()` to apply your `count_occurrences()` function to each unique 
# letter in the vector to determine their frequencies.
# Convert the result into a list (using `as.list()`).
frequencies <- as.list(sapply(unique,count_occurences,letters_v))

# Print the resulting list of frequencies
frequencies
