
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity private_key_RSA is
    port (
        clk          : in  std_logic;
        en           : in  std_logic;
        p_in         : in  std_logic_vector(15 downto 0);
        q_in         : in  std_logic_vector(15 downto 0);
        public_key   : in  std_logic_vector(31 downto 0);
        private_key  : out std_logic_vector(31 downto 0);
        n: out std_logic_vector(31 downto 0);
        both_keys: out std_logic
    );
end private_key_RSA;

architecture Behavioral of private_key_RSA is
    signal mul_m   : unsigned(31 downto 0); 
    signal acc3    : unsigned(31 downto 0) ;
    signal index   : std_logic_vector(31 downto 0) := x"00000001";  
    signal found   : std_logic := '0';  
    begin
        mul_m <=  (unsigned(p_in) - 1) * (unsigned(q_in) - 1);
        process(clk)
        begin
            if found = '1' then
                    found <= '1';  
            else
                    acc3 <= (unsigned(index) * unsigned(public_key)) mod mul_m;
                    if rising_edge(clk)and en='1' then
                            if acc3 = 1 then
                                private_key <= index;  
                                n<=std_logic_vector(unsigned(p_in)*unsigned(q_in));
                                found <= '1'; 
                                both_keys<='1';
                            else
                                index <= index + 1; 
                            end if;
                    end if;
            end if;  
end process;
end Behavioral;
--e and (p - 1) x (q - 1) have no common factor except 1. 
