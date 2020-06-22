namespace Solution {
    open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Measurement;
	
    operation SolveA1 (unitary : (Qubit[] => Unit is Adj+Ctl)) : Int {
        using (q = Qubit[2]) { 
            X(q[0]);
            unitary(q);
            let ret = M(q[1]) == One ? 0 | 1;
            ResetAll(q);
            return ret;
        }
    }
}