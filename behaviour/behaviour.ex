defmodule Messenger do
    @callback send_msg(String.t()) :: :ok
end

defmodule EmailMessenger do
    @behaviour Messenger

    def send_msg(text) do
        IO.puts("Sending Email: #{text}")
        :ok
    end
end

defmodule SmsMessenger do
    @behaviour Messenger

    def send_msg(text) do
        IO.puts("Sending SMS: #{text}")
        :ok
    end
end






