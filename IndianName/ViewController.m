//
//  ViewController.m
//  IndianName
//
//  Created by 이 상찬 on 12. 1. 11..
//  Copyright (c) 2012 KTH. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize birthDayPicker;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSDate *date;
    NSDateComponents *com;
    
    com = [[NSDateComponents alloc] init];
    com.year = 1982;
    com.month = 1;
    com.day = 1;
    com.hour = 00;
    com.minute = 00;
    com.second = 00;
    
    date = [[NSCalendar currentCalendar] dateFromComponents:com];
    
    birthDayPicker.date = date;
    
    yearWord = @[@"시끄러운(말많은)",
                @"푸른",
                @"어두운(적색)",
                @"조용한",
                @"웅크린",
                @"백색",
                @"지혜로운",
                @"용감한",
                @"날카로운",
                @"욕심많은"];
    
    monthWord = @[@"늑대",
                @"태양",
                @"양",
                @"매",
                @"황소",
                @"불꽃",
                @"나무",
                @"달빛",
                @"말",
                @"돼지",
                @"하늘",
                @"바람"];
    
    dayWord = @[@"~와(과) 함께춤을",
               @"의 기상",
               @"은(는) 그림자속에",
               @" ",
               @" ",
               @" ",
               @"의 환생",
               @"의 죽음",
               @" 아래에서",
               @"를(을) 보라",
               @"이(가) 노래하다.", 
               @"의 그늘(그림자)",
               @"의 일격",
               @"에게 쫓기는 남자",
               @"의 행진",
               @"의 왕",
               @"의 유령",
               @"을 죽인자",
               @"는(은) 맨날 잠잔다",
               @"처럼..",
               @"의 고향",
               @"의 전사",
               @"은(는) 나의친구",
               @"의 노래",
               @"의 정령",
               @"의 파수꾼",
               @"의 악마",
               @"와(과)같은 사나이",
               @"의 심판자",
               @"의 혼 ",
               @"은(는) 말이없다."];
    
    NSLog(@"%@",yearWord.description);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

# pragma mark IBAction

-(IBAction)sendButtonTapped:(id)sender {
    NSLog(@"%d",(NSInteger)birthDayPicker.date);
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    outputFormatter.dateFormat = @"yyyy/MM/dd";
    NSString *date = [outputFormatter stringFromDate:birthDayPicker.date];
    NSLog(@"%@",date);
    NSArray *dateArray = date.pathComponents;
    NSLog(@"%@",dateArray.description);
    
    int iYear = [dateArray[0]intValue];
    int iMonth = [dateArray[1]intValue];
    int iDate = [dateArray[2]intValue];
    
    
    NSLog(@"이름1: %@",yearWord[iYear%10]);
    NSLog(@"이름2: %@",monthWord[iMonth-1]);
    NSLog(@"이름3: %@",dayWord[iDate-1]);

    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"인디언 이름" 
                                                   message:[NSString stringWithFormat:@"%@ %@ %@",yearWord[iYear%10],monthWord[iMonth-1],dayWord[iDate-1]]
                                                  delegate:self 
                                         cancelButtonTitle:@"OK" 
                                         otherButtonTitles:nil];
    
    [alert show];
}


@end
