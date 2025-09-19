defmodule Arity do

    @moduledoc """
        This module contains the arity example functions.
        """
    
    @default_mark "!"

    @doc "Emphasizes a phrase by default marks."
    def emphasis(phrase) do
        
        emphasis(phrase, 3) # default 3 exclamation marks
    end

    
    @doc "Emphasizes a phrase by given number of marks."
    def emphasis(phrase,no_of_exclamation_marks) do
        
        upcased_phrase = String.upcase(phrase)
        exclamation_marks = String.duplicate(@default_mark, no_of_exclamation_marks)
        "#{upcased_phrase}#{exclamation_marks}"
    end

    @doc """
    Returns the emphasized phrase.

    Special cases:
    - If the number of marks is 0, returns "Invalid module".
    """
    def default_args(phrase,no_of_exclamation_marks \\ 3)

    def default_args(_phrase,0) do
        "Invalid module"
    end

    def default_args(phrase,no_of_exclamation_marks) do
        upcased_phrase = String.upcase(phrase)
        exclamation_marks = String.duplicate(@default_mark,no_of_exclamation_marks)
        "#{upcased_phrase}#{exclamation_marks}"
    end

end