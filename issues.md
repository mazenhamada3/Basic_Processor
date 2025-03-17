1. Keep entities in there own file, otherwise have to reimport libraries above each entity decleration
2. result = (others => '0') ... just no... result = std_logic_vector(31 downto 0) := '0'
3. BRO MEMORY NEEDS A CLOCK
4. PC is what controls memory address.. not a mem_addr (aka not some sort of input)
6. 5 comes before 6
5. idk what even is stall counter so i removed it
7. You have no Fetch nor decode logic..
8. Control unit is pointless if you are gonna use high level statements without a proper circuit level design
9. ALU needs enable
10. State machine weren't configured correctly