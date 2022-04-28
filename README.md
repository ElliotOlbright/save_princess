# Save The Princess Challenge 1 & 2 from HackerRank
### Here is my submission to the HFA's technical challenge.

---
### Submission
#### 1. Run the **FIRST** challenge in HackerRank
  * Please visit [Bot Saves Princess 1](https://www.hackerrank.com/challenges/saveprincess/problem)
  * Upload or copy/paste the contents of [bsp_1_HR_runner](https://github.com/ElliotOlbright/save_princess/blob/main/bsp_1_HR_runner.rb)

#### 2. Run the **SECOND** challenge in HackerRank
  * Please visit [Bot Saves Princess 2](https://www.hackerrank.com/challenges/saveprincess2)
  * Upload or copy/paste the contents of [bsp_2_HR_runner](https://github.com/ElliotOlbright/save_princess/blob/main/bsp_2_HR_runner.rb)
---

### Table of Contents
- [Submission](#submission)
- [Install Locally](#install-locally-to-your-machine)
- [Play Game](#play-game)
- [Testing and Coverage](#testing-and-coverage)
- [Tools](#tools-used)
- [Challenge 1 Approach](#challenge-1-approach)
- [Challenge 2 Approach](#challenge-2-approach)

---

### Install Locally To Your Machine
  * In command line run:
```
git clone git@github.com:elliotolbright/save_princess.git
cd save_princess
bundle install
```
---
### Play Game
  * For part 1, in command line run: (make sure to follow directions!)
```
ruby save_princess_1/bsp_1_runner.rb
```
  * For part 2, in command line run: (make sure to follow directions!)
```
ruby save_princess_2/bsp_2_runner.rb
```


### Testing and Coverage
1. Run RSpec test suite
  * In command line run:
```
rspec ./save_princess_1/spec
rspec ./save_princess_1/spec
```
2. Open Simplecov Coverage Report 
  * In command line run:
```
open coverage/index.html
```
---

## Tools Used

- [RSpec Gem](https://rspec.info/) to test my code.
- [Pry Gem](https://github.com/pry/pry) to debug.
- [SimpleCov Gem](https://github.com/simplecov-ruby/simplecov) to check that all of my code was tested.

---

## Challenge 1 Approach
### 1. Grid
  * The first part of the problem that needed to be solved was the functionality of and the constraints of the grid. 
    * The grid would be responsible for the placement of both the bot and the princess. In part one the princess was guaranteed to be in one of the 4 corners of the grid and the bot was guaranteed to be in the center of the grid. 
    * The Grid x axis was restricted to a range of 3-100
    * The Grid can only be an even number
  * Upon instantiation the grid will check the users input to ensure the user input follows the requirements
  * `locate_princess` will find the princess coordinates on the grid
  * `locate_bot` will find the bot coordinates on the grid

### 2. Bot
  * The bot class is soley responsible for dividing the assigning the x and y coordinates to seperate variables
  * This class is instantiated using the grid class

### 3. Princess
  * The princess class is soley responsible for dividing the assigning the x and y coordinates to seperate variables
  * this class is instantiated using the grid class

### 4. FindPrincess
  * This class combines grid, bot and princess to create and output the final result of the steps need for the bot to save the princess
  * This class has 3 methods methods 
    1. `generate_row_path` - Is responsible for determining the moves needed on the x axis and outputting "left" or Right"
      * **note** - This method finds the distance between the princess and bot on the x axis, depending on the negative or positive value of the distance the method will out put "left" or "right"
    3. `generate_column_path` -  Is responsible for determining the moves needed on the y axis and outputting "up" or "down"
      * **note** - This method finds the distance between the princess and bot on the y axis, depending on the negative or positive value of the distance the method will out put "up" or "down"
    5. `path_to_princess` - Is responsible for collecting the outputs of the previous two methods until the princess is reached

---

## Challenge 2 Approach

### 1. Grid
  * This class is responsible for instantiating the grid as well as locating the bot and princess
  * This class remianed fairly simlir to part one. Though sincewe had been given the coordinates of the bot in the argument for the displayPathToPrincess method, I was able to delete the `locate_bot` method and only keep the `locate_princess` method.
  * Since I had found the princess and bot location, I no longer need the bot and princess classes

### 4. FindPrincess
  * This class remained fairly similar to part one.
  * Since we no longer need to have a collection of each move in an array but rather just show the next move, I was able to delete `path_to_princess`
  * The main difference was adding the `next_step` method.
  * This class has 3 methods methods 
    1. `generate_row_move` - Is responsible for determining the moves needed on the x axis and outputting "left" or Right"
    2. `generate_column_move` -  Is responsible for determining the moves needed on the y axis and outputting "up" or "down"
    3. `next_step` - Is responsible for collecting the output of the movement methods and displaying




