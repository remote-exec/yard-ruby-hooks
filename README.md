Documentation helper for `define_hook` from
[ruby-hooks](https://github.com/remote-exec/ruby-hooks)

Adds support for automatic detection of `define_hook`, sets `@return`
type to `Hook`, allows `@notify_param` documentation tag to describe
parameters called by `Hook#notify_objects`.

## Documenting the hooks

`ruby-hooks` comes with a support gem that allows to write `yard` docs
for the hooks.

To automatically use the plugin add `--plugin ruby-hooks` to projects
root directory `.yardopts` file.

Example documentation:

```ruby
# called before executing command
# @notify_param object [Object] the target that invoked the method
# @notify_param stdout [String] standard output of the command, can be nil
# @notify_param stderr [String] standard error output of the command, can be nil
define_hook :on_execute_data
```

All hooks will be listed in `Hooks` section of the documentation, and
the generated hook description will look roughly like this:

```markdown
` - (Hook) on_execute_data`

called before executing command

**Returns:**

- (`Hook`) — the Observable instance

Hook#notify_objects block params:

- **object** (`Object`) — the target that invoked the method
- **stdout** (`String`) — standard output of the command, can be nil
- **stderr** (`String`) — standard error output of the command, can be nil
```
