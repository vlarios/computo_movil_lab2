//
//  Cities.m
//  Lab2
//
//  Created by Victor Larios on 10/8/14.
//
//

#import "Cities.h"
#import "Declarations.h"
#import "cellCity.h"

@interface Cities ()

@end

@implementation Cities

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.lblName.text           = strSelectedState;
    self.imgCity.image     = [UIImage imageNamed:strSelectedStateImg];
    
    if ([strSelectedState isEqualToString:@"Colima"]) {
        //self.imgCity.image     = [UIImage imageNamed:@"guadalajara.jpg"];
        citiesName     =  [NSMutableArray arrayWithObjects: @"Colima", @"Manzanillo", @"Tecoman", nil];
        citiesImg     =  [NSMutableArray arrayWithObjects: @"Colima.jpg", @"Manzanillo.jpg", @"Tecoman.jpg", nil];
    }
    
    if ([strSelectedState isEqualToString:@"Jalisco"]) {
        //self.imgCity.image     = [UIImage imageNamed:@"guadalajara.jpg"];
        citiesName     =  [NSMutableArray arrayWithObjects: @"Guadalajara", @"Guzman", @"Tepatitlan", nil];
        citiesImg     =  [NSMutableArray arrayWithObjects: @"guadalajara.jpg", @"Guzman.jpg", @"Tepa.jpg", nil];
    }
    
    if ([strSelectedState isEqualToString:@"Nayarit"]) {
        //self.imgCity.image     = [UIImage imageNamed:@"guadalajara.jpg"];
        citiesName     =  [NSMutableArray arrayWithObjects: @"Tepic", @"Compostela", @"Acaponeta", nil];
        citiesImg     =  [NSMutableArray arrayWithObjects: @"Tepic.jpg", @"Compostela.jpg", @"Acaponeta.jpg", nil];
    }
    
    if ([strSelectedState isEqualToString:@"Michoacan"]) {
        //self.imgCity.image     = [UIImage imageNamed:@"guadalajara.jpg"];
        citiesName     =  [NSMutableArray arrayWithObjects: @"Morelia", @"Patzcuaro", @"Uruapan", nil];
        citiesImg     =  [NSMutableArray arrayWithObjects: @"Morelia.jpg", @"Patzcuaro.jpg", @"Uruapan.jpg", nil];
    }
    
    if ([strSelectedState isEqualToString:@"Sonora"]) {
        //self.imgCity.image     = [UIImage imageNamed:@"guadalajara.jpg"];
        citiesName     =  [NSMutableArray arrayWithObjects: @"Hermosillo", @"Obregon", @"Nogales", nil];
        citiesImg     =  [NSMutableArray arrayWithObjects: @"Hermosillo.jpg", @"Obregon.jpg", @"Nogales.jpg", nil];
    }
    
    if ([strSelectedState isEqualToString:@"Sinaloa"]) {
        //self.imgCity.image     = [UIImage imageNamed:@"guadalajara.jpg"];
        citiesName     =  [NSMutableArray arrayWithObjects: @"Los Mochis", @"Culiacan", @"Mazatlan", nil];
        citiesImg     =  [NSMutableArray arrayWithObjects: @"LosMochis.jpg", @"Culiacan.jpg", @"Mazatlan.jpg", nil];
    }
    
    if ([strSelectedState isEqualToString:@"Chiapas"]) {
        //self.imgCity.image     = [UIImage imageNamed:@"guadalajara.jpg"];
        citiesName     =  [NSMutableArray arrayWithObjects: @"Tuxtla Gutierrez", @"Arriaga", @"Tapachula", nil];
        citiesImg     =  [NSMutableArray arrayWithObjects: @"TuxtlaGutierrez.jpg", @"Arriaga.jpg", @"Tapachula.jpg", nil];
    }
    
    if ([strSelectedState isEqualToString:@"Tabasco"]) {
        //self.imgCity.image     = [UIImage imageNamed:@"guadalajara.jpg"];
        citiesName     =  [NSMutableArray arrayWithObjects: @"Macuspana", @"Paraiso", @"Teapa", nil];
        citiesImg     =  [NSMutableArray arrayWithObjects: @"Macuspana.jpg", @"Paraiso.jpg", @"Teapa.jpg", nil];
    }
   
}

- (void)didReceiveMemoryWarning
{
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
    return 3;
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
    
    
    static NSString *CellIdentifier = @"cellCity";
    
    cellCity *cell = (cellCity *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[cellCity alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    //NSLog(@"Here5");
    
    cell.lblName.text       = citiesName[indexPath.row];
    cell.imgCity.image    = [UIImage imageNamed:citiesImg[indexPath.row]];
    
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    strSelectedCityName     = [NSString stringWithFormat:@"%@", citiesName[indexPath.row]];
    strSelectedCityImg      = [NSString stringWithFormat:@"%@", citiesImg[indexPath.row]];
    self.lblName.text = strSelectedCityName;
    self.imgCity.image     = [UIImage imageNamed:strSelectedCityImg];
    
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
