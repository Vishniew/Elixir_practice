defmodule MyFile do
    def write_file(file_name,text) do
        File.write!(file_name, text)
    end

    def append_file(file_name,text) do
        File.write!(file_name, "\n#{text}", [:append])
    end

    def read_file(file_name) do
        IO.puts(File.read!(file_name))
    end
end
