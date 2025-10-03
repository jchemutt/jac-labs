"""A scale-agnostic tutor"""

walker Tutor {
    has problem: str;

    can start with `root entry;
    can process with exercise entry;
}


node exercise {
    has question: str;
}


# Will run in CLI mode
 with entry:__main__ {
    root spawn Tutor("What is 9 * 6?");
    root spawn Tutor("Solve for x: 3x + 3 = 15");
}
