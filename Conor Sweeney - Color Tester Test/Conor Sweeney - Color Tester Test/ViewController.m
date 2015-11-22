//
//  ViewController.m
//  Conor Sweeney - Color Tester Test
//
//  Created by Conor Sweeney on 11/20/15.
//  Copyright © 2015 Conor Sweeney. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.redHex.text = [NSString stringWithFormat: @"%f",self.redSlider.value];
    self.blueHex.text = [NSString stringWithFormat: @"%f",self.blueSlider.value];
    self.greenHex.text = [NSString stringWithFormat: @"%f",self.greenSlider.value];
    self.alphaHex.text = [NSString stringWithFormat: @"%f",self.alphaSlider.value];
    [self getColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)redSliderMoved:(id)sender {
    NSLog(@"Red Slider moved");
    self.redHex.text = [NSString stringWithFormat: @"%f",self.redSlider.value];
    [self getColor];
}
                        

- (IBAction)greenSliderMoved:(id)sender {
    NSLog(@"Green Slider moved");
    self.greenHex.text = [NSString stringWithFormat: @"%f",self.greenSlider.value];
    [self getColor];
}

- (IBAction)blueSliderMoved:(id)sender {
    NSLog(@"Blue Slider moved");
    self.blueHex.text = [NSString stringWithFormat: @"%f",self.blueSlider.value];
    [self getColor];
}

- (IBAction)alphaSliderMoved:(id)sender {
    NSLog(@"Alpha Slider moved");
    self.alphaHex.text = [NSString stringWithFormat: @"%f",self.alphaSlider.value];
    [self getColor];
}

-(void)getColor{
    self.colorRect.backgroundColor = [UIColor colorWithRed:(self.redSlider.value)/255.0 green:(self.greenSlider.value)/255.0 blue:(self.blueSlider.value)/255.0 alpha:(self.alphaSlider.value)/255.0];
    [self hexStringForColor:self.colorRect.backgroundColor];
}

- (void)hexStringForColor:(UIColor *)color{
    const CGFloat *components = CGColorGetComponents(color.CGColor);
    CGFloat r = components[0];
    CGFloat g = components[1];
    CGFloat b = components[2];
    NSString *hexString=[NSString stringWithFormat:@"%02X%02X%02X", (int)(r * 255), (int)(g * 255), (int)(b * 255)];
    self.currentColorHex.text = hexString;
}
@end
