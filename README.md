# Top Down Framework
## Overview
A plugin for making simple top down video games in the multi-platform game engine [Godot Engine](https://godotengine.org/)

## Core
### Worlds & Entities
The base of this design is the world entity system. Worlds will update all entities whenever a world update occurs. This can be on a player trigger (for turn-based games) or using the Godot update calls. An entity could be a player, AI, or an in-world object.

### Player
The player includes basic controls, customizable stats, and the ability to save/load the current player state.

### Inventory & Items
All entities have an inventory that can hold any items. These items can be given from entity to entity (like coins) or used by an entity (a potion).

### Stat System
The Stat System keeps track of what stats do what. You can use any of the base stats or create your own.
#### Included Stats:
- Health
- Damage
- Level

### State Stack Management
TDF also includes a simple state stack to use for state management. This implementation of a state manager is great because of its simplicity.

#### Included States
- TransitionState
  - Used to transition from one main state to another
  - Ex: A main menu -> gameplay
- DialogueState
  - Used to bring up a dialogue window with a message
- MenuState
  - Used for in simple in game menus


## Development Scope:
- ### Time (Weekly Sprints):
  - Planning Sprint
  - Dev Sprint 1
  - Dev Sprint 2
  - Cleanup Sprint
- ### Budget:
  - $0 (we broke)
- ### Team:
  - [Maiko Tuitupou](https://www.github.com/maikotui)

## Special Thanks
I based this plugin layout off of [Godot Escoria](https://github.com/godot-escoria).