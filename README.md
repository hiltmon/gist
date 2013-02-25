# Gist

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'gist'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gist

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


Authentication
--------------
There are two ways to set GitHub user and password info:

Using env vars GITHUB_USER and GITHUB_PASSWORD:

```bash
$ export GITHUB_USER="your-github-username"
$ export GITHUB_PASSWORD="your-github-password"
$ gist ~/example
```

Or by having your git config set up with your GitHub username and password.

```bash
git config --global github.user "your-github-username"
git config --global github.password "your-github-password"


