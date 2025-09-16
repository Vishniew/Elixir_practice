defmodule String_Helper do
    def is_palindrome?(string) do
        String.reverse(string) == string
    end

    def to_upper(string) do
        String.upcase(string)
    end

    def to_lower(string) do
        String.lowcase(string)
    end
    
end