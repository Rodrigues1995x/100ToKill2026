draw_set_color(c_white);

// Draw kill counter
draw_text(20, 20, "Kills: " + string(global.kills));

// Draw timer in seconds
var time_seconds = ceil(global.time_limit / room_speed);
draw_text(20, 50, "Time: " + string(time_seconds) + "s");

// Draw win/lose message in the center (optional)
if(global.kills >= 100){
    draw_text(room_width/2 - 50, room_height/2, "YOU WON!");
}
else if(global.time_limit <= 0 && global.kills < 100){
    draw_text(room_width/2 - 50, room_height/2, "YOU LOST!");
}