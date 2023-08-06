module mkTestbench (Empty);

    rule rl_print_answer;
       $display ("Deep Thought says: Hello, World! The answer is 42.");
       $finish;
    endrule
 endmodule