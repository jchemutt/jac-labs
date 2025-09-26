impl Tutor.start{
    if not [root-->( ` ? exercise ) ] {
        # create a new exercise node with the problem
        next =
            root ++> exercise(self.problem);
    } else {
        # reuse existing node
        next =
            [root-->( ` ? exercise ) ];
    }
    visit next;
}


impl Tutor.process{
    print("Problem:", here.question);
    ans = input("Your answer (or press Enter for a hint): ");
    if ans == "" {
        # Static hints
         if here.question == "What is 9 * 6?" {
            print("Hint: Multiply 9 by 6.");
        } elif here.question == "Solve for x: 3x + 3 = 15" {
            print("Hint: Subtract 3 from both sides, then divide by 3.");
        } else {
            print("Hint: Break the problem into smaller steps.");
        }
    } else {
        # Static correctness check
         if here.question == "What is 9 * 6?" and ans == "54"  {
            print("Correct! 9 * 6 = 54.");
        } elif here.question == "Solve for x: 3x + 3 = 15" and ans == "4"  {
            print("Correct! x = 4.");
        } else {
            print("Not quite. Review your steps and try again.");
        }
    }
    disengage;
}
