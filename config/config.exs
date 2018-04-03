# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure your application as:
#
#     config :black_box, key: :value
#
# and access this configuration in your application as:
#
#     Application.get_env(:black_box, :key)
#
# You can also configure a 3rd-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"

config :black_box,
  api_key: "80ed2c8f18e049a91cc97666b883fa02",
  api_signature:
    "v5YaFS7QlSVrqsBA9+x5nAI4J7UkJ6SDbn0MPhup890ewv0EAwh0R9JPjvS8mQ+WYV57rAKNzJ5mkd37y54sEkfTqoxjP+oovjzYZW52kzycqE0OYyGsSetTUoo9wolmqP7ttVP1j63w/oXHa85B/2ee2icGDIv+GrTrW7d4qXA="
