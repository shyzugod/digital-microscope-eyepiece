use <smartphone.scad>

echo ("Работа Корепанова Андрея!!!");

$fn = 128;
r_round_corner = 15;

//color("green")
//translate([0,0,15])
//cube([162,77.2,9],center=true);

smartphone();
translate ([162/2-23/2-2, 77/2-23/2-2, 35/2+15])
rotate([180, 0, 0])
ocular();
frame ();

module frame() {
    color ("green")
    translate ([162/2-162/4+10, 0, -5])
    cube ([162/2, 77/2, 10], center = true);
}

//ocular();
//translate([0,0,35/2+5/2])
//top();

module top(){
    difference(){
        cylinder(d=30, h=5, center=true);
        cylinder(d=23-0.5-3, h=15, center=true);
    }
}
module ocular(){
    translate ([0, 0, 35/2+5/2])
    top();
    difference(){
        cylinder(d=23-0.5, h = 35, center = true);
        cylinder(d=23-0.5-3, h = 40, center = true);
    }
}