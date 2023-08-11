// The 'calculator' program.
program calculator.aleo {

    struct Calculation {
        num1: i32,    // First number for the calculation
        num2: i32,    // Second number for the calculation
        operation: u8 // 1 for addition, 2 for subtraction, 3 for multiplication, 4 for division
    }

    transition calculate(input: Calculation) -> i32 {
        // Addition
        if input.operation == 1u8 {
            return input.num1 + input.num2;
        }

        // Subtraction
        if input.operation == 2u8 {
            return input.num1 - input.num2;
        }

        // Multiplication
        if input.operation == 3u8 {
            return input.num1 * input.num2;
        }

        // Division
        if input.operation == 4u8 {
            // Ensure we are not dividing by zero
            if input.num2 != 0i32 {
                return input.num1 / input.num2;
            } else {
                // Return a fallback value in case of division by zero
                return 0i32; 
            }
        }

        // Fallback case (invalid operation)
        return 0i32;
    }
}

