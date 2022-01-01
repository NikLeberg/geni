#Please do not remove the below two lines as they are required to use one of the 120/108 LED's
set_global_assignment -name RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"

# You have to replace <ENTITY_PORT_NAME_xxx> with the name of the Output port
# of your top entity

set_location_assignment PIN_E6 -to key[0]
set_location_assignment PIN_J16 -to key[1]
set_location_assignment PIN_K16 -to key[2]
set_location_assignment PIN_J17 -to key[3]
set_location_assignment PIN_K17 -to pressed
# set_location_assignment PIN_J18 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED1_6>
# set_location_assignment PIN_K18 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED1_7>
# set_location_assignment PIN_F19 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED1_8>
# set_location_assignment PIN_J15 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED1_9>
# set_location_assignment PIN_K15 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED1_10>
# set_location_assignment PIN_L16 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED1_11>
# set_location_assignment PIN_L15 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED1_12>

set_location_assignment PIN_D6 -to press_count[0]
set_location_assignment PIN_H9 -to press_count[1]
set_location_assignment PIN_F10 -to press_count[2]
set_location_assignment PIN_G12 -to press_count[3]
# set_location_assignment PIN_E10 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED2_5>
# set_location_assignment PIN_G14 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED2_6>
# set_location_assignment PIN_G15 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED2_7>
# set_location_assignment PIN_G16 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED2_8>
# set_location_assignment PIN_F14 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED2_9>
# set_location_assignment PIN_J22 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED2_10>
# set_location_assignment PIN_K21 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED2_11>
# set_location_assignment PIN_D19 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED2_12>

# set_location_assignment PIN_E5 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED3_1>
# set_location_assignment PIN_F8 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED3_2>
# set_location_assignment PIN_G10 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED3_3>
# set_location_assignment PIN_F11 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED3_4>
# set_location_assignment PIN_E9 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED3_5>
# set_location_assignment PIN_H13 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED3_6>
# set_location_assignment PIN_H14 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED3_7>
# set_location_assignment PIN_H15 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED3_8>
# set_location_assignment PIN_G17 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED3_9>
# set_location_assignment PIN_J21 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED3_10>
# set_location_assignment PIN_F15 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED3_11>
# set_location_assignment PIN_F17 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED3_12>

# set_location_assignment PIN_B5 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED4_1>
# set_location_assignment PIN_G8 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED4_2>
# set_location_assignment PIN_H10 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED4_3>
# set_location_assignment PIN_E11 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED4_4>
# set_location_assignment PIN_G7 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED4_5>
# set_location_assignment PIN_G13 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED4_6>
# set_location_assignment PIN_D10 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED4_7>
# set_location_assignment PIN_F12 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED4_8>
# set_location_assignment PIN_H16 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED4_9>
# set_location_assignment PIN_H19 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED4_10>
# set_location_assignment PIN_E15 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED4_11>
# set_location_assignment PIN_D17 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED4_12>

# set_location_assignment PIN_C4 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED5_1>
# set_location_assignment PIN_E7 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED5_2>
# set_location_assignment PIN_G9 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED5_3>
# set_location_assignment PIN_H11 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED5_4>
# set_location_assignment PIN_F7 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED5_5>
# set_location_assignment PIN_H12 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED5_6>
# set_location_assignment PIN_F9 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED5_7>
# set_location_assignment PIN_E12 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED5_8>
# set_location_assignment PIN_E13 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED5_9>
# set_location_assignment PIN_H17 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED5_10>
# set_location_assignment PIN_D15 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED5_11>
# set_location_assignment PIN_K22 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED5_12>

# set_location_assignment PIN_A4 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED6_1>
# set_location_assignment PIN_C7 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED6_2>
# set_location_assignment PIN_A8 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED6_3>
# set_location_assignment PIN_A10 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED6_4>
# set_location_assignment PIN_A14 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED6_5>
# set_location_assignment PIN_A16 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED6_6>
# set_location_assignment PIN_A18 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED6_7>
# set_location_assignment PIN_B20 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED6_8>
# set_location_assignment PIN_B22 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED6_9>
# set_location_assignment PIN_E22 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED6_10>
# set_location_assignment PIN_H21 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED6_11>
# set_location_assignment PIN_L21 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED6_12>

# set_location_assignment PIN_C3 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED7_1>
# set_location_assignment PIN_A5 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED7_2>
# set_location_assignment PIN_B7 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED7_3>
# set_location_assignment PIN_B9 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED7_4>
# set_location_assignment PIN_C13 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED7_5>
# set_location_assignment PIN_C15 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED7_6>
# set_location_assignment PIN_C17 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED7_7>
# set_location_assignment PIN_C19 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED7_8>
# set_location_assignment PIN_A20 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED7_9>
# set_location_assignment PIN_D20 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED7_10>
# set_location_assignment PIN_F20 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED7_11>
# set_location_assignment PIN_F16 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED7_12>

# set_location_assignment PIN_B3 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED8_1>
# set_location_assignment PIN_C6 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED8_2>
# set_location_assignment PIN_A7 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED8_3>
# set_location_assignment PIN_A9 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED8_4>
# set_location_assignment PIN_B13 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED8_5>
# set_location_assignment PIN_B15 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED8_6>
# set_location_assignment PIN_B17 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED8_7>
# set_location_assignment PIN_B19 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED8_8>
# set_location_assignment PIN_C21 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED8_9>
# set_location_assignment PIN_D21 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED8_10>
# set_location_assignment PIN_F22 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED8_11>
# set_location_assignment PIN_E16 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED8_12>

# set_location_assignment PIN_A3 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED9_1>
# set_location_assignment PIN_B6 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED9_2>
# set_location_assignment PIN_C8 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED9_3>
# set_location_assignment PIN_C10 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED9_4>
# set_location_assignment PIN_A13 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED9_5>
# set_location_assignment PIN_A15 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED9_6>
# set_location_assignment PIN_A17 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED9_7>
# set_location_assignment PIN_A19 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED9_8>
# set_location_assignment PIN_B21 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED9_9>
# set_location_assignment PIN_D22 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED9_10>
# set_location_assignment PIN_F21 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED9_11>
# set_location_assignment PIN_L22 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED9_12>

# set_location_assignment PIN_B4 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED10_1>
# set_location_assignment PIN_A6 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED10_2>
# set_location_assignment PIN_B8 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED10_3>
# set_location_assignment PIN_B10 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED10_4>
# set_location_assignment PIN_B14 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED10_5>
# set_location_assignment PIN_B16 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED10_6>
# set_location_assignment PIN_B18 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED10_7>
# set_location_assignment PIN_C20 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED10_8>
# set_location_assignment PIN_C22 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED10_9>
# set_location_assignment PIN_E21 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED10_10>
# set_location_assignment PIN_H22 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED10_11>
# set_location_assignment PIN_H20 -to <ENTITY_PORT_NAME_CONNECTED_TO_LED10_12>
