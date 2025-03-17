LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Enhanced_Processor IS
    PORT (
        CLK      : IN  STD_LOGIC;
        RESET    : IN  STD_LOGIC;
        DATA_IN  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
        DATA_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
END Enhanced_Processor;

ARCHITECTURE Behavioral OF Enhanced_Processor IS
    -- State definitions
    CONSTANT FETCH1   : STD_LOGIC_VECTOR(2 DOWNTO 0) := "000";
    CONSTANT FETCH2   : STD_LOGIC_VECTOR(2 DOWNTO 0) := "001";
    CONSTANT DECODE   : STD_LOGIC_VECTOR(2 DOWNTO 0) := "010";
    CONSTANT EXECUTE  : STD_LOGIC_VECTOR(2 DOWNTO 0) := "011";
    CONSTANT WRTBACK  : STD_LOGIC_VECTOR(2 DOWNTO 0) := "100";
    
    -- Internal signals
    SIGNAL STATE     : STD_LOGIC_VECTOR(2 DOWNTO 0) := FETCH1;
    SIGNAL PC        : STD_LOGIC_VECTOR(11 DOWNTO 0) := x"064";
    SIGNAL IR        : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL AC        : STD_LOGIC_VECTOR(15 DOWNTO 0) := (others => '0');
    SIGNAL MEM_OUT   : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL ALU_OUT   : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL OpCode    : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL Address   : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL ALU_EN    : STD_LOGIC := '0';

BEGIN
    -- State machine process
    PROCESS(CLK, RESET)
    BEGIN
        IF RESET = '1' THEN
            STATE <= FETCH1;
            PC <= x"064";  -- Reset to 100
            AC <= (others => '0');
        ELSIF rising_edge(CLK) THEN
            CASE STATE IS
                WHEN FETCH1 =>
                    Address <= PC;  -- Set address to fetch instruction
                    STATE <= FETCH2;
                    ALU_EN <= '0';
                    
                WHEN FETCH2 =>
                    IR <= MEM_OUT;  -- Get instruction
                    PC <= STD_LOGIC_VECTOR(unsigned(PC) + 1);
                    STATE <= DECODE;
                    
                WHEN DECODE =>
                    OpCode <= IR(15 DOWNTO 12);
                    Address <= IR(11 DOWNTO 0);  -- Set address for data fetch
                    STATE <= EXECUTE;
                    
                WHEN EXECUTE =>
                    ALU_EN <= '1';
                    STATE <= WRTBACK;
                    
                WHEN WRTBACK =>
                    AC <= ALU_OUT;
                    ALU_EN <= '0';
                    STATE <= FETCH1;
                    
                WHEN OTHERS =>
                    STATE <= FETCH1;
            END CASE;
        END IF;
    END PROCESS;

    -- Connect ALU
    ALU_INSTANCE : ENTITY work.ALU
        PORT MAP(
            ALU_OP => OpCode,
            AC => AC,
            DR => MEM_OUT,
            EN => ALU_EN,
            ALU_OUT => ALU_OUT
        );

    -- Connect Memory (update port map)
    MEMORY_INSTANCE : ENTITY work.MEMORY
        PORT MAP(
            CLK => CLK,
            ADDR => Address,
            DATA_IN => DATA_IN,    -- Now matches 16-bit width
            DATA_OUT => MEM_OUT,
            MEM_WRITE => '0'
        );

    -- Output
    DATA_OUT <= AC;
        
END Behavioral;