defmodule MyMacro do
    @moduledoc "This module defines some simple macros."

    # Define a macro that doubles a number
    defmacro double(x) do
        quote do
            2 * unquote(x)
        end
    end
end