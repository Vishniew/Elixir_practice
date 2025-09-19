defmodule StringHelper do
    def palindrome?(string) when is_bitstring(string) do
        formatted_string = string
            |> String.trim()
            |> String.downcase()
        
        formatted_string |> String.reverse() == formatted_string
    end

    def palindrome?(_string) do
        {:error, :unsupported_type}
    end
end