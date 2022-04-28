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
- [Testing and Coverage](#testing-and-coverage)
- [Tools](#tools-used)
- [Challenge 1 Approach](#challenge-1)

---

### Install Locally To Your Machine
  * In command line run:
```
git clone git@github.com:elliotolbright/save_princess.git
cd save_princess
bundle install
```
---
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
#### 1. Grid
  * The first part of the problem that needed to be solved was the functionality of and the constraints of the grid. 
    * The grid would be responsible for the placement of both the bot and the princess. In part one the princess was guaranteed to be in one of the 4 corners of the grid and the bot was guaranteed to be in the center of the grid. 
    * The Grid x axis was restricted to a range of 3-100
    * The Grid can only be an even number
  * Upon instantiation the grid will check the users input to ensure the user input follows the requirements
  * 'locate_princess' will find the princess coordinates on the grid
  * 'locate_bot` will find the bot coordinates on the grid






