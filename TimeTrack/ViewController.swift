//
//  ViewController.swift
//  TimeTrack
//
//  Created by Daniel Apps on 5/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
    }
    
    var timerClock = Timer()
    var isRunningTime = false
    var elapsedTime = 0.0
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        starTime()
    }
    @IBAction func stopButtonTapped(_ sender: UIButton) {
    }
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        elapsedTime = 0.0
    }


//MARK: - Func Here
    
    func starTime() {
        // Iniciar cronometro
        timerClock = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
                guard let self = self else { return }
            
            // Aumentar el tiempo transcurrido en 1 segundo
            self.elapsedTime += 1.0
                
            // formatear texto y actualizar label
            let minutes = Int(self.elapsedTime) / 60
            let seconds = Int(self.elapsedTime) % 60
            self.timeLabel.text = String(format: "%02d:%02d", minutes, seconds)

        }
        isRunningTime = true
    }
}
