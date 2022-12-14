struct Exercise {
    var name: String
    var muscleGroups: [String]
    var reps: Int
    var sets: Int
    var totalReps: Int

    init(name: String, muscleGroups: [String], reps: Int, sets: Int, totalReps: Int) {
        self.name = name
        self.muscleGroups = muscleGroups
        self.reps = reps
        self.sets = sets
        self.totalReps = totalReps
    }
}

var pushUp = Exercise(name: "Push up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3, totalReps: 30)

var sitUp = Exercise(name: "Sit up", muscleGroups: ["Legs", "Feminine"], reps: 15, sets: 2, totalReps: 30)

var crunch = Exercise(name: "Crunch", muscleGroups: ["Abdominal", "Neck"], reps: 10, sets: 5, totalReps: 50)

struct Regimen {
    var dayOfWeek: String
    var exercises: [Exercise]

    init(dayOfWeek: String, exercises: [Exercise]) {
        self.dayOfWeek = dayOfWeek
        self.exercises = exercises
    }

    func printExercisePlan() {
        print("Today is \(self.dayOfWeek) and the plan is to:")
        for exercise in self.exercises {
            print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s repetitions")
            print("That`s a total \(exercise.totalReps) \(exercise.name)")
        }
    }
}

var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pushUp])
print(mondayRegimen.printExercisePlan())
