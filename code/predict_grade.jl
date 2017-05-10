# SampleModule
function predict_grade(course, student)
  # Get the parameters from course
  params = course.model[:params]

  # Construct model based on the params
  model = build_model(params)

  # Construct a feature sample from student
  sample = [student.attributes[:ACT], student.attributes[:GPA]]

  # Predict grade
  grade = predict(model, sample)

  return grade
end