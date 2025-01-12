	component soc_simple is
		port (
			clk_clk       : in  std_logic                    := 'X'; -- clk
			leds_export   : out std_logic_vector(7 downto 0);        -- export
			locked_export : out std_logic;                           -- export
			reset_reset_n : in  std_logic                    := 'X'  -- reset_n
		);
	end component soc_simple;

	u0 : component soc_simple
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --    clk.clk
			leds_export   => CONNECTED_TO_leds_export,   --   leds.export
			locked_export => CONNECTED_TO_locked_export, -- locked.export
			reset_reset_n => CONNECTED_TO_reset_reset_n  --  reset.reset_n
		);

