var each = function(array, func) {
  for (var i=0; i < array.length; i++) {
    func(array[i]);
  }
};

var map = function(array, func) {
  var results = [];

  for (var i=0; i < array.length; i++) {
    results.push(func(array[i]));
  }

  return results;
};

var max = function(array) {
  var biggest = array[0];

  for (var i=0; i < array.length; i++) {
    if (array[i] > biggest) {
      biggest = array[i];
    }
  }

  return biggest;
};

var select = function(array, func) {
	var results = [];

	for (var i = 0; i < array.length; i++) {
		if (func(array[i])) {
			results.push(array[i]);
		};
	};
	return results;
};

// functions below are functions created to be used in the functions above

var findR = function(str) {
	if ( str.indexOf("r") > -1 ) {
		return str
	};
};

var multFive = function(n) {
	return n % 5 === 0
};

var lengthThree = function(a) {
	if (a.length < 3) { return a };
}

var schools = ["Berkeley", "Notre Dame", "Chicago", "Stanford", "Tulane"];

var numbers = [4,10,39,105,73,20,15];

var grid = [ [0,1,0,0],
             [1,0,1],
             [1,1,0,0,1],
             [0,1],
             [1,0,0,0] ];
      
console.log(select(schools, findR));
console.log(select(numbers, multFive));
console.log(select(grid, lengthThree));