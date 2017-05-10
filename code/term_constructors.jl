using CASL

# Math 162 course with no pre or corequisite.
math162 = Course("Calculus I", 4, [], [])

# Physics course with a passrate of 90%, and math 162 as a prerequisite.
phys162 = Course("Physics II", 3, 0.9, [math162], [])

# Physics lab with Pysicis II as a corequisite
phys162l = Course("Physics II Lab", 1, [], [phys162])

term1 = Term([math162])
term2 = Term([phys162, phys162l])