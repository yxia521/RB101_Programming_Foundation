# default value "no" for variable param
def foo(param = "no")
  "yes"
end

# default value "no" for variable param
# if only call bar, withour any arguments in bar,
# it will return "yes" since param's default value is "no", "no" == "no" is true
def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)
#=> "no"

# since the return value of foo will always be "yes"
# "yes" == "no" will be false, so print "no"

