# SampleModule

function train(curriculum)
  # Loop through each course in a curriculum and train each one
  for course in curriculum.courses
    # Load some training data
    data = read_data_here("./some/location/$(course.name).csv")

    # Train a model
    # For example, obtain the params for a linear regression.
    model_params = train_model(data)

    # Store the model
    course.model[:params] = model_params
  end

  # Model for predicting stopouts
  # Here this could simply be a probability.
  curriculum.stopoutModel[:rate] = 0.1
end