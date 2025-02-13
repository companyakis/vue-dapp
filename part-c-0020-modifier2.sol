/*
The order of modifiers in a Solidity function is crucial and impacts the function's execution. Modifiers are applied in the order they are listed in the function declaration

*/

modifier firstModifier() {
  
    _;
}

modifier secondModifier() {
   
    _;
}

function sampleFunction() firstModifier secondModifier {
   
}
