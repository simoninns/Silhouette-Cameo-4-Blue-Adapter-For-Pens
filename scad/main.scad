/************************************************************************

    main.scad
    
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

// Local includes
include <blue_adapter.scad>

// Rendering resolution
$fn=30;

// General
display_or_print = "Display"; // [Display, Print]

// Select rendering parameters
display_blue_adapter_front = "Yes"; // [Yes, No]
display_blue_adapter_back = "Yes"; // [Yes, No]
display_blue_adapter_lid = "Yes"; // [Yes, No]

// Render the required items
module main()
{
    isDisplay = (display_or_print == "Display") ? true:false;

    d_blue_adapter_front = (display_blue_adapter_front == "Yes") ? true:false;
    d_blue_adapter_back = (display_blue_adapter_back == "Yes") ? true:false;
    d_blue_adapter_lid = (display_blue_adapter_lid == "Yes") ? true:false;

    if (d_blue_adapter_front) render_blue_adapter_front(isDisplay);
    if (d_blue_adapter_back) render_blue_adapter_back(isDisplay);
    if (d_blue_adapter_lid) render_blue_adapter_lid(isDisplay);
}

main();