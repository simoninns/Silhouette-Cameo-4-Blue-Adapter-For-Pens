# Silhouette Cameo 4 Blue Adapter For Pens
## Overview
This is a 3D printable adapter for the Silhouette Cameo 4 equivalent to the blue adapter typically used to allow Silhouette pens to work in the Cameo 4 (why they don't work natively is anyone's guess...).

<img src="/photos/IMG_4258_sm.jpg" width="800">

Since the original adapter is made from extremely thin plastic it is not possible to print the adapter without redesign.  This design relies on front and back guide pins to hold the pen square to the plotter rather than a thin plastic surround.  The pen is held rigidly and does not wobble during plotting. 

To make the design even more convenient there is a pen lid included so the pen does not need to be removed from the adapter when not in use; simply pop on the cap and store.

<img src="/photos/IMG_4262_sm.jpg" width="800">

Note: This project is GPLv3 open-source. The github repository for the model (containing the complete OpenSCAD project) can be found at https://github.com/simoninns/silhouette-cameo-4-blue-adapter-for-pens

## Printing instructions
The model has been printed and tested on the Prusa MK3S/MMU2S printer using Prusament PETG filament. All parts fit on a 20x20 printing bed.

### Recommended print settings

Print settings (for Prusa Slicer) are the same for all included parts:

* Material: PETG
* Layer: 0.20mm (Quality)
* Infill: 15%
* Supports: No Supports

Note that the upper 'ring' of the front and back parts may string a little due to the lack of supports.  Simply trim this off after printing rather than using build-plate supports for quicker printing with less material.

## Assembly
Place the front part over the pen ensuring that the 'ring' is correctly seated. Then clip the back part in place one side at a time.  Finally, pop the cap on the top.  Now follow the tool auto-detection instructions below.

## Tool auto-detection
The Cameo 4 uses an automatic tool detection system which is based on the size of a rectangle of aluminum on the back of the tool.  The pen-holder design has a 14x10mm recess for the aluminum.

A Silhouette Studio file is included in the project that can be used to make the required aluminum.  Use 50mm wide aluminum tape (I used Tesa professional aluminum tape (strong) which is 50mm x 25m x 50 microns).  Aluminum tape is used in the heating/air con. industry so it's easy to source.

The included file uses the auto-blade with the following settings:

* Blade Depth: 4
* Force: 14
* Passes: 1
* Speed: 5

Simply cut about 150mm of aluminum tape and affix to a cutting board (make sure it's as smooth as possible). Then, after cutting, place 1 or 2 pieces (one on top of the other) in the provided recess on the tool.  The Cameo will then auto-detect the pen holder just like the manufacturer's original part.

## Author
The Silhouette Cameo 4 Blue Adapter For Pens is designed and maintained by Simon Inns.

# Licensing
## OpenSCAD source files - software license (GPLv3)

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

## Non-source-code media - Creative Commons license (Creative Commons BY-SA 4.0)
Please see the following link for details: https://creativecommons.org/licenses/by-sa/4.0/

You are free to:

Share - copy and redistribute the material in any medium or format
Adapt - remix, transform, and build upon the material
for any purpose, even commercially.

This license is acceptable for Free Cultural Works.

The licensor cannot revoke these freedoms as long as you follow the license terms.

Under the following terms:

Attribution - You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.

ShareAlike - If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.

No additional restrictions - You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.