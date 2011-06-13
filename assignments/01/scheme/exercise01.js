// Write a JS function that takes an integer argument N and creates an array
// containg the integers from 1 to N

function enumerate_array (n) {
    result = new Array ();

    for(var i = 1; 1<= n; i++) {
	result.push(i);

    }


    // do stuff
    return result;
}

var x = enumerate_array(4); // x =[1,2,3,4]
var x = enumerate_array(5); // x =[1,2,3,4,5]
                            // x =[1,.,.,.,.,N] 
