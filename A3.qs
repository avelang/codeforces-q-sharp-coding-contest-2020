namespace Solution {
    open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Measurement;
	
    // 
    operation SolveA3 (unitary : (Qubit => Unit is Adj+Ctl)) : Int {
        using (q = Qubit()) { 
        unitary(q); 
        X(q);
        let ret = M(q) == Zero ? 1 | 0;
        Reset(q);
        return ret;
        }
    }
}