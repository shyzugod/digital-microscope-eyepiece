$fn = 128;
r_round_corner = 15;

module smartphone(){
    block();
    cameras();
}

module cameras(){
    color("blue")
    translate([162/2-13,77/2-13,0])
    cylinder(d=14,h=15, center=true);
    
    color("blue")
    translate([162/2-30,77/2-13,0])
    cylinder(d=14,h=15, center=true);
    
    color("blue")
    translate([162/2-47,77/2-13,0])
    cylinder(d=14,h=15, center=true);
}


module block(){
    hull(){
        color("red")
        translate([162/2 - r_round_corner/2,77/2 - r_round_corner/2,0])
        cylinder(d=r_round_corner, h=9,center=true);
        
        mirror([1,0,0])
        color("red")
        translate([162/2 - r_round_corner/2,77/2 - r_round_corner/2,0])
        cylinder(d=r_round_corner, h=9,center=true);
        
        mirror([0,1,0])
        color("red")
        translate([162/2 - r_round_corner/2,77/2 - r_round_corner/2,0])
        cylinder(d=r_round_corner, h=9,center=true);
        
        mirror([1,0,0])
        mirror([0,1,0])
        color("red")
        translate([162/2 - r_round_corner/2,77/2 - r_round_corner/2,0])
        cylinder(d=r_round_corner, h=9,center=true);
    }
}