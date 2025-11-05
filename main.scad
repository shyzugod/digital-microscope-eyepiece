echo ("Работа Корепанова Андрея !!!");
$fn = 128;

ocular();
translate ([0, 0, 35/2+5/2])
top();

module top () {
    difference () {
     cylinder (d = 30, h = 5, center = true);
     cylinder (d = 23-0.5-3, h = 15, center = true);
    }
}

module ocular(){
    difference(){
        cylinder(d=23-0.5, h = 35, center = true);
        cylinder(d=23-0.5-3, h = 40, center = true);
    }
}