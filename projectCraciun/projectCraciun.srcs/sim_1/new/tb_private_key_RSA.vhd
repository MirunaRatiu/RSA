
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_private_key_RSA is
end tb_private_key_RSA;

architecture behavior of tb_private_key_RSA is
    signal en           : std_logic := '0';
    signal err          : std_logic;
    signal p_in         : std_logic_vector(15 downto 0);
    signal q_in         : std_logic_vector(15 downto 0);
    signal public_key   : std_logic_vector(31 downto 0);
    signal private_key  : std_logic_vector(31 downto 0) := (others => '0');
    signal n: std_logic_vector(31 downto 0);
    signal both_keys : std_logic:='0';
    constant T : time := 20 ns;
    signal clk : std_logic := '0';
    
    -- Componenta de test
    component private_key_RSA
        port(
            clk          : in  std_logic;
            en           : in  std_logic;
            p_in         : in  std_logic_vector(15 downto 0);
            q_in         : in  std_logic_vector(15 downto 0);
            public_key   : in  std_logic_vector(31 downto 0);
            private_key  : out std_logic_vector(31 downto 0);
            n: out std_logic_vector(31 downto 0);
            both_keys :out std_logic
        );
    end component;
    
begin
    clk <= not clk after T / 2;
    uut: private_key_RSA
        port map (
            clk => clk,
            en => en,
            p_in => p_in,
            q_in => q_in,
            public_key => public_key,
            private_key => private_key,
            n=>n,
            both_keys=>both_keys
            
        );

    stim_proc: process
                    begin
                        -- Inițializare semnale
                        en <= '0';
                        p_in <= "0000000000000111"; -- p = 7
                        q_in <= "0000000000001011"; -- q = 11
                        public_key <= x"00000007";  -- e = 7
                        wait for 10 ns;
                    
                        -- Activați procesul
                        en <= '1';
                        wait for 100000 ns;  
    end process;

end behavior;
