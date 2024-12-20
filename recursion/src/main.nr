use std::hash::poseidon;
use std::verify_proof;

fn main(
    verification_key: [Field; 114],
    proof: [Field; 93],
    public_inputs: [Field; 1],
    key_hash: Field,
) {
    for _ in 0..250 {
        let _ = poseidon::bn254::hash_1([1]);
    }

    verify_proof(
        verification_key.as_slice(),
        proof.as_slice(),
        public_inputs.as_slice(),
        key_hash,
    );
}
