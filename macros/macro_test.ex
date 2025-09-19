defmodule MacroTest do
    @moduledoc "This module demonstrates requiring a macro."

    # We must require MyMacro to use its macros
    require MyMacro

    #Double the number 
    def double_num(num) do
        MyMacro.double(num)
    end
end
