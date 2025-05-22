// Creates an array out of the values at index 'index' for each array in 'arrays'
#let deconstruct(index: 0, arrays) = {
  let return-array = ()
  for array in arrays {
    return-array.push(array.at(index))
  }
  return return-array
}