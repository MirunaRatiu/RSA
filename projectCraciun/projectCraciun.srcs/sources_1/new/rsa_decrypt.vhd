
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.math_real.all;

entity rsa_decrypt is
    port (
        clk             : in  std_logic;
        en              : in  std_logic;
        ciphertext_in   : in  std_logic_vector(31 downto 0);  
        private_key_d   : in  std_logic_vector(31 downto 0);  
        public_key_n    : in  std_logic_vector(31 downto 0);  
        character_out   : out std_logic_vector(7 downto 0);    
        done            : out std_logic                       
    );
end rsa_decrypt;

architecture Behavioral of rsa_decrypt is
    signal base        : unsigned(31 downto 0);
    signal exp         : unsigned(31 downto 0);
    signal modulus     : unsigned(31 downto 0);
    signal result      : unsigned(31 downto 0) := x"00000001"; -- Inițializare la 1
    signal temp_base   : unsigned(31 downto 0);
    signal temp_exp    : unsigned(31 downto 0);
    signal calc_done   : std_logic := '0';
    signal active      : std_logic := '0';
begin

    base <= unsigned(ciphertext_in);
    exp <= unsigned(private_key_d);
    modulus <= unsigned(public_key_n);

    process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' and active = '0' then
                temp_base <= base mod modulus; 
                temp_exp <= exp;
                result <= x"00000001"; 
                calc_done <= '0';
                active <= '1';
            elsif active = '1' then
                if temp_exp /= 0 then
                    if temp_exp(0) = '1' then 
                        result <= (result * temp_base) mod modulus;
                    end if;
                    temp_base <= (temp_base * temp_base) mod modulus; 
                    temp_exp <= "0"&temp_exp(31 downto 1); 
                else
                    calc_done <= '1'; 
                    active <= '0';
                end if;
            end if;

            if calc_done = '1' then
                character_out <= std_logic_vector(result(7 downto 0)); -- Trunchiere la 8 biti
                done <= '1';
            else
                done <= '0';
            end if;
        end if;
    end process;

end Behavioral;
--entity rsa_decrypt is
--    port (
--        clk: in  std_logic;
--        en              : in  std_logic;
--        ciphertext_in   : in  std_logic_vector(31 downto 0);  
--        private_key_d   : in  std_logic_vector(31 downto 0);  
--        public_key_n    : in  std_logic_vector(31 downto 0);  
--        character_out   : out std_logic_vector(7 downto 0);    
--        done            : out std_logic                        
--    );
--end rsa_decrypt;

--architecture Behavioral of rsa_decrypt is
--    signal base       : std_logic_vector(31 downto 0);
--    signal exp        : std_logic_vector(31 downto 0);
--    signal modulus    : std_logic_vector(31 downto 0);
--    signal result     : std_logic_vector(31 downto 0);
--    signal calc_done  : std_logic := '0'; 
--    signal temp_result : std_logic_vector(31 downto 0) := x"00000001";
--    signal i : integer := 1;
--begin
--    result <= x"00000000";
--    modulus <= public_key_n;
--    base <= ciphertext_in;
--    exp <= private_key_d;
    
    
--    process(clk)
--    begin
--        if rising_edge(clk) then 
--            calc_done<='1';
--            result <= std_logic_vector(to_unsigned((to_integer(unsigned(base)) ** to_integer(unsigned(exp))) mod to_integer(unsigned(modulus)), result'length));
--            if calc_done = '1' and en = '1' then
--                character_out <= "00000000";
--                --std_logic_vector(result(7 downto 0));
--                done <= '1';
--            end if;
--        end if;
--    end process;

--end Behavioral;


