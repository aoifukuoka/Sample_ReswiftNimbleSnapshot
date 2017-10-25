//
//  ViewController.swift
//  reswift.nimblesnapshot.net
//
//  Created by aoponaopon on 2017/10/25.
//  Copyright © 2017年 aoponaopon. All rights reserved.
//

import UIKit
import ReSwift

class ViewController: UIViewController {
    @IBOutlet weak var ohayoulabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainStore.subscribe(self)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        ohayoulabel.text = ohayoulabel.text! + "---[prepare(for segue]---"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mainStore.dispatch(
            CounterActionIncrease()
        )
//        ohayoulabel.text = ohayoulabel.text! + "---[viewWillAppear]---"
    }

    override func viewWillDisappear(_ animated: Bool) {
        mainStore.unsubscribe(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: StoreSubscriber {
    func newState(state: AppState) {
        ohayoulabel.text = "\(state.counter)"
    }
}
