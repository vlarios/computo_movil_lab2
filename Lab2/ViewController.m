//
//  ViewController.m
//  Lab2
//
//  Created by Victor Larios on 10/8/14.
//
//

#import "ViewController.h"
#import "Declarations.h"
#import "cellState.h"
#import "Cities.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"Here0");
    states     =  [NSMutableArray arrayWithObjects: @"Jalisco", @"Colima", @"Michoacan", @"Nayarit", @"Sonora", @"Sinaloa", @"Chiapas", @"Tabasco", nil];
    NSLog(@"array assigned");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSLog(@"Here1");
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"Here2");
    return 8;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Here3");
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSLog(@"Here4");
    
    
    static NSString *CellIdentifier = @"cellState";
    
    cellState *cell = (cellState *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[cellState alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSLog(@"Here5");
    
    cell.lblName.text       = states[indexPath.row];
    
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    strSelectedState     = [NSString stringWithFormat:@"%@", states[indexPath.row]];
    
    
    NSString * storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"Cities"];
    [self presentViewController:vc animated:YES completion:nil];
}


@end
