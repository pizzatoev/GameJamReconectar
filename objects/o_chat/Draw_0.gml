/// @description Draw GUI Event del o_chat (centrado en cámara)

// Obtener la posición de la cámara activa
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

// Calcular el centro de la vista actual
var view_center_x = cam_x + (cam_w / 2);
var view_bottom_y = cam_y + cam_h;

// Tamaño del recuadro
var box_width = 600;
var box_height = 70;

// Coordenadas para centrar el cuadro
var box_x1 = view_center_x - (box_width / 2);
var box_y1 = view_bottom_y - 110; // separación del borde inferior
var box_x2 = view_center_x + (box_width / 2);
var box_y2 = box_y1 + box_height;

// Dibujar fondo semitransparente
draw_set_alpha(0.6);
draw_set_color(make_color_rgb(0, 0, 0));
draw_rectangle(box_x1, box_y1, box_x2, box_y2, false);
draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(box_x1, box_y1, box_x2, box_y2, true);

// Dibujar texto dentro del cuadro
draw_text_ext(box_x1 + 20, box_y1 + 15, chat, -1, box_width - 40);
