# write a one-line program that creates the following output 10 times,
# with the subsequent line indented 1 space to the right

# interate the given block 10 times, passing in valudes from 0 to 9.
# “ ” * number, so will indent 0 to 9 times
10.times{|number| puts ( " " * number ) + "The Flintstones Rock!"}
