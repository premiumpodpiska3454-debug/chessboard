// Параметры
board_size = 180;
cells = 8;
cell_size = board_size / cells;
base_thickness = 3;
white_height = 1.5;
black_height = 0.5;
gap = 0.2;

// Белые клетки
color("white")
for (row = [0:cells-1], col = [0:cells-1]) {
    if ((row + col) % 2 == 0) {
        translate([col*cell_size + gap/2, row*cell_size + gap/2, base_thickness])
            cube([cell_size-gap, cell_size-gap, white_height]);
    }
}

// Чёрные клетки
color("black")
for (row = [0:cells-1], col = [0:cells-1]) {
    if ((row + col) % 2 == 1) {
        translate([col*cell_size + gap/2, row*cell_size + gap/2, base_thickness])
            cube([cell_size-gap, cell_size-gap, black_height]);
    }
}

// Основание
color("black")
translate([0, 0, 0])
    cube([board_size, board_size, base_thickness]);
