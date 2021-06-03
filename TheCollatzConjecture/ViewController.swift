//
//  ViewController.swift
//  TheCollatzConjecture
//
//  Created by Daniel Washington Ignacio on 03/06/21.
//
/*
 Consider the following operation on an arbitrary positive integer:

 If n is even -> n / 2
 If n is odd -> n * 3 + 1
 Create a function to repeatedly evaluate these operations, until reaching 1. Return the number of steps it took.

 See the following example, using 10 as the input, with 6 steps:

 10 is even - 10 / 2 = 5
 5 is odd - 5 * 3 + 1 = 16
 16 is even - 16 / 2 = 8
 8 is even - 8 / 2 = 4
 4 is even - 4 / 2 = 2
 2 is even - 2 / 2 = 1 -> Reached 1, so return 6
 Examples

 collatz(2) ➞ 1

 collatz(3) ➞ 7

 collatz(10) ➞ 6
 Notes

 For further information, check the Resources tab.
 */


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(self.collatz(2))
        print(self.collatz(3))
        print(self.collatz(10))
    }

    func collatz(_ num: Int) -> Int {
        var sum: Int = num
        var steps: Int = 0
        while sum != 1 {
            switch sum % 2 {
            case 0:
                sum = sum / 2
                steps = steps + 1
                break
            default:
                sum = sum * 3 + 1
                steps = steps + 1
            }
        }
        return steps
    }

}

