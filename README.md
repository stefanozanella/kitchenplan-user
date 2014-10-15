# kitchenplan-user Cookbook

A cookbook meant to be used in kitchenplan configurations so that users can configure their preferred shell just by setting an appropriate attribute.

## Usage

Just add this line to your `Cheffile`:

```
cookbook "kitchenplan-user"
```

Then include the default recipe in your `<username>.yml` config file (or `default.yml` if that suits better):

```
recipes:
  - kitchenplan-user::default
```

This will read the `shell` attribute that should be set in one of the yml files in your kitchenplan repo, according to your use case:
```
attributes:
  kitchenplan-user:
    shell: "/bin/zsh"
```
By default, the value of this attribute is set to `/bin/bash`.

This will in turn set ZSH as the login shell for the user under which Kitchenplan is running, i.e. `node['current_user']`.
