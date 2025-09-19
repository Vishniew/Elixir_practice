defguard is_string(string) is_bitstring(string) 
defmodule StringHelper do
    def palindrome?(string) when is_bitstring(string) do
        String.reverse(string) == string
    end

    def palindrome?(_string), do: {:error, :unsupported_type}