/*
To start creating our Zombie army, let's create a base contract called ZombiesContract.

*/

#![no_std]

multiversx_sc::imports!();
multiversx_sc::derive_imports!();

#[multiversx_sc::contract]
pub trait ZombiesContract {
  #[init]
  fn init(&self) {}

  #[upgrade]
  fn upgrade(&self) {}
}




/*
 A contract is the fundamental building block of MultiversX applications — all variables and functions belong to a contract, and this will be the starting point of all your projects.

 #![no_std]

multiversx_sc::imports!();

#[multiversx_sc::contract]
pub trait HelloWorld {
        #[init]
        fn init(&self) {}

        #[upgrade]
        fn upgrade(&self) {}
}

The first line of code #[multiversx_sc::contract] is a procedural macro that defines the HelloWorld trait as a contract. 
You will see a pattern of using procedural macros, since these are the ones that take care of optimizing the code you write. 
Think of them for now as some additional annotations that transform basic Rust elements into smart contract ones.

Every contract has a mandatory function init, marked with #[init]. Here should be put all the presets of the contract. 
Besides the init function, contracts also have an upgrade marked with #[upgrade] used to make certain settings when we desire to upgrade a contract.

Basic syntax

A MultiversX contract starts with #[no_std] to avoid importing Rust standard library and bloating smart contract size

The next step is importing the MultiversX Rust library, done by calling the macros multiversx_sc::imports!(); and multiversx_sc::derive_imports!();

*/
