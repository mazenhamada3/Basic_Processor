LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY MEMORY IS
    PORT (
        ADDR : IN STD_LOGIC_VECTOR(11 DOWNTO 0); -- 12-bit address
        DATA_IN : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- 16-bit data
        DATA_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        MEM_WRITE : IN STD_LOGIC;
        CLK : IN STD_LOGIC
    );
END MEMORY;

ARCHITECTURE Behavioral_MEMORY OF MEMORY IS
    TYPE MEMORY_ARRAY IS ARRAY (0 TO 4095) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL MEMORY_BLOCK : MEMORY_ARRAY := (
        -- Data Section (0-99)
        0 => x"000A", -- Number 10
        1 => x"0014", -- Number 20
        -- Program Section (100+)
        100 => x"1000", -- LOAD M[0]
        101 => x"2001", -- ADD M[1]
		  102=> x"3002", -- sub 
		  103=> x"4003", -- XOR
        OTHERS => (OTHERS => '0')
    );
BEGIN
    PROCESS (CLK)
    BEGIN
        IF rising_edge(CLK) THEN
            IF MEM_WRITE = '1' THEN
                MEMORY_BLOCK(to_integer(unsigned(ADDR))) <= DATA_IN;
            END IF;
        END IF;
    END PROCESS;
    DATA_OUT <= MEMORY_BLOCK(to_integer(unsigned(ADDR)));
END Behavioral_MEMORY;