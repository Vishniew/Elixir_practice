    defprotocol Size do
        @fallback_to_any true
        @doc "Calculates the size of data structure"
        def size(data)
    end

    defimpl Size, for: BitString do
        def size(string), do: byte_size(string)
    end

    defimpl Size, for: Map do
        def size(map), do: map_size(map)
    end

    defimpl Size, for: Tuple do
        def size(tuple), do: tuple_size(tuple)
    end

    defimpl Size, for: Any do
        def size(_), do: "Type not defined"
    end