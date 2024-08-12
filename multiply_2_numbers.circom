pragma circom 2.1.6;

template Multiply() {

    signal input a;
    signal input b;

    signal output c;

    c <== a * b;

 }

 component main = Multiply();

/* INPUT = {
    "a": "2",
    "b": "3"
} */