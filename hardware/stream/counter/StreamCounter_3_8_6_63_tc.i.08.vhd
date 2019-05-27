-- Copyright 2018 Delft University of Technology
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.StreamSim_pkg.all;
use work.UtilInt_pkg.all;

entity StreamCounter_3_8_6_63_tc is
end StreamCounter_3_8_6_63_tc;

architecture TestCase of StreamCounter_3_8_6_63_tc is

  constant IN_COUNT_WIDTH       : positive := 3;
  constant IN_COUNT_MAX         : positive := 8;
  constant OUT_COUNT_WIDTH      : positive := 6;
  constant OUT_COUNT_MAX        : positive := 63;

  constant OUT_COUNT_MAX_CLAMP  : natural := imin(OUT_COUNT_MAX, 2**OUT_COUNT_WIDTH - 1);

  signal clk                    : std_logic;
  signal reset                  : std_logic;

begin

  tv: entity work.StreamCounter_tv
    generic map (
      IN_COUNT_WIDTH            => IN_COUNT_WIDTH,
      IN_COUNT_MAX              => IN_COUNT_MAX,
      OUT_COUNT_WIDTH           => OUT_COUNT_WIDTH,
      OUT_COUNT_MAX             => OUT_COUNT_MAX,
      OUT_COUNT_MAX_CLAMP       => OUT_COUNT_MAX_CLAMP
    )
    port map (
      clk                       => clk,
      reset                     => reset
    );

  tb: entity work.StreamCounter_tb
    generic map (
      IN_COUNT_WIDTH            => IN_COUNT_WIDTH,
      IN_COUNT_MAX              => IN_COUNT_MAX,
      OUT_COUNT_WIDTH           => OUT_COUNT_WIDTH,
      OUT_COUNT_MAX             => OUT_COUNT_MAX,
      OUT_COUNT_MAX_CLAMP       => OUT_COUNT_MAX_CLAMP
    )
    port map (
      clk                       => clk,
      reset                     => reset
    );

end TestCase;
