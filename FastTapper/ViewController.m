//
//  ViewController.m
//  FastTapper
//
//  Created by tstone10 on 5/23/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *txtClicks;
@property (weak, nonatomic) IBOutlet UILabel *btnStart;
@property (weak, nonatomic) IBOutlet UILabel *txtTimer;
@property (weak, nonatomic) IBOutlet UILabel *btnClick;

@end

@implementation ViewController

NSInteger buttonTaps = 0;
int timeTick;
NSTimer *timer;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    timeTick = 10;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startButtonPressed {
    //NSLog(@"Button working");
    [timer invalidate];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(myTicker) userInfo:nil repeats:YES];
    _btnStart.hidden = YES;
}

- (void)myTicker {
    //increment the timer
    //timeTick++;
    timeTick--;
    
    //if we wanted to count down we could have done "timeTick--"
    
    //set a text label to display the time
    NSString *timeString =[[NSString alloc] initWithFormat:@"%d", timeTick];
    _txtTimer.text = timeString;
    
    //if we want the timer to stop after a certain number of seconds we can do
    if ([timeString isEqualToString:@"0"]) {//stop the timer after 60 seconds
        [timer invalidate];
        [self endGame];
    }
}

- (void) endGame {
    _btnClick.hidden = YES;
    if (buttonTaps >= 20) {
        _txtTimer.text = @"You win - Congratulations!";
    } else {
        _txtTimer.text = @"You lose - You're too slow.";
    }
}

- (IBAction)clickButtonPressed {
    buttonTaps = buttonTaps + 1;
    //NSLog(@"Current Button Taps = %lu", buttonTaps);
    _txtClicks.text = [NSString stringWithFormat:@"%lu", buttonTaps];
}

@end
