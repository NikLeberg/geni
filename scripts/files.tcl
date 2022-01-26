# Gather all available vhdl source files. (This assumes the vhdl entities are
# organized in subfolders and have their testbenches in a tb subfolders.)
set files [glob ../vhdl/*.vhdl ../vhdl/**/*.vhdl ../vhdl/**/tb/*.vhdl]

# List the entities in the order that they should be compiled. (This assumes
# entity file and entity itself have the same name.)
set entities {
    "datatypes"

    "example"

    "keypad_reader"
    "keypad_debounce"
    "keypad_decoder"
    "keypad"

    "math_add"
    "math_add_carry"
    "math_sub"
    "math_sub_borrow"
    "math_mul"
    "math_div"
    "math_neg"
    "math"

    "stack_pkg"
    "stack"

    "bin_to_bcd"
    "bcd_to_bin"
    "bcd_to_7seg"

    "number_input"
    
    "rpn"
}

# List the testbenches in the order that they should be compiled and executed.
# (This assumes testbench file and entity have the same name.)
set testbenches {
    "example_tb"

    "keypad_reader_tb"
    "keypad_debounce_tb"
    "keypad_decoder_tb"
    "keypad_tb"

    "math_add_tb"
    "math_add_carry_tb"
    "math_sub_tb"
    "math_sub_borrow_tb"
    "math_mul_tb"
    "math_div_tb"
    "math_neg_tb"
    "math_tb"

    "bin_to_bcd_tb"
    "bcd_to_bin_tb"

    "number_input_tb"

    "stack_tb"
}
