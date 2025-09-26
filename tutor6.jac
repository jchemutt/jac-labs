"""A Tutor with AI support"""

import from byllm.llm { Model }


# Gemini model for generating hints/solutions
 glob llm =
    Model(model_name="gemini/gemini-2.0-flash", verbose=False);


"""Ask the LLM for a math hint or solution"""
def solve_math(problem: str) -> str by llm();


walker Tutor {
    has problem: str;

    can start with `root entry;
    can process with exercise entry;
}


node exercise {
    has question: str;
}


# CLI entry point
 with entry:__main__ {
    root spawn Tutor("What is 9 * 6?");
    root spawn Tutor("Solve for x: 3x + 3 = 15");
}
