use <smartphone.scad>

echo ("Работа Корепанова Андрея!!!");

$fn = 128;
r_round_corner = 15;

//color("green")
//translate([0,0,15])
//cube([162,77.2,9],center=true);

smartphone();
translate([162/2-23/2-19,77/2-23/2-2,35/2+15])
rotate([180,0,0])
ocular();
frame1();
translate([0,25,0])
corner();

module corner(){
    translate([162/2+20,0,0])
    frame2();
    
    translate([162/2 - 13.5, 77/2,0])
    rotate([0,0,90])
    frame2();

}
module frame2(){
    hull(){
        translate([5,77/2,0])
        cylinder(d=5, h=10,center=true,$fn=32);
        
        mirror([1,0,0])
        translate([5,77/2,0])
        cylinder(d=5, h=10,center=true,$fn=32);
        
        mirror([0,1,0])
        translate([5,77/2,0])
        cylinder(d=5, h=10,center=true,$fn=32);
        
        mirror([1,0,0])
        mirror([0,1,0])
        translate([5,77/2,0])
        cylinder(d=5, h=10,center=true,$fn=32);
    }
}
//difference() {
//    frame1();
//    scale([1,1,2])
//    block();
//}

module frame1(){
    difference(){
        color("green")
        translate([162/2-162/4+10,10,0])
        cube([162/2,77+10, 10], center=true);
        scale([1,1,2])
        block();
    }
}
module top(){
    difference(){
        cylinder(d=30, h=5, center=true);
        cylinder(d=23-0.5-3, h=15, center=true);
    }
}
module ocular(){
    translate([0,0,35/2+5/2])
    top();
    difference(){
        cylinder(d=23-0.5, h = 35, center = true);
        cylinder(d=23-0.5-3, h = 40, center = true);
    }
}