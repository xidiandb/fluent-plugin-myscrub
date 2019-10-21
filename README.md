# fluent-plugin-myscrub

Fluent plugin for drop a event that include a invalid bytes in utf-8


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fluent-plugin-myscrub'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fluent-plugin-myscrub

## Configuration

```
<filter **>
  @type myscrub
</filter>
```

## Usage

```
<source>
  type forward
</source>

<filter **>
  type myscrub
</filter>

<match **>
  type stdout
</match>
```


