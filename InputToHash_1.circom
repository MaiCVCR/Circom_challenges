pragma circom 2.1.6;

include "circomlib/poseidon.circom";

template InputToHash(){

    signal input a;
    signal output hash;

    component hasher = Poseidon(1);
    
    hasher.inputs[0] <== a;
    hash <== hasher.out;

}

component main = InputToHash();

/*
    INPUT = {
        "a": "12345"
    }

 */