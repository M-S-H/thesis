# SampleModule

function predict_stopout(student, currentTerm, model)
 # Chance of stopping out
 chance = model[:rate] - currentTerm*0.01

 # Determine stopout
 return rand() <= chance
end