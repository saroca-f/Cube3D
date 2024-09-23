# **Cube3d**

## **Description**

This program is an introduction to 3D graphical programming, using the rendering engine known as Ray-Casting. Inspired by classic games like Wolfenstein 3D, this project implements a three-dimensional representation of an environment based on a 2D map, allowing first-person movement through that virtual world.

## **Objective**

The goal of this project is to develop a solution that avoids race conditions, deadlocks, and starvation using threads and synchronization mechanisms.

## **Features**

- **Use of threads:** Each philosopher is represented by a separate thread, allowing concurrent execution of eating, sleeping and thinking actions.
- **Synchronization:** Synchronization mechanisms, such as mutexes, are implemented to control access to shared resources (like forks).
- **Deadlock prevention:** Strategies are designed to avoid mutual blocking situations where philosophers cannot progress.
- **Starvation prevention:** We ensure that no philosopher is left indefinitely waiting to eat.

## **Compilation and Execution**
### Requirements
- Any C-compatible compiler.
- Make.

### **Instructions**
Clone this repository:

```sh
git clone git@github.com:saroca-f/philosophers.git
cd philosophers
```
Compila el proyecto usando Make:

```sh
Make
```
Run the program:

```Copy code
./philo <number_of_philosophers> <time_to_die> <time_to_eat> <time_to_sleep> [number_of_times_each_philosopher_must_eat]
```
Example

```
./philo 5 800 200 200
```
This will start the simulation with 5 philosophers, where each philosopher will die if he does not eat in 800 ms, takes 200 ms to eat and 200 ms to sleep.
