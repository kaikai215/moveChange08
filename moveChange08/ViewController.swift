//
//  ViewController.swift
//  moveChange08
//
//  Created by 林聖凱 on 2022/5/18.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var jupmLabel: UILabel!
    @IBOutlet weak var page: UIPageControl!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var jumpImage: UIImageView!
    let jumpImages = ["火影忍者", "海賊王", "七龍珠"]
    let jumpLables = ["講述忍者世界裡圍繞著身為對手的漩渦鳴人與宇智波佐助兩人，與其他角色的經歷。","描述海賊蒙其·D·魯夫想要得到「ONEPIECE」和成為「海賊王」為夢想而出海向「偉大的航道」航行的海洋冒險故事。","以孩子悟空的成長歷程為中心，描述「冒險」、「努力」、「友情」、「戰鬥」的長篇冒險漫畫"]
    var index = 0
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeSegment(_ sender: UISegmentedControl) {
        index = sender.selectedSegmentIndex
        change()
    }
    @IBAction func pre(_ sender: Any) {
        index = (index + jumpImages.count - 1) % jumpImages.count
        jumpImage.image = UIImage(named: jumpImages[index])
        change()
    }
    @IBAction func next(_ sender: Any) {
        index = (index + 1) % jumpImages.count
        change()
    }
    @IBAction func changePage(_ sender: UIPageControl) {
        index = sender.currentPage
        change()
    }
    func change(){
           page.currentPage = index
           jumpImage.image = UIImage(named: jumpImages[index])
           jupmLabel.text = jumpLables[index]
           segment.selectedSegmentIndex = index
       }
}

