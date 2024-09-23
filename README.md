# **Cube3d**

## **Description**

This program is an introduction to 3D graphical programming, using the rendering engine known as Ray-Casting. Inspired by classic games like Wolfenstein 3D, this project implements a three-dimensional representation of an environment based on a 2D map, allowing first-person movement through that virtual world.

## **Objective**

This project teaches key concepts in:

- Ray-casting algorithms
- Basic 3D rendering techniques
- Game engine foundations
- Efficient memory and resource management

## **Features**

- **Custom Map Loading:** Parse and render 2D maps in .cub format.
- **Textured Rendering:** Apply textures to walls for enhanced visuals.
- **Collision Detection:** Prevent the player from walking through walls.
- **Smooth Movement & Rotation:** Navigate the world in first-person, with fluid controls.

## **Compilation and Execution**
### Requirements
- Any C-compatible compiler.
- MLX42: A simple graphical library used for rendering.

### **Instructions**
Clone this repository:

```sh
git clone git@github.com:saroca-f/Cube3D.git
cd Cube3D
```
Compile the proyect with Make:

```sh
Make
```
or use Make with bonus
```sh
Make bonus
```

If you compile using the bonus rule, you enable the minimap, mouse-controlled rotation, door interaction, and an animation feature.

Run the program:

```Copy code
./cub3D [map path]
```
or if you use the bonus rule:

```Copy code
./cub3D_bonus [map path]
```

Example

```
./cub3D maps/map2.cub
```
This will start the simulation with a map at this path.
