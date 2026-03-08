// --- Movement ---
var key_up = keyboard_check(ord("W"));
var key_down = keyboard_check(ord("S"));
var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"));

vel_h = key_right - key_left;
vel_v = key_down - key_up;

var mag = sqrt(sqr(vel_h) + sqr(vel_v));
if(mag != 0){
    vel_h = vel_h / mag * velc; 
    vel_v = vel_v / mag * velc;
} else {
    vel_h = 0;
    vel_v = 0;
}

// Wall collision
if (!place_meeting(x + vel_h, y, obj_wall_parent)) x += vel_h;
if (!place_meeting(x, y + vel_v, obj_wall_parent)) y += vel_v;

// Room limits
x = clamp(x, sprite_width/2, room_width - sprite_width/2);
y = clamp(y, sprite_height/2, room_height - sprite_height/2);

// Shooting 
if(mouse_check_button_pressed(mb_left) && atk_cooldown <= 0){
    // Create projectile
    var proj = instance_create_layer(x, y, "Instances", obj_projectile);
    proj.damage = atk;
    proj.speed = proj_speed;
    proj.direction = point_direction(x, y, mouse_x, mouse_y);

    // Play full shooting sound
    audio_play_sound(snd_shoot, 1, false);

    // Cooldown
    atk_cooldown = 10;
}

// Cooldown decrement
if (atk_cooldown > 0) atk_cooldown -= 1;

// Depth
depth = -bbox_bottom;