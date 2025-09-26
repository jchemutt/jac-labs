impl Tutor.start{
    if not [root-->( ` ? exercise ) ] {
        # create a new exercise node with the problem
        next =
            root ++> exercise(self.problem);
    } else {
        next = [root-->( ` ? exercise ) ];
    }
    visit next;
}


impl Tutor.process{
    print("Problem:", here.question);
    ans = input("Your answer (or press Enter for a hint): ");
    if ans == "" {
        # Ask Gemini for a step-by-step hint
        hint =
            solve_math("Give a step-by-step hint for: " + here.question);
        print("Hint from AI:", hint);
    } else {
        # Ask Gemini to check correctness
        feedback =
            solve_math(
                "Is " + ans + " the correct answer to: " + here.question + "? Explain briefly."
            );
        print("Tutor Response:", feedback);
    }
    disengage;
}
