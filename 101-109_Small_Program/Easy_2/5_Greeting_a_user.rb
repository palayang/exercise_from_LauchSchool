print "What is your name?"
name = gets.chomp
name[-1] == "!" ? puts("HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?") : puts("Hello #{name}.")


# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?