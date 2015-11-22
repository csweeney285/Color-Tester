//
//  ViewController.h
//  Conor Sweeney - Color Tester Test
//
//  Created by Conor Sweeney on 11/20/15.
//  Copyright © 2015 Conor Sweeney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *colorRect;

@property (weak, nonatomic) IBOutlet UILabel *redHex;
@property (weak, nonatomic) IBOutlet UILabel *greenHex;
@property (weak, nonatomic) IBOutlet UILabel *blueHex;
@property (weak, nonatomic) IBOutlet UILabel *alphaHex;

- (IBAction)redSliderMoved:(id)sender;
- (IBAction)greenSliderMoved:(id)sender;
- (IBAction)blueSliderMoved:(id)sender;
- (IBAction)alphaSliderMoved:(id)sender;

@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISlider *alphaSlider;

-(void)getColor;

@property (weak, nonatomic) IBOutlet UILabel *currentColorHex;

- (void)hexStringForColor:(UIColor *)color;

@end

