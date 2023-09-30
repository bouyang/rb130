# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
puts my_proc.class
my_proc.call
my_proc.call('cat')

# For this group, the output is :
# (Proc object and id information)
# Proc
# This is a .
# This is a cat.

# my_proc is a local variable pointing to the proc intialized on the first line. When we call puts my_proc, it outputs the object itself. When we look at the .class, it outputs that
# it is a Proc class object. When we perform the call, it calls the block, outputing This is a . because the default block parameter thing is set to nil. Finally, when we call the
# Proc passing in an argument, that argument will be assigned to the block parameter so the output is This is a cat.

# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}." }
my_second_lambda = -> (thing) { puts "This is a #{thing}." }
puts my_lambda
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')
#my_lambda.call
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

# For this group, the output is:
# (Proc object with lambda)
# (Proc object with lambda)
# Proc
# This is a dog.
# Error for incorrect number of arguments
# uninitiazlied constant Lambda

# The difference is that when you call a lambda without passing in an argument, it gives an error. Also it looks like there is no Lambda class

# Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."}
#block_method_1('seal')

# For this group, because we call yield, we must pass in a block which is why it gives an error when we do not pass in the block. However, we also need to pass in animal into yield or else
# the block parameter seal is not assigned

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

# When we pass in not enough arguments to fit the block parameters, it assigns those block parameters to reference nil, which is why there is an empty space This is a turtle and a .
# When we do not include a block parameter, we also cannot use local variables in the string interpolation


# Procs: lenient arity
# Lambdas: strict arity
# Blocks: lenient arity