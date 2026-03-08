// MOVE PROJECTILE
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// COLLISION WITH WALLS
if (place_meeting(x, y, obj_wall_parent)) {
    instance_destroy(); // projectile disappears when hitting wall
}

// COLLISION WITH ENEMIES
var hit_enemy = instance_place(x, y, obj_enemy);
if (hit_enemy != noone) {

    // APPLY DAMAGE
    if (instance_exists(hit_enemy)) {
        hit_enemy.hp -= damage;
    }

    // CHECK IF ENEMY DIED
    if (instance_exists(hit_enemy) && hit_enemy.hp <= 0) {
        instance_destroy(hit_enemy);          // destroy enemy
        global.kills += 1;                   // increment kill counter

        // RESPAWN NEW ENEMY
        var new_enemy = instance_create_layer(irandom_range(50, room_width-50), irandom_range(50, room_height-50), "Instances", obj_enemy);
        new_enemy.hp = 3;
        new_enemy.speed = 2;
        new_enemy.atk = 1;
    }

    // DESTROY PROJECTILE
    instance_destroy();
}

// DEPTH
depth = -y;

if(instance_exists(hit_enemy) && hit_enemy.hp <= 0){
    instance_destroy(hit_enemy);
    global.kills += 1; 
}