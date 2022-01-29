/************************************************************************

    blue_adapter.scad
    
    Silhouette Cameo 4 Adapters
    Copyright (C) 2022 Simon Inns
    
    This is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
	
    Email: simon.inns@gmail.com
    
************************************************************************/

include <BOSL/constants.scad>
use <BOSL/transforms.scad>
use <BOSL/shapes.scad>

module insertion_guide_front()
{
    // Insert guides
    move([0,7.75,27.5]) hull() {
        move([0,0,-4]) cuboid([1,1,4], chamfer=0.2);
        move([0,-0.5,-1]) cuboid([1.25 / 2,2.5 / 2,0.25]);
    }
}

module insertion_guide_back()
{
    // Insert guides
    move([0,-8,24]) cuboid([1.75,2.25,5], chamfer=0.2);
}

module tool_lock()
{
    difference() {
        union() {
            move([0,0,2.5]) {
                move([+5.25,0,21.5 - 4]) cuboid([1.25, 20, 2.1]);
                move([-5.25,0,21.5 - 4]) cuboid([1.25, 20, 2.1]);
            }

            move([0,0,17]) tube(h=2, od=20, , id=14, center=false);
        }

        move([0,0,17]) cuboid([6.5, 20, 6]);
        move([+10.5,0,17]) cuboid([6.5, 20, 6]);
        move([-10.5,0,17]) cuboid([6.5, 20, 6]);
        move([0,7,19]) cuboid([20, 10, 6]);
    }
}

module holder_body()
{
    // Base of holder
    difference() {
        union() {
            move([0,20/4,7]) cuboid([19,20/2,14], chamfer=0.25, edges=EDGES_TOP+EDGES_BOTTOM+EDGES_BACK);
            cyl(h=22.5, d=19, center=false, chamfer=0.25);

            move([0,0,16]) cyl(h=6.5, d=20, center=false, chamfer1=3);
        }

        move([0,10,14/2]) cuboid([14.2,2,10.2], edges=EDGES_TOP); // Alu marker recess
        tool_lock();
    }

    // Main Shaft
    move([0,0,21.5]) zrot(80) pie_slice(ang=20, l=4.5, d=16);
}

module inner_profile()
{
    // Base
    move([0,0,9 - 1]) cyl(h=24, d=17);

    // Ring
    move([0,0,20.5]) cyl(h=2, d=18);

    // Top
    move([0,0,17]) cyl(h=51, d=15);
}

module front_catches()
{
    move([-11 + 0.25,0.125,2.125]) cuboid([1.5,1.75,8.75], center=false, chamfer=0.25, edges=EDGES_X_ALL+EDGES_LEFT);
    move([9.25,0.125,2.125]) cuboid([1.5,1.75,8.75], center=false, chamfer=0.25, edges=EDGES_X_ALL+EDGES_RIGHT);
}

module back_catches()
{
    move([-14.5,-1,0]) {
        difference() {
            move([0,-1,0]) cuboid([1,6,13], center=false, chamfer=0.5, edges=EDGES_X_ALL);
            move([-1,1,2]) cuboid([3,2.5,9], center=false);
        }

        move([-0.75,-1,0]) cuboid([0.75,2,13], center=false, chamfer=0.5, edges=EDGES_X_FR);
    }

    move([-34.5,-1,0]) {
        difference() {
            move([0,-1,0]) cuboid([1,6,13], center=false, chamfer=0.5, edges=EDGES_X_ALL);
            move([-1,1,2]) cuboid([3,2.5,9], center=false);
        }

        move([0.75,-1,0]) cuboid([0.75,2,13], center=false, chamfer=0.5, edges=EDGES_X_FR);
    }
}

module render_blue_adapter_front(isDisplay)
{
    posy = isDisplay ? 0:6;

    move([0,posy,0]) {
        difference() {
            holder_body();
            inner_profile();

            // Cross section
            move([0,-10,25]) cuboid([20,20,60]);
        }

        // Insertion guides
        difference() {
            union () {
                move([+1.25 + 0.125,0,0]) insertion_guide_front();
                move([-1.25 - 0.125,0,0]) insertion_guide_front();
            }

            move([0,0,17]) cyl(h=51, d=15);
        }

        front_catches();
    }
}

module render_blue_adapter_back(isDisplay)
{
    posy = isDisplay ? 0:-6;
    move([0,posy,0]) {
            difference() {
            holder_body();
            inner_profile();

            // Cross section
            move([0,10,25]) cuboid([20,20,60]);
        }
        
        difference() {
            insertion_guide_back();
            move([0,0,17]) cyl(h=51, d=15);
        }

        move([24,0,0]) back_catches();
    }
}

module render_blue_adapter_lid(isDisplay)
{
    rota = isDisplay ? 0:180;
    priy = isDisplay ? 0:-55.5;

    yrot(rota) move([0,0,priy]) {
        difference() {
            union() {
                move([0,0,39]) cyl(h=33, d=16, chamfer2=2);
                move([0,0,26]) cyl(h=7, d=18, chamfer2=2);
            }
            move([0,0,39 - 1]) cyl(h=33, d=14, chamfer2=2);

            for(rota=[0: 360/6: 360]) {
                    rotate([0,0,rota]) move([0,-8,24]) cuboid([4,4,5], chamfer=0.2);
            }
        }
    }    
}