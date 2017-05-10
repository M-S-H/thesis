using CASL

# Load the user defined performance module
# in this case called 'ProbitModel'
require("./path/to/CustomPerformanceModel.jl")
# => CustomModel

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

# Now a simulation can be run using the coures passrate model
sim1 = simulate(curriculum, students)
println(sim1.gradRate)
# => 0.73

# Tweak the parameters and use the custom performance model
sim2 = simulate(curriculum, students; duration=10, max_credis=19, performance_model=CustomModel, stopouts=false)
println(sim2.gradRate)
# => 0.85