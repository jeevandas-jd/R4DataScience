# ---- Read Paragraph ----
cat("Enter your paragraph (press Enter twice to finish):\n")
paragraph <- ""
repeat {
  line <- readline()
  if (line == "") break
  paragraph <- paste(paragraph, line)
}

# ---- Split Paragraph into Words ----
words <- unlist(strsplit(paragraph, "\\s+"))  # split by whitespace

# ---- a. Count Total Number of Words ----
word_count <- length(words)
cat("\nTotal number of words:", word_count, "\n")

# ---- b. Average Word Length ----
word_lengths <- nchar(words)
average_length <- mean(word_lengths)
cat("Average word length:", round(average_length, 2), "\n")

# ---- c. Find the Longest Word ----
longest_word <- words[which.max(word_lengths)]
cat("Longest word:", longest_word, "\n")

# ---- d. Replace a Specific Word ----
word_to_replace <- readline(prompt = "\nEnter the word to replace: ")
replacement_word <- readline(prompt = "Enter the new word: ")

# Use fixed = TRUE for literal match
modified_paragraph <- gsub(word_to_replace, replacement_word, paragraph, fixed = TRUE)

cat("\nModified Paragraph:\n")
cat(modified_paragraph, "\n")
