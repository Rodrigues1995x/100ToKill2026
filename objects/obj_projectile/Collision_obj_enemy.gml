/// Collision with obj_enemy

// Apply damage
other.hp -= damage;

// Flash red on enemy
other.hit_flash_timer = 5;

// If enemy dies
if (other.hp <= 0 && instance_exists(other)) {
    // Play full death sound
    audio_play_sound(snd_enemy_die, 1, false);

    // Destroy enemy
    instance_destroy(other);

    // Increment kill counter
    global.kills += 1;
}

// Destroy projectile after hit
instance_destroy();