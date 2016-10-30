# Issues

**Command line app that takes a github repo, user and optional count, and
returns the applicable issues.**

## Installation

1. Clone the repo 
```elixir
$ git clone https://github.com/jasonpilz/issues.git
$ cd issues
```

2. Run the executable from the project directory
```elixir
$ ./issues elixir-lang elixir
```

## Usage
```elixir
usage: issues <user> <project/repo> [ count | 4 ]

example: 
$ issues elixir-lang elixir
numb | created_at           | title
-----+----------------------+-----------------------------------------
3254 | 2015-04-07T22:12:11Z | Do not allow tuple.foo calls anymore
4082 | 2015-12-17T08:20:09Z | Add make compiler
4171 | 2016-01-07T20:44:36Z | Suggesting the correct patterns to match
4617 | 2016-05-13T06:51:53Z | Support Erlang 19 new features
```

## Development

**Run tests:**
```elixir
mix test
```