defmodule Alias do
    alias NestedModules.{StringHelper,MathHelper}

    def greet(name) do
        "Hello " <> StrHlpr.capitalize(name)
    end

    def prod(x,y) do
        MathHelper.mul(x,y)
    end
end