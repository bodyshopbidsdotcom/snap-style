# Snap-Style

Snapsheet shared style configurations.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'snap-style'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install snap-style
    
Also since this gem includes rubocop it should be removed from your projects Gemfile.

## Usage

#### Inheriting from the gem

In your project create a .rubocop.yml with the following configuration:

```ruby
inherit_gem:
  snap-style:
    - "rubocop/rubocop.yml"
```

To check your application against the new style configurations:

    $ rubocop
    
#### Overriding Styles

If you chose to add some exceptions in your .rubocop.yml be aware it will completely override the snap-style's defaults. It is something to be aware of - especially if you are just looking to modify a style rules.

For example:

```ruby
# In snap-style/rubocop.yml
AllCops:
  DisplayCopNames: true
  Exclude:
    - 'db/schema.rb'
    - 'config/**/*'
    - 'node_modules/**/*'
```

```ruby
# In your project's .rubocop.yml
inherit_gem:
  snap-style:
    - "rubocop/rubocop.yml"
    
AllCops:
  DisplayCopNames: true
  Exclude:
    - 'log/**/*'
```

It would seem you can just add another folder when in reality you are overwriting the original folder list. You will need to add prior elements from snap-style in order to have correct style.
