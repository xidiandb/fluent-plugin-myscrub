# fluent-plugin-myscrub [![Gem Version](https://badge.fury.io/rb/fluent-plugin-myscrub.svg)](https://rubygems.org/gems/fluent-plugin-myscrub)

Fluent plugin for drop a event that include a invalid bytes in utf-8


## Installation


Install it yourself as:

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


