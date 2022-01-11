-- =============================================================================
-- File:                    math_add_tb.vhdl
--
-- Authors:                 Niklaus Leuenberger <leuen4@bfh.ch>
--
-- Version:                 0.1
--
-- Entity:                  math_add_tb
--
-- Description:             Test that addition is done correctly.
--
-- Changes:                 0.1, 2022-01-06, leuen4
--                              initial version
-- =============================================================================

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.datatypes.ALL;

ENTITY math_add_tb IS
    -- testbench needs no ports
END ENTITY math_add_tb;

ARCHITECTURE simulation OF math_add_tb IS
    -- component definition for device under test
    COMPONENT math_add
        GENERIC (
            num_bits : POSITIVE := 8
        );
        PORT (
            a, b : IN SIGNED(num_bits - 1 DOWNTO 0);
            y    : OUT SIGNED(num_bits - 1 DOWNTO 0)
        );
    END COMPONENT math_add;
    -- signals and constants for connecting to the DUT
    CONSTANT c_num_bits : POSITIVE := 8;
    SIGNAL s_a, s_b : SIGNED(c_num_bits - 1 DOWNTO 0) := to_signed(0, c_num_bits);
    SIGNAL s_y : SIGNED(c_num_bits - 1 DOWNTO 0);
    -- test vectors
    CONSTANT c_max : INTEGER := 2 ** (c_num_bits - 1) - 1; -- INT8_MAX
    CONSTANT c_min : INTEGER := - (c_max + 1); -- INT8_MIN
    TYPE test_vector IS RECORD
        a, b, y : INTEGER;
    END RECORD;
    TYPE test_vector_array IS ARRAY (NATURAL RANGE <>) OF test_vector;
    CONSTANT vectors : test_vector_array := (
        -- positive numbers
        test_vector'(0, 0, 0), -- 0 + 0 = 0
        test_vector'(1, 1, 2), -- 1 + 1 = 2
        test_vector'(21, 42, 63), -- 21 + 42 = 63
        -- negative numbers
        test_vector'(-1, -1, -2), -- (-1) + (-1) = -2
        test_vector'(-1, 2, 1), -- (-1) + 2 = 1
        test_vector'(-96, 102, 6), -- (-96) + 102 = 6
        -- over- and underflows
        test_vector'(c_max, 1, c_min), -- INT8_MAX + 1 = INT8_MIN (overflow)
        test_vector'(c_min, -1, c_max), -- INT8_MIN + (-1) = INT8_MAX (underflow)
        test_vector'(122, 111, -23), -- 122 + 111 = -23 (overflow)
        test_vector'(-100, -100, 56) -- (-100) + (-100) = 56 (underflow)
    );
BEGIN
    -- instantiate the device under test
    dut : math_add
    GENERIC MAP(
        num_bits => c_num_bits
    )
    PORT MAP(
        a => s_a,
        b => s_b,
        y => s_y
    );

    test : PROCESS IS
    BEGIN
        -- test each value from the test vector
        FOR i IN 0 TO vectors'length - 1 LOOP
            s_a <= to_signed(vectors(i).a, c_num_bits);
            s_b <= to_signed(vectors(i).b, c_num_bits);
            WAIT FOR 10 ns;
            ASSERT s_y = to_signed(vectors(i).y, c_num_bits)
            REPORT "Expected: " &
                INTEGER'image(vectors(i).a) & " + " &
                INTEGER'image(vectors(i).b) & " = " &
                INTEGER'image(vectors(i).y) & ", but got: " &
                INTEGER'image(to_integer(s_y)) & "."
                SEVERITY failure;
        END LOOP;

        -- report successful test
        REPORT "Test OK";
        WAIT;
    END PROCESS test;
END ARCHITECTURE simulation;
