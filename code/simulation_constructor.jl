# A simulation object that uses the default grade prediction module.
sim_default = Simulation(myCurriculum)

# A simulation object that uses a custom grade prediction module (ProbitModel).
sim = Simulation(myCurriculum, model=ProbitModel)