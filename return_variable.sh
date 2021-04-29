#!/bin/bash

return_variable()
{
  local x=7
  return $x
}


return_variable
y=$?
echo "The value of y is: $y"

