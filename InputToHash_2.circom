pragma circom 2.1.6;

include "circomlib/poseidon.circom";

template InputToHash(){

    signal input a;
    signal input b;
    signal output hash;

    component hasher = Poseidon(2);
    hasher.inputs[0] <== a;
    hasher.inputs[1] <== b;
    hash <== hasher.out;

}

component main = InputToHash();

/*
    INPUT = {
        "a": "12345",
        "b": "12345"
    }

 */