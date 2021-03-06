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

library work;
use work.Stream_pkg.all;
use work.ClockGen_pkg.all;
use work.StreamSource_pkg.all;
use work.StreamSink_pkg.all;

entity StreamPRNG_12_tc is
end StreamPRNG_12_tc;

architecture TestBench of StreamPRNG_12_tc is
begin

  tv: entity work.StreamPRNG_tv
    generic map (
      DATA_WIDTH                => 12
    );

  tb: entity work.StreamPRNG_tb
    generic map (
      DATA_WIDTH                => 12
    );

end TestBench;

