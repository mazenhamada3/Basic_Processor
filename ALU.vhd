library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port (
        ALU_OP   : in  std_logic_vector(3 downto 0);
        AC       : in  std_logic_vector(15 downto 0);
        DR       : in  std_logic_vector(15 downto 0);
        EN       : in  std_logic;                    -- Enable signal
        ALU_OUT  : out std_logic_vector(15 downto 0)
    );
end ALU;
--admk

architecture Behavioral_ALU of ALU is
begin
    process(ALU_OP, AC, DR, EN)
    begin
        if EN = '1' then
            case ALU_OP is
                when "0001" => ALU_OUT <= DR;                                      -- LOAD
                when "0010" => ALU_OUT <= std_logic_vector(unsigned(AC) + unsigned(DR));  -- ADD
                when "0011" => ALU_OUT <= std_logic_vector(unsigned(AC) - unsigned(DR));  -- SUB
                when "0100" => ALU_OUT <= AC xor DR;                              -- XOR
                when others => ALU_OUT <= AC;
            end case;
        else
            ALU_OUT <= (others => 'Z');  -- High impedance when disabled
        end if;
    end process;
end Behavioral_ALU;