//
//  ViewController.h
//  FastTapper
//
//  Created by tstone10 on 5/23/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

/*
 Create an app where the user has 60 seconds to tap a button on the screen as many times as possible. Your app should display a counter that shows how many times the user has tapped the button, as well as a countdown clock
 
 Bonus #1: If a player scores above 100 taps in 60 seconds, display the message “You Won!” on the screen. Otherwise, display the message “You Lost!”
 
 Bonus #2: Create a leaderboard which allows the user to view his or her most recent 10 scores (NOTE: The leaderboard does NOT need to persist once the app is shut down.)
 
 Bonus #3: Create 2-player mode and display the message “Player 1 Wins!” or “Player 2 Wins!” at the end of the game, depending on which player tapped the button more times
 
 [2:35]
 (You have from 2:35-4:30 to work on this exercise with your pair. We’ll demo at 4:30)
*/


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UIButton *btnStart;
    IBOutlet UILabel *txtTimer;
    IBOutlet UILabel *txtClicks;
    IBOutlet UIButton *btnClick;   
}

-(IBAction) startButtonPressed;
-(IBAction) clickButtonPressed;

@end
