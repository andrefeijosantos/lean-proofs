import Types.Booleans

namespace Types.BooleansTest

open Booleans

-- Boolean constructors
#check Boolean.True
#check Boolean.False


-- Test neg
#eval neg Boolean.True
#eval neg Boolean.False

-- Test and
#eval and Boolean.True Boolean.True
#eval and Boolean.True Boolean.False
#eval and Boolean.False Boolean.True
#eval and Boolean.False Boolean.False

-- Test or
#eval or Boolean.True Boolean.True
#eval or Boolean.True Boolean.False
#eval or Boolean.False Boolean.True
#eval or Boolean.False Boolean.False

-- Test xor
#eval xor Boolean.True Boolean.True
#eval xor Boolean.True Boolean.False
#eval xor Boolean.False Boolean.True
#eval xor Boolean.False Boolean.False

-- Test nand
#eval nand Boolean.True Boolean.True
#eval nand Boolean.True Boolean.False
#eval nand Boolean.False Boolean.True
#eval nand Boolean.False Boolean.False

-- Test nor
#eval nor Boolean.True Boolean.True
#eval nor Boolean.True Boolean.False
#eval nor Boolean.False Boolean.True
#eval nor Boolean.False Boolean.False

-- Test xnor
#eval xnor Boolean.True Boolean.True
#eval xnor Boolean.True Boolean.False
#eval xnor Boolean.False Boolean.True
#eval xnor Boolean.False Boolean.False

-- Test implies
#eval implies Boolean.True Boolean.True
#eval implies Boolean.True Boolean.False
#eval implies Boolean.False Boolean.True
#eval implies Boolean.False Boolean.False

-- Test iff
#eval iff Boolean.True Boolean.True
#eval iff Boolean.True Boolean.False
#eval iff Boolean.False Boolean.True
#eval iff Boolean.False Boolean.False


-- Tatutology: (p → q) v (q → p)
def Pt : Boolean := Boolean.True
def Qt : Boolean := Boolean.True

def Pf : Boolean := Boolean.False
def Qf : Boolean := Boolean.False

#eval or (implies Pt Qt) (implies Qt Pt)
#eval or (implies Pf Qf) (implies Qf Pf)
#eval or (implies Pf Qt) (implies Qt Pf)
#eval or (implies Pt Qf) (implies Qf Pt)

end Types.BooleansTest
