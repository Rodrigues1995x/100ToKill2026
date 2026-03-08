// HIT FLASH
if(hit_flash_timer > 0){
    image_blend = c_red;
    hit_flash_timer -= 1;
} else {
    image_blend = c_white;
}

// ENEMY MOVEMENT
if(instance_exists(obj_player)){
    var dx = obj_player.x - x;
    var dy = obj_player.y - y;
    var mag = sqrt(dx*dx + dy*dy);
    if(mag != 0){
        var move_x = dx/mag * speed;
        var move_y = dy/mag * speed;
        if(!place_meeting(x + move_x, y, obj_wall_parent)) x += move_x;
        if(!place_meeting(x, y + move_y, obj_wall_parent)) y += move_y;
    }
}

// ATTACK PLAYER
if(place_meeting(x, y, obj_player)){
    obj_player.hp -= atk;
}

// Check if dead
if (hp <= 0) {

    // Increment global kills
    global.kills += 1;

    // Spawn new enemy safely
    var nx = irandom_range(50, room_width-50);
    var ny = irandom_range(50, room_height-50);
    if(!place_meeting(nx, ny, obj_player)){
        var new_enemy = instance_create_layer(nx, ny, "Instances", obj_enemy);
        new_enemy.hp = 3;
        new_enemy.speed = 2;
        new_enemy.atk = 1;
    }

    // Destroy this enemy (Destroy Event will automatically play sound)
    instance_destroy();
}

// DEPTH
depth = -bbox_bottom;