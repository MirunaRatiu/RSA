
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_rsa_decrypt is
end tb_rsa_decrypt;

architecture behavior of tb_rsa_decrypt is
    
    signal en            : std_logic := '0';
    signal ciphertext_in : std_logic_vector(31 downto 0) := (others => '0');
    signal private_key_d : std_logic_vector(31 downto 0) := (others => '0');
    signal public_key_n  : std_logic_vector(31 downto 0) := (others => '0');
    signal character_out : std_logic_vector(7 downto 0);
    signal done          : std_logic;
    constant T : time := 20 ns;
    signal clk : std_logic := '0';

    component rsa_decrypt
        port (
            clk             : in  std_logic;
            en              : in  std_logic;
            ciphertext_in   : in  std_logic_vector(31 downto 0);
            private_key_d   : in  std_logic_vector(31 downto 0);
            public_key_n    : in  std_logic_vector(31 downto 0);
            character_out   : out std_logic_vector(7 downto 0);
            done            : out std_logic
        );
    end component;

begin
    clk <= not clk after T / 2;

    uut: rsa_decrypt
        port map (
            clk             => clk,
            en              => en,
            ciphertext_in   => ciphertext_in,
            private_key_d   => private_key_d,
            public_key_n    => public_key_n,
            character_out   => character_out,
            done            => done
        );

    stim_proc: process
    begin
        en <= '0';
        ciphertext_in <= std_logic_vector(to_unsigned(37, 32));  
        private_key_d <= std_logic_vector(to_unsigned(43, 32));   
        public_key_n <= std_logic_vector(to_unsigned(77, 32));   
        
        wait for 10 ns;

        en <= '1';
        wait for 100000 ns;
    end process;

end behavior;
