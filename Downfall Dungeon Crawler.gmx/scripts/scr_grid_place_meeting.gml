///grid_place_meeting(x, y)
var xx = argument[0];
var yy = argument[1];

// Remember our position
var xpos = x;
var ypos = y;

// Update the position for the bbox calculations
x = xx;
y = yy;

// Check for x meeting
var x_meeting = (Level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR)||
                (Level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR);

// Check for y meeting
var y_meeting = (Level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR)||
                (Level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR);

// Check for center meeting
var center_meeting = Level.grid[# xx div CELL_WIDTH, yy div CELL_HEIGHT] != FLOOR;

// Move back
x = xpos;
y = ypos;


// Return true false
return x_meeting || y_meeting;

