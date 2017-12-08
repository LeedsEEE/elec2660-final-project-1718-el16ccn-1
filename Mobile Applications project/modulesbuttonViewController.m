//
//  modulesbuttonViewController.m
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 08/12/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import "modulesbuttonViewController.h"

@interface modulesbuttonViewController ()

@end

@implementation modulesbuttonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _doneeditingButton.hidden= true;
    
    
    _module1nameTextfield.enabled=false;
    _module1codeTextField.enabled=false;
    _module1creditsTextField.enabled=false;
    _module1assessmentTextView.editable=false;
    _modulelecturerTextField.enabled=false;
    
    _module2nameTextfield.enabled=false;
    _module2codeTextField.enabled=false;
    _module2creditsTextField.enabled=false;
    _module2assessmentTextView.editable=false;
    _module2lecturerTextField.enabled=false;
    
    _module3nameTextfield.enabled=false;
    _module3codeTextField.enabled=false;
    _module3creditsTextField.enabled=false;
    _module3assessmentTextView.editable=false;
    _module3lecturerTextField.enabled=false;
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)viewaddbuttonPressed:(id)sender {
    
    
    _module1nameTextfield.enabled=true;
    _module1codeTextField.enabled=true;
    _module1creditsTextField.enabled=true;
    _module1assessmentTextView.editable=true;
    _modulelecturerTextField.enabled=true;
    
    _module2nameTextfield.enabled=true;
    _module2codeTextField.enabled=true;
    _module2creditsTextField.enabled=true;
    _module2assessmentTextView.editable=true;
    _module2lecturerTextField.enabled=true;
    
    _module3nameTextfield.enabled=true;
    _module3codeTextField.enabled=true;
    _module3creditsTextField.enabled=true;
    _module3assessmentTextView.editable=true;
    _module3lecturerTextField.enabled=true;
    
    _editButton.hidden=true;
    _doneeditingButton.hidden=false;
    
    _module1assessmentLabel.text=@"Insert Assessment Informantion";
    _module2assessmentLabel.text=@"Insert Assessment Informantion";
    _module3assessmentLabel.text=@"Insert Assessment Informantion";
    
    
    
    //first load string
    
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
     NSString *loadstring1 = [defaults1 objectForKey:@"modulessaveString1"];
    [_module1nameTextfield setText:loadstring1];
    
    
    //second load string
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring2 = [defaults2 objectForKey:@"modulessaveString2"];
    [_module1codeTextField setText:loadstring2];
    
    //third load string
    NSUserDefaults *defaults3 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring3 = [defaults3 objectForKey:@"modulessaveString3"];
    [_module1creditsTextField setText:loadstring3];
    
    //fourth load string
    NSUserDefaults *defaults4 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring4 = [defaults4 objectForKey:@"modulessaveString4"];
    [_module1assessmentTextView setText:loadstring4];
    
    //fifth load string
    NSUserDefaults *defaults5 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring5 = [defaults5 objectForKey:@"modulessaveString5"];
    [_modulelecturerTextField setText:loadstring5];
    
    //sixth load string
    NSUserDefaults *defaults6 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring6 = [defaults6 objectForKey:@"modulessaveString6"];
    [_module2nameTextfield setText:loadstring6];
    
    
    //7 load string
    
    NSUserDefaults *defaults7 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring7 = [defaults7 objectForKey:@"modulessaveString7"];
    [_module2codeTextField setText:loadstring7];
    
    
    //8 load string
    NSUserDefaults *defaults8 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring8 = [defaults8 objectForKey:@"modulessaveString8"];
    [_module2creditsTextField setText:loadstring8];
    
    //9 load string
    NSUserDefaults *defaults9 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring9 = [defaults9 objectForKey:@"modulessaveString9"];
    [_module2assessmentTextView setText:loadstring9];
    
    //10 load string
    NSUserDefaults *defaults10 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring10 = [defaults10 objectForKey:@"modulessaveString10"];
    [_module2lecturerTextField setText:loadstring10];
    
    //11 load string
    NSUserDefaults *defaults11 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring11 = [defaults11 objectForKey:@"modulessaveString11"];
    [_module3nameTextfield setText:loadstring11];
    
    //12 load string
    NSUserDefaults *defaults12 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring12 = [defaults12 objectForKey:@"modulessaveString12"];
    [_module3codeTextField setText:loadstring12];
    
    
    //13 load string
    
    NSUserDefaults *defaults13 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring13 = [defaults13 objectForKey:@"modulessaveString13"];
    [_module3creditsTextField setText:loadstring13];
    
    
    //14 load string
    NSUserDefaults *defaults14 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring14 = [defaults14 objectForKey:@"modulessaveString14"];
    [_module3assessmentTextView setText:loadstring14];
    
    //15 load string
    NSUserDefaults *defaults15 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring15 = [defaults15 objectForKey:@"modulessaveString15"];
    [_module3lecturerTextField setText:loadstring15];

    
}
- (IBAction)doneeditingButtonPressed:(id)sender {
    _doneeditingButton.hidden=true;
    _editButton.hidden=false;
    
    _module1assessmentLabel.text=@"Assessment Info";
    _module2assessmentLabel.text=@"Assessment Info";
    _module3assessmentLabel.text=@"Assessment Info";
    
    _module1nameTextfield.enabled=false;
    _module1codeTextField.enabled=false;
    _module1creditsTextField.enabled=false;
    _module1assessmentTextView.editable=false;
    _modulelecturerTextField.enabled=false;
    
    _module2nameTextfield.enabled=false;
    _module2codeTextField.enabled=false;
    _module2creditsTextField.enabled=false;
    _module2assessmentTextView.editable=false;
    _module2lecturerTextField.enabled=false;
    
    _module3nameTextfield.enabled=false;
    _module3codeTextField.enabled=false;
    _module3creditsTextField.enabled=false;
    _module3assessmentTextView.editable=false;
    _module3lecturerTextField.enabled=false;
    
    
    //First save string
    NSString *modulessaveString1 = _module1nameTextfield.text;
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
    [defaults1 setObject:modulessaveString1 forKey:@"modulessaveString1"];
    [defaults1 synchronize];
    //_loaded.text = @"Data loaded successfully";
    
    //Second save string
    NSString *modulessaveString2 = _module1codeTextField.text;
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    [defaults2 setObject:modulessaveString2 forKey:@"modulessaveString2"];
    [defaults2 synchronize];
    
    //Third save string
    NSString *modulessaveString3 = _module1creditsTextField.text;
    NSUserDefaults *defaults3 = [NSUserDefaults standardUserDefaults];
    [defaults3 setObject:modulessaveString3 forKey:@"modulessaveString3"];
    [defaults3 synchronize];
    
    //Fourth save string
    NSString *modulessaveString4 = _module1assessmentTextView.text;
    NSUserDefaults *defaults4 = [NSUserDefaults standardUserDefaults];
    [defaults4 setObject:modulessaveString4 forKey:@"modulessaveString4"];
    [defaults4 synchronize];
    
    //Fifth save string
    NSString *modulessaveString5 = _modulelecturerTextField.text;
    NSUserDefaults *defaults5 = [NSUserDefaults standardUserDefaults];
    [defaults5 setObject:modulessaveString5 forKey:@"modulessaveString5"];
    [defaults5 synchronize];
    
    //sixth save string
    NSString *modulessaveString6 = _module2nameTextfield.text;
    NSUserDefaults *defaults6 = [NSUserDefaults standardUserDefaults];
    [defaults6 setObject:modulessaveString6 forKey:@"modulessaveString6"];
    [defaults6 synchronize];
    //_loaded.text = @"Data loaded successfully";
    
    //Seventh save string
    NSString *modulessaveString7 = _module2codeTextField.text;
    NSUserDefaults *defaults7 = [NSUserDefaults standardUserDefaults];
    [defaults7 setObject:modulessaveString7 forKey:@"modulessaveString7"];
    [defaults7 synchronize];
    
    //eight save string
    NSString *modulessaveString8 = _module2creditsTextField.text;
    NSUserDefaults *defaults8 = [NSUserDefaults standardUserDefaults];
    [defaults8 setObject:modulessaveString8 forKey:@"modulessaveString8"];
    [defaults8 synchronize];
    
    //ninth save string
    NSString *modulessaveString9 = _module2assessmentTextView.text;
    NSUserDefaults *defaults9 = [NSUserDefaults standardUserDefaults];
    [defaults9 setObject:modulessaveString9 forKey:@"modulessaveString9"];
    [defaults9 synchronize];
    
    //tenth save string
    NSString *modulessaveString10 = _module2lecturerTextField.text;
    NSUserDefaults *defaults10 = [NSUserDefaults standardUserDefaults];
    [defaults10 setObject:modulessaveString10 forKey:@"modulessaveString10"];
    [defaults10 synchronize];
    
    //11th save string
    NSString *modulessaveString11 = _module3nameTextfield.text;
    NSUserDefaults *defaults11 = [NSUserDefaults standardUserDefaults];
    [defaults11 setObject:modulessaveString11 forKey:@"modulessaveString11"];
    [defaults11 synchronize];
    //_loaded.text = @"Data loaded successfully";
    
    //12th save string
    NSString *modulessaveString12 = _module3codeTextField.text;
    NSUserDefaults *defaults12 = [NSUserDefaults standardUserDefaults];
    [defaults12 setObject:modulessaveString12 forKey:@"modulessaveString12"];
    [defaults12 synchronize];
    
    //13th save string
    NSString *modulessaveString13 = _module3creditsTextField.text;
    NSUserDefaults *defaults13 = [NSUserDefaults standardUserDefaults];
    [defaults13 setObject:modulessaveString13 forKey:@"modulessaveString13"];
    [defaults13 synchronize];
    
    //14th save string
    NSString *modulessaveString14 = _module3assessmentTextView.text;
    NSUserDefaults *defaults14 = [NSUserDefaults standardUserDefaults];
    [defaults14 setObject:modulessaveString14 forKey:@"modulessaveString14"];
    [defaults14 synchronize];
    
    //15th save string
    NSString *modulessaveString15 = _module3lecturerTextField.text;
    NSUserDefaults *defaults15 = [NSUserDefaults standardUserDefaults];
    [defaults15 setObject:modulessaveString15 forKey:@"modulessaveString15"];
    [defaults15 synchronize];
    
}
@end
