cam_width  = camera_get_view_width(view_camera[0]);
cam_height = camera_get_view_height(view_camera[0]);

cam_velc = 0.15; // smooth

target = instance_find(obj_player, 0);

cam_x = target.x - cam_width/2;
cam_y = target.y - cam_height/2;