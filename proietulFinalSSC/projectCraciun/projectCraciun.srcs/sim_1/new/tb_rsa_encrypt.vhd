

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_rsa_encrypt is
end tb_rsa_encrypt;

architecture behavior of tb_rsa_encrypt is
    
    signal en            : std_logic := '0';
    signal character_in  : std_logic_vector(7 downto 0) := (others => '0');
    signal public_key_e  : std_logic_vector(31 downto 0) := (others => '0');
    signal public_key_n  : std_logic_vector(31 downto 0) := (others => '0');
    signal ciphertext    : std_logic_vector(31 downto 0);
    signal done          : std_logic;
    constant T : time := 20 ns;
    signal clk : std_logic := '0';

  
    component rsa_encrypt
        port (
            clk           : in  std_logic;
            en            : in  std_logic;
            character_in  : in  std_logic_vector(7 downto 0);
            public_key_e  : in  std_logic_vector(31 downto 0);
            public_key_n  : in  std_logic_vector(31 downto 0);
            ciphertext    : out std_logic_vector(31 downto 0);
            done          : out std_logic
        );
    end component;

begin
    clk <= not clk after T / 2;
    
    uut: rsa_encrypt
        port map (
            clk           => clk,
            en            => en,
            character_in  => character_in,
            public_key_e  => public_key_e,
            public_key_n  => public_key_n,
            ciphertext    => ciphertext,
            done          => done
        );

    
    stim_proc: process
    begin
        en<='0';
        character_in <= std_logic_vector(to_unsigned(9, 8)); 
        public_key_e <= std_logic_vector(to_unsigned(7, 32)); 
        public_key_n <= std_logic_vector(to_unsigned(77, 32)); 
        wait for 10ns;
        
        en<='1';
        wait for 100000 ns;
        
    end process;

end behavior;
