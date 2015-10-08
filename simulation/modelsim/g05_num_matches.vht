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
-- Generated on "10/01/2015 15:33:45"
                                                            
-- Vhdl Test Bench template for design  :  g05_num_matches
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g05_num_matches_vhd_tst IS
END g05_num_matches_vhd_tst;
ARCHITECTURE g05_num_matches_arch OF g05_num_matches_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL G1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL G2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL G3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL G4 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL N : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL P1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL P2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL P3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL P4 : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT g05_num_matches
	PORT (
	G1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	G2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	G3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	G4 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	N : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	P1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	P2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	P3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	P4 : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g05_num_matches
	PORT MAP (
-- list connections between master ports and signals
	G1 => G1,
	G2 => G2,
	G3 => G3,
	G4 => G4,
	N => N,
	P1 => P1,
	P2 => P2,
	P3 => P3,
	P4 => P4
	);
                                         
always : PROCESS                                                                                  
BEGIN                                                         
	P1 <= "000";
	P2 <= "000";
	P3 <= "000";
	P4 <= "000";
	G1 <= "000";
	G2 <= "000";
	G3 <= "000";
	G4 <= "000";
	wait for 10 ns;
	
	P1 <= "000";
	P2 <= "001";
	P3 <= "001";
	P4 <= "001";
	G1 <= "000";
	G2 <= "000";
	G3 <= "000";
	G4 <= "000";
	wait for 10 ns;
	
	P1 <= "000";
	P2 <= "010";
	P3 <= "000";
	P4 <= "010";
	G1 <= "000";
	G2 <= "000";
	G3 <= "000";
	G4 <= "000";
	wait for 10 ns;
	
	P1 <= "010";
	P2 <= "010";
	P3 <= "010";
	P4 <= "111";
	G1 <= "010";
	G2 <= "010";
	G3 <= "010";
	G4 <= "010";
	wait for 10 ns;
	
	P1 <= "111";
	P2 <= "000";
	P3 <= "000";
	P4 <= "000";
	G1 <= "111";
	G2 <= "000";
	G3 <= "000";
	G4 <= "000";
	wait for 10 ns;
	
	P1 <= "000";
	P2 <= "000";
	P3 <= "100";
	P4 <= "000";
	G1 <= "000";
	G2 <= "000";
	G3 <= "001";
	G4 <= "100";
	wait for 10 ns;
	
	P1 <= "000";
	P2 <= "111";
	P3 <= "111";
	P4 <= "111";
	G1 <= "111";
	G2 <= "111";
	G3 <= "111";
	G4 <= "111";
	wait for 10 ns;
	
	P1 <= "110";
	P2 <= "011";
	P3 <= "111";
	P4 <= "000";
	G1 <= "000";
	G2 <= "111";
	G3 <= "000";
	G4 <= "000";
	wait for 10 ns;
	
	
	
WAIT;                                                        
END PROCESS always;                                          
END g05_num_matches_arch;
