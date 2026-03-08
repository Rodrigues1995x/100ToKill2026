if (instance_exists(target)) {

    var target_x = target.x - cam_width/2;
    var target_y = target.y - cam_height/2;

    cam_x = lerp(cam_x, target_x, cam_velc);
    cam_y = lerp(cam_y, target_y, cam_velc);

    cam_x = clamp(cam_x, 0, room_width - cam_width);
    cam_y = clamp(cam_y, 0, room_height - cam_height);

    camera_set_view_pos(view_camera[0], cam_x, cam_y);
}