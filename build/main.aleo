program calculator.aleo;

struct Calculation:
    num1 as i32;
    num2 as i32;
    operation as u8;


function calculate:
    input r0 as Calculation.private;
    is.eq r0.operation 1u8 into r1;
    add r0.num1 r0.num2 into r2;
    is.eq r0.operation 2u8 into r3;
    sub r0.num1 r0.num2 into r4;
    is.eq r0.operation 3u8 into r5;
    mul r0.num1 r0.num2 into r6;
    is.eq r0.operation 4u8 into r7;
    is.neq r0.num2 0i32 into r8;
    div r0.num1 r0.num2 into r9;
    not r8 into r10;
    and r7 r10 into r11;
    ternary r11 0i32 0i32 into r12;
    and r7 r8 into r13;
    ternary r13 r9 r12 into r14;
    ternary r5 r6 r14 into r15;
    ternary r3 r4 r15 into r16;
    ternary r1 r2 r16 into r17;
    output r17 as i32.private;
