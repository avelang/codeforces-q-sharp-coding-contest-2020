namespace Solution {
    open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Measurement;
        open Microsoft.Quantum.Arrays;
        open Microsoft.Quantum.Canon;
        open Microsoft.Quantum.Diagnostics;
	
    operation SolveB2 (inputs : Qubit[], output : Qubit) : Unit is Adj+Ctl {
        using (q = Qubit()) { 
            mutable num = 0;
            let P = Length(inputs);
            for (i in 0..P-1) {
                // sum += 10*sum
            }
            // if(sum%3==0)
            //  X(output)
        }
    }
}