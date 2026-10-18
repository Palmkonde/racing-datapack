# Rail Race Leaderboard

An F1 style leaderboard for minecart races. Shows race order, current lap and gap to the leader in the sidebar on the right side of the screen.

```
Race
Emerald    Lap 2/3  Leader
Diamond    Lap 2/3  +1.4s
Gold       Lap 1/3  +6.2s
```

## Installation

Requires Minecraft Java Edition 26.1 to 26.1.2.

1. Copy the `race` folder into `.minecraft/saves/<your world>/datapacks/`
2. Open the world and run `/reload`
3. You should see `Race datapack loaded` in chat

If nothing appears, run `/datapack list` and check that `file/race` is enabled.

## Getting started

### 1. Configure the race

Edit `data/race/function/config.mcfunction`:

```
scoreboard players set #laps race_clock 3
scoreboard players set #per_lap race_clock 4
```

`#per_lap` counts the start/finish line as one checkpoint.

### 2. Add racers

Edit `data/race/function/racers.mcfunction`, one line per racer:

```
function race:add {racer:"diamond",name:"Diamond",color:"aqua"}
function race:add {racer:"emerald",name:"Emerald",color:"green"}
```

- `racer`: internal id, used by the checkpoint command blocks
- `name`, `color`: what the sidebar shows

Run `/reload` after editing either file.

### 3. Build checkpoints

At each checkpoint, place a detector rail in every lane with a command block directly under it:

- Type: Impulse, Needs Redstone
- Command: `function race:checkpoint {racer:"diamond"}` (use that lane's racer id)

Rules:
- All detector rails of one checkpoint must sit on the same line across the lanes
- The start/finish line is also a checkpoint
- Carts start just after the start/finish line

### 4. Start button

Place a button on a command block (Impulse, Needs Redstone) with:

```
function race:start
```

## Usage

| Command | What it does |
|---|---|
| `/function race:start` | Reset the leaderboard and start the clock |
| `/function race:restart` | Reset the leaderboard and stop the clock |
| `/function race:info` | Show current laps and checkpoints per lap |
| `/function race:settings {laps:3,per_lap:4}` | Change settings until the next `/reload` |
| `/function race:debug` | Show clock and racer values in chat |

### Reading the sidebar

| Text | Meaning |
|---|---|
| `Ready` | Race not started for this racer yet |
| `Lap 2/3  Leader` | First at the latest checkpoint |
| `Lap 2/3  +1.4s` | Time behind the leader at the same checkpoint |
| `Finished  Winner` | First to finish |
| `Finished  +3.2s` | Finished, time behind the winner |

The winner is also announced in chat.

### Notes

- Settings apply at the next start
- Gaps update only when a racer passes a checkpoint, like F1 timing points
- The clock keeps running after everyone finishes until the next start or restart
