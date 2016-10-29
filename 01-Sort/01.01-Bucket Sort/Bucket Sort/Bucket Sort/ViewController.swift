//
//  ViewController.swift
//  Bucket Sort
//
//  Created by hljxmxx on 16/7/31.
//  Copyright © 2016年 smartech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var nums = [Int]()
    @IBOutlet weak var numInput: UITextField!
    
    //  MARK: Lifecycle
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //  MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        let nu = [0, -1, -2, 3, 7, 6, 5, 8, 4, 1, 3, -5]
        let res = BucketSorter.sort(nums: nu)
        print("result: \n", res)
    }

    //  MARK: IBActions
    @IBAction func addToNums(_ sender: UIButton) {
        guard let text = numInput.text,
            let num = Int(text) else {
                return
        }
        nums.append(num)
        numInput.text = ""
        print("input nums: \n", nums)
    }

    @IBAction func resetAction(_ sender: UIButton) {
        nums.removeAll()
        numInput.text = ""
        print("input nums: \n", nums)
    }

    @IBAction func sortAction(_ sender: UIButton) {
        let res = BucketSorter.sort(nums: nums)
        print("input results: \n", res)
    }
}

extension ViewController: UITextFieldDelegate {

}
