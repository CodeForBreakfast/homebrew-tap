# CodeForBreakfast Homebrew tap

Homebrew formulae for CodeForBreakfast projects. One formula per project, in
`Formula/`.

```sh
brew install codeforbreakfast/tap/<formula>
```

That taps and installs in one command. `brew tap codeforbreakfast/tap` adds the
tap on its own.

## Formulae

- [`bdi`](https://github.com/CodeForBreakfast/beady-eye) — a tree of work in
  flight, annotated with the live agents working it.

## The default branch is not protected

This is deliberate. Leave it that way.

A project publishes here by having its release workflow regenerate its formula
and push it to the default branch unattended, and a protected branch refuses
that push. A project that wants its formula reviewed reviews it before its
release pushes it here.
