namespace Solution {
    open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Measurement;
	
    operation SolveA2 (unitary : (Qubit[] => Unit is Adj+Ctl)) : Int {
        using (q = Qubit[2]) { 
            X(q[0]);
            unitary(q);
            let ret_10_q0 = M(q[0]);
            let ret_10_q1 = M(q[1]);
            ResetAll(q);

            X(q[0]);
            X(q[1]);
            unitary(q);
            let ret_11_q0 = M(q[0]);
            let ret_11_q1 = M(q[1]);
            ResetAll(q);

            mutable result = -1;
            if(ret_10_q0 == One and ret_10_q1 == Zero and ret_11_q0 == One and ret_11_q1 == One)
            {
                set result = 0; 
			}
            if(ret_11_q0 == One and ret_11_q1 == Zero)
            {
                set result = 1;     
			}
            if(ret_11_q0 == Zero and ret_11_q1 == One)
            {
                set result = 2;
			}
            if(ret_10_q0 == Zero and ret_10_q1 == One)
            {
                set result = 3;     
			}
            return result;
        }
    }
}