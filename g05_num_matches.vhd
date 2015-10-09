-- Descp: counts number of exact matches
--
-- entity name: g05_num_matches
--
-- Version 1.0
-- Author: Felix Dube; felix.dube@mail.mcgill.ca & Auguste Lalande; auguste.lalande@mail.mcgill.ca
-- Date: October 1, 2015

library ieee;
use ieee.std_logic_1164.all;

entity g05_num_matches is
    port(
        P1, P2, P3, P4 : in std_logic_vector(2 downto 0);
        G1, G2, G3, G4 : in std_logic_vector(2 downto 0);
        N : out std_logic_vector(2 downto 0)
    );
end g05_num_matches;

architecture behavior of g05_num_matches is
    component g05_comp6 is
        port (
            A : in std_logic_vector(5 downto 0);
            B : in std_logic_vector(5 downto 0);
            AeqB : out std_logic
        );
    end component;
    component g05_num1s is
        port (
            X : in std_logic_vector(3 downto 0);
            num1s : out std_logic_vector(2 downto 0)
        );
    end component;
    signal X : std_logic_vector(3 downto 0);
    signal PP1 : std_logic_vector(5 downto 0);
    signal GG1 : std_logic_vector(5 downto 0);
    signal PP2 : std_logic_vector(5 downto 0);
    signal GG2 : std_logic_vector(5 downto 0);
    signal PP3 : std_logic_vector(5 downto 0);
    signal GG3 : std_logic_vector(5 downto 0);
    signal PP4 : std_logic_vector(5 downto 0);
    signal GG4 : std_logic_vector(5 downto 0);
begin
    PP1 <= ("000"&P1);
    GG1 <= ("000"&G1);
    PP2 <= ("000"&P2);
    GG2 <= ("000"&G2);
    PP3 <= ("000"&P3);
    GG3 <= ("000"&G3);
    PP4 <= ("000"&P4);
    GG4 <= ("000"&G4);
    compA : g05_comp6 port map(A => PP1, B => GG1, AeqB => X(0));
    compB : g05_comp6 port map(A => PP2, B => GG2, AeqB => X(1));
    compC : g05_comp6 port map(A => PP3, B => GG3, AeqB => X(2));
    compD : g05_comp6 port map(A => PP4, B => GG4, AeqB => X(3));
    matches : g05_num1s port map(X => X, num1s => N);
end behavior;