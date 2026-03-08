# 100ToKill

#### Video Demo: https://youtu.be/Q0nFfwY3fr0

**Final Project**  

---

## Overview

100ToKill is a top-down action game where the player must defeat 100 orcs within a time limit of two minutes. The player controls a character that can move freely around the map, aim using the mouse, and shoot projectiles to eliminate enemies. The objective is simple but challenging: survive the constant pressure from enemies and reach 100 kills before the timer reaches zero.

The game focuses on fast-paced gameplay, quick reactions, and strategic movement. Because enemies continuously chase the player, the player must stay mobile, avoid damage, and maintain accuracy while shooting.

---

## Controls
* W / A / S / D – Move the player
* Mouse – Aim the weapon
* Left Mouse Button – Shoot projectiles toward the mouse cursor

These controls were chosen to provide a familiar control scheme commonly used in PC action games. 

---

## Gameplay Mechanics
### Player

- The player character can move freely around the map while avoiding walls and obstacles. The player has a health system represented by HP (health points). When the player takes damage, a visual hit flash briefly appears to provide immediate feedback.

Movement and positioning are important because enemies constantly chase the player. Standing still or moving carelessly can quickly lead to losing health. 

### Projectiles

- The player attacks enemies by shooting projectiles toward the mouse cursor. Each projectile travels in the direction the player is aiming.

Projectiles are destroyed when they collide with walls or enemies. This prevents the map from filling with unused projectiles and keeps the gameplay clean and efficient.

### Enemies (Orcs)

- Enemies are represented by orcs that constantly move toward the player. Their behavior is intentionally simple: they always attempt to chase and damage the player on contact.

Each enemy has its own health points (HP). When an enemy’s HP reaches zero, it is destroyed and a death sound is played. After an enemy dies, another enemy respawns randomly somewhere on the map to keep the gameplay continuous and maintain pressure on the player.

### Scoring

- The game tracks the number of defeated enemies using a kill counter displayed on the screen.

* Kills Counter – Displays the total number of enemies defeated
* Win Condition – Kill 100 orcs before the timer reaches 0
* Lose Condition – Fail to reach 100 kills before the timer expires

This system creates a time-based challenge that encourages aggressive and efficient gameplay.

---

## Assets

- Sprites: Hand-drawn by 'Rogerio Rodrigues' in Aseprite  
- Sounds:  
	`snd_shoot` custom sound recorded by Rogerio Rodrigues 
	`snd_enemy_die` – custom sound recorded by Rogerio Rodrigues

---

## Design Decisions

- One of the main design goals of this project was to create a simple but engaging action game with clear objectives and fast gameplay. Instead of complex enemy behavior, enemies use a direct chasing mechanic that creates constant tension and forces the player to keep moving.

The respawn system ensures that enemies are always present on the map, preventing empty moments and maintaining gameplay intensity. This design keeps the player focused on survival and quick reactions.

Visual feedback such as hit flashes was added to help the player understand when damage occurs, especially during chaotic moments with multiple enemies.

## Notes

- Several technical systems were implemented to ensure the game runs smoothly.

Collision detection prevents the player and projectiles from passing through walls
Projectiles are automatically destroyed on impact
Enemies respawn randomly to maintain constant gameplay
A timer system controls the two-minute time limit
Victory and defeat messages appear depending on the outcome of the match

These systems work together to create a stable gameplay loop.

---

## Credits
- Game logic and design: Rogerio Rodrigues 
- Sprites: Rogerio Rodrigues
- Sounds: Rogerio Rodrigues  