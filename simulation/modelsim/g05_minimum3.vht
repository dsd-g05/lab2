-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/08/2015 15:03:49"
                                                            
-- Vhdl Test Bench template for design  :  g05_minimum3
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE IEEE.NUMERIC_STD.all;                                 

ENTITY g05_minimum3_vhd_tst IS
END g05_minimum3_vhd_tst;
ARCHITECTURE g05_minimum3_arch OF g05_minimum3_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL M : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL min : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL N : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT g05_minimum3
	PORT (
	M : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	min : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	N : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g05_minimum3
	PORT MAP (
-- list connections between master ports and signals
	M => M,
	min => min,
	N => N
	);                                         
always : PROCESS                                                                                
BEGIN                                                         
   FOR i IN 0 TO 8 LOOP
		M <= std_LOGIC_VECTOR(to_unsigned(i,3));
		FOR j IN 0 TO 8 LOOP
			N <= std_LOGIC_VECTOR(to_unsigned(j,3));
			wait for 10 ns;
		END LOOP;
	END LOOP;
WAIT;                                                        
END PROCESS always;                                          
END g05_minimum3_arch;
