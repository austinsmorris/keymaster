[![Stories in Ready](https://badge.waffle.io/austinsmorris/keymaster.png?label=ready&title=Ready)](https://waffle.io/austinsmorris/keymaster)
# Keymaster

An opinionated OAuth 2.0 server for Elixir projects.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add keymaster to your list of dependencies in `mix.exs`:

        def deps do
          [{:keymaster, "~> 0.0.1"}]
        end

  2. Ensure keymaster is started before your application:

        def application do
          [applications: [:keymaster]]
        end
