# Rojo Project Template

A ready-to-use Roblox project template built around Rojo.

The goal of the project is to give you a clean, source-controlled Roblox setup that feels like a normal codebase instead of editing everything directly in Studio. It is designed to be cloned and used as a starting point for new Roblox games without having to manually configure the project structure each time.

## Prerequisites

- [Git](https://git-scm.com/) to clone and manage the project.
- [EmberPM](https://emberpm.dev/docs/installation) to manage the project's tools and packages.

## Getting started

Install tools needed with `Ember`:

```bash
embr i
```

Generate `game.rbxlx` and auto launch the file:

```bash
lute build
```
---

If you do something in the studio (e.g. created a model, etc.), make sure to run this command to sync it back to your project source:

```bash
lute syncback
```

Rojo automatically sync files created or edited in the project source. 
