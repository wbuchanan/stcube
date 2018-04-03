mata:

class Cartesian {

	public:
	transmorphic	matrix		makeProduct()
	
	private:
	real			scalar		allocateRows(), allocateColumns()
	real			rowvector	getSegmentLengths()
	
	
}

real rowvector Cartesian::getSegmentLengths(transmorphic rowvector vars) {
	
	// Declare iterator variable for loop below
	real scalar elements
	
	// Declare variable to store the results
	real rowvector segLengths
	
	// Loop over the elements for the cartesian product
	for (elements = 1; elements <= cols(vars); elements++) {
	
		// Get the lengths for each of the segments
		segLengths[1, elements] = rows(uniqrows())
		
	} // End Loop over the segments

	// Returns the result variable
	return(segLengths)
	
} // End of method definition to get the segment lengths

// Function to compute the number of for the cartesian product
real scalar Cartesian::allocateRows(real rowvector seglengths) {
	
	// Declares variables needed for function
	real scalar cartesianProductRows, i
	
	// Iterate over the lengths of the individual segments
	for (i = 1; i <= cols(seglengths); i++) {
	
		// For the first iteration take the length + 1 of the first element
		if (i == 1) cartesianProductRows = seglengths[1, 1] + 1
		
		// For all other elements take the product of the current number of rows
		// to be allocated and the element length + 1 
		else cartesianProductRows = (seglengths[1, i] + 1) * cartesianProductRows
		
	} // End of Loop over the elements
	
	// Returns the number of rows needed by the cartesian product
	return(cartesianProductRows)
	
} // End of method definition to find the number of rows needed 

x = ("Some" \ "Other" \ "Datum")
y = ("This" \ "That" \ "The" \ "Other" \ "Thing")
z = (rows(x), rows(y))
joinLength(z)

end
