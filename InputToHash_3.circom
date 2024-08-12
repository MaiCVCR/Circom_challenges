pragma circom 2.1.6;

include "circomlib/poseidon.circom";

template InputToHash(){

    signal input a[5];
    signal output hash;

    component hasher = Poseidon(5);

    for(var i = 0; i < 5; i++){
        hasher.inputs[i] <== a[i];
    }

    hash <== hasher.out;

}

component main = InputToHash();

/*
    INPUT = {
        "a": ["12345", "12345", "12345", "12345", "12345"]
    }

 */
