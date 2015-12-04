entity My_ckt_1 is
port (
	A, B, C: in bit_vector(3 downto 0);
	A_max, B_max, C_max: out bit
);
end My_ckt_1;

architecture arch of My_ckt_1 is
begin
	process(A, B, C)
	begin
		A_max <= '0';
		B_max <= '0';
		C_max <= '0';
		if (A>B and A>C)	then A_max <= '1';
		elsif (B>A and B>C) then B_max <= '1';
		elsif (C>A and C>B) then C_max <= '1';
		end if;
	end process;
end arch;