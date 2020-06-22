namespace Solution {
    open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Measurement;
        open Microsoft.Quantum.Arrays;
        open Microsoft.Quantum.Canon;
        open Microsoft.Quantum.Diagnostics;
	
    operation SolveB1 (inputs : Qubit[], output : Qubit) : Unit is Adj+Ctl {
        using (q = Qubit()) { 
            mutable ones = 0;
            mutable zeroes = 0;
            let P = Length(inputs);
            for (i in IndexRange(inputs)) {
                X(inputs[i]);
                // if(input[i] == one? ones++ oterwise zeroes++;
            }
            // if ones == zeroes == p/2
                // X(q);
            // CNOT(q,output);
        }
    }
}