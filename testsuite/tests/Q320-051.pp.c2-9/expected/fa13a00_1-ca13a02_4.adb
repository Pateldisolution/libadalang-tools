--==================================================================--

-- Context clauses required for visibility needed by separate subunit.

with Fa13a00_0;                   -- Building Manager

with Fa13a00_1.Fa13a00_2;         -- Floor Calculation (private)

with Fa13a00_1.Fa13a00_3;         -- Move Elevator

use Fa13a00_0;

package body Fa13a00_1.Ca13a02_4 is

   function Call_Elevator (D : Direction) return Light is separate;

end Fa13a00_1.Ca13a02_4;