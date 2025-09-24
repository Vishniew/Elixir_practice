defmodule Person do
    @moduledoc "Person with default values for name & age."

    #define the struct with default values
    defstruct name: "Unknown", age: :Not_defined
end

defmodule Example do
    def run do
        #create instances of the Person struct
        lewis = %Person{name: "Lewis Hamilton", age: 41}
        max = %Person{name: "Max Verstappen"} #age defaults to 0

        #Accessing struct fields 
        IO.puts("Lewis's name: #{lewis.name}")
        IO.puts("Lewis's age: #{lewis.age}")

        IO.puts("Max's name: #{max.name}")
        IO.puts("Max's age: #{max.age}")

        #Pattern matching with structs
        %Person{name: n} = lewis
        IO.puts("Pattern matched name from Lewis: #{n}")
    end
end


defmodule Folder do
    defstruct name: "new folder", files_info: [], path: nil
end

