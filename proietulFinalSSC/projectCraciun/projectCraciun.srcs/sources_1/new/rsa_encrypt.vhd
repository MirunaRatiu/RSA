
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--use IEEE.math_real.all;

--entity rsa_encrypt is
--    port (
--        clk           : in  std_logic;
--        en            : in  std_logic;
--        character_in  : in  std_logic_vector(7 downto 0); 
--        public_key_e  : in  std_logic_vector(31 downto 0); 
--        public_key_n  : in  std_logic_vector(31 downto 0);
--        ciphertext    : out std_logic_vector(31 downto 0); 
--        done          : out std_logic                   
--    );
--end rsa_encrypt;

--architecture Behavioral of rsa_encrypt is
--    signal base       : unsigned(31 downto 0);
--    signal exp        : unsigned(31 downto 0);
--    signal modulus    : unsigned(31 downto 0);
--    signal result     : unsigned(31 downto 0) := x"00000000";
--    signal calc_done  : std_logic := '0'; 
--    signal temp_result : unsigned(31 downto 0) := x"00000001";
--    signal i : integer := 1;
--begin
--    base <= x"000000"&unsigned(character_in);
--    exp <= unsigned(public_key_e);
--    modulus <= unsigned(public_key_n);
--    process(clk)
--    begin
--        if rising_edge(clk) then 
--            calc_done<='1';
--            result <= to_unsigned(to_integer(unsigned(base)) ** to_integer(exp), result'length) mod modulus;
--            if calc_done = '1' and en = '1' then
--                ciphertext <= std_logic_vector(result); 
--                done <= '1';
--            end if;
--        end if;
--    end process;

--end Behavioral;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rsa_encrypt is
    port (
        clk           : in  std_logic;
        en            : in  std_logic;
        character_in  : in  std_logic_vector(7 downto 0); 
        public_key_e  : in  std_logic_vector(31 downto 0); 
        public_key_n  : in  std_logic_vector(31 downto 0);
        ciphertext    : out std_logic_vector(31 downto 0); 
        done          : out std_logic                   
    );
end rsa_encrypt;

architecture Behavioral of rsa_encrypt is
    signal base        : unsigned(31 downto 0);
    signal exp         : unsigned(31 downto 0);
    signal modulus     : unsigned(31 downto 0);
    signal result      : unsigned(31 downto 0) := x"00000001"; 
    signal temp_base   : unsigned(31 downto 0);
    signal temp_exp    : unsigned(31 downto 0);
    signal calc_done   : std_logic := '0';
    signal active      : std_logic := '0';
begin
    base <= x"000000" & unsigned(character_in); -- Transformare caracter în baza numerica
    exp <= unsigned(public_key_e);
    modulus <= unsigned(public_key_n);

    process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' and active = '0' then
                -- Initializare pentru exponentiere modulara rapida
                temp_base <= base mod modulus; -- Calcul baza initiala
                temp_exp <= exp;
                result <= x"00000001"; -- Resetare rezultat la 1
                calc_done <= '0';
                active <= '1'; -- Activare calcul
            elsif active = '1' then
                if temp_exp /= 0 then
                    -- Daca bitul LSB al exponentei este 1, multiplica în rezultat
                    if temp_exp(0) = '1' then
                        result <= (result * temp_base) mod modulus;
                    end if;
                    -- Ridica la patrat baza
                    temp_base <= (temp_base * temp_base) mod modulus;
                    -- Shift dreapta exponenta
                    temp_exp <= "0"&temp_exp(31 downto 1);
                else
                    -- Calcul finalizat
                    calc_done <= '1';
                    active <= '0';
                end if;
            end if;

            -- Ieșire rezultat
            if calc_done = '1' then
                ciphertext <= std_logic_vector(result); -- Rezultatul final
                done <= '1';
            else
                done <= '0';
            end if;
        end if;
    end process;

end Behavioral;
