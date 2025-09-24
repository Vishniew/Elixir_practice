defmodule MathHelper do
    @type point :: {integer, integer}

    @spec distance(point, point) :: float
    def distance({x1, y1}, {x2, y2}) do
        :math.sqrt(:math.pow(x2-x1, 2) + :math.pow(y2-y1, 2))
    end
end

defmodule StringHelper do
    @type str :: String.t()                    #To declare our own type
    @spec palindrome?(str) :: boolean       #Specify the function args type and return type

    def palindrome?(string) do
        String.reverse(string) == string
    end
end

defmodule Population do
    @type country_with_population :: {String.t(), integer}

    @spec print_country(country_with_population) :: String.t()
    def print_country({country, population}) do
        "#{country} has #{population} people"
    end  
end

