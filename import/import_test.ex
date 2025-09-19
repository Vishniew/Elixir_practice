defmodule ImportTest do
    import Enum, only: [map: 2]

    def double_list(list) do
        map(list,fn x->x*2 end)
    end

end

