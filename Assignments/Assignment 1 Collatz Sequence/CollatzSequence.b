import "io"

let start() be
{
  let input, remainder, length = 1;
  while true do
  {
    out("Please enter an integer greater than 0 or type \"0\" to close the program\n");
    input := inno(); //reads input as an integer
    test input > 0 then
    {
     length := 1;
     while input <> 1 do
     {
      length +:= 1;
      remainder := input rem 2;
      out("%d, ", input);
      test remainder = 0 then
      {
       input /:= 2;
      }
      else 
      {
       input := input * 3 + 1;
      }
     }
     test input = 1 then 
     {
      out("1   length: %d\n", length);
     }
     else
     {
      out("%d, ", input);
     }
    }
    else test input = 0 then
    {
     out("Exiting Program\n");
     finish;
    }
    else
    {

    } 
  }  
  finish;
}
