# BlackBox

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `black_box` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:black_box, "~> 0.1.0"}
  ]
end
```

Add your API keys to your config
```elixir
config :black_box,
  api_key: "",
  api_signature: ""
```

### Usage

#### create new message
```elixir
BlackBox.Message.new("+254723XXXXXX", "Message 1.", "Shortcode", "Keyword")
```
You can create a list of `BlackBox.Message` and then `build_messages` so that you can send them to the API.
>send a single message

```elixir
alias BlackBox.Message

Message.new("+254723XXXXXX", "Message 1.", "Shortcode", "Keyword")
|> Message.build_messages()
|> Message.send()
```

>sending multiple messages

```elixir
alias BlackBox.Message

messages =
  |> Enum.map(fn sms ->
    Message.new(sms.eg_number, sms.eg_message, sms.eg_shortcode, sms.eg_keywor)
   end)
  |> Message.build_messages()
  |> Message.send()
```

>The expected response
```
{:ok, map, HTTPotion.Response.t()} | {integer, any, HTTPotion.Response.t()}
```



Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/black_box](https://hexdocs.pm/black_box).
