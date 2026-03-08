if(global.time_limit > 0) {
    global.time_limit -= 1;
}

// Spawn enemies if under max count
if(instance_number(obj_enemy) < global.max_enemies && global.spawn_timer <= 0){
    
    var tries = 10;
    var spawned = false;
    
    while(tries > 0 && !spawned){
        var nx = irandom_range(50, room_width-50);
        var ny = irandom_range(50, room_height-50);
        
        if(!place_meeting(nx, ny, obj_player) && 
           point_distance(nx, ny, obj_player.x, obj_player.y) > 150){
            
            var new_enemy = instance_create_layer(nx, ny, "Instances", obj_enemy);
            new_enemy.hp = 3;
            new_enemy.speed = 2;
            new_enemy.atk = 1;
            
            spawned = true; 
            global.spawn_timer = global.spawn_cooldown;
        }
        
        tries -= 1;
    }
    
} else {
    if(global.spawn_timer > 0) global.spawn_timer -= 1;
}

// Victory
if(global.kills >= 100){
    show_message("YOU WON! 100 kills achieved!");
    game_end();
}

// Lost
if(global.time_limit <= 0 && global.kills < 100){
    show_message("YOU LOST! Time ran out!");
    game_end();
}