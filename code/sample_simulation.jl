# Import the framework
using CurriculumFlow

# Load the user defined performance module
# in this case called 'ProbitModel'
require("./path/to/ProbitModel.jl")

# Load the Curriculum
curriculum = Curriculum("./path/to/curriculum.json")

# Create a set of students with a random ACT and
# high school GPA based on a normal distribution
students = []
for i=1:1000
    attributes = Dict(
        'ACT' => random_act(),
        'HSGPA' => random_gpa()
    )
    s = Student(attributes)
    push!(students, student)
end

# Create the simulation object
simulation = Simulation(curriculum; model=ProbitModel)

# Now a simulation can be run
simulate(simulation, students)
println(simulation.gradRate)
# => 0.73

# Tweak the parameters
simulate(simulation, students; duration=10, max_credis=19, stopouts=false)
println(simulation.gradRate)
# => 0.85