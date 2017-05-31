# Huge

A playground for all things huge.

## Setup

Development is supported on macOS.

### Environment

Huge uses:

[Homebrew](http://brew.sh) to manage environment dependencies.

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

[Carthage](https://github.com/Carthage/Carthage) to manage project dependencies.

```
brew update && brew install carthage
```

[SwiftLint](https://github.com/realm/SwiftLint) to lint project source.

```
brew install swiftlint
```

### Project

After cloning the project, prepare the project.

- Build the dependencies.

```
rake project:setup
```

Once set-up, run the project's tests to ensure that everything is currently okay.

```
rake project:test
```
