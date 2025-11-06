use <smartphone.scad>
use <ocular.scad>
phone_height = 162;
phone_width = 77;

translate([phone_height/2-23/2-2, phone_width/2-23/2-2, 35/2+15])
rotate ([180, 0, 0])
ocular ();
frame1();
translate ([0,25,3])
corner (thickness = 20);

cube([phone_height/2, phone_width, 3], center = true);

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

module frame1(){
    difference(){
        color("green")
        translate([162/2-162/4+10,10,0])
        cube([162/2,77+10, 10], center=true);
        scale([1,1,2])
        block();
    }
}