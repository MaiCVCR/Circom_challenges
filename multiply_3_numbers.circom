pragma circom 2.1.6;

template Multiply() {

    signal input a;
    signal input b;
    signal input c;

    signal d;
    
    signal output result;

    d <== a * b;
    result <== d * c;

}

component main = Multiply();

/* INPUT = {
        "a": 3,
        "b": 5,
        "c": 2
    }
*/