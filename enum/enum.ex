defmodule MyEnum do
    def mapping_double(list) do
        Enum.map(list,fn(x) -> x*2 end)
    end

    def reducing(list) do
        Enum.reduce(list,1,&(&1*&2))    #&1 - collection, &2 - accumulator, &3 - fn
    end

    def capture_arg(list) do
        require Integer                     # Integer is macro
        Enum.map(list,&Integer.is_even/1)
    end
end
