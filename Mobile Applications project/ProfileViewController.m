//
//  ProfileViewController.m
//  Mobile Applications project
//
//  Created by Chukwuebuka Nwibe on 28/11/2017.
//  Copyright © 2017 Chukwuebuka Nwibe. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _hometextField.hidden=true;
    _home2TextField.hidden=true;
    _workTextField.hidden=true;
    _work2TextField.hidden=true;
    _nameTextField.hidden=true;
    _courseTextField.hidden=true;
    _doneButton.hidden=true;
    self.nameLabel.text= _nameTextField.text;
    self.courseLabel.text= _courseTextField.text;
    self.homeLabel.text= _hometextField.text;
    self.home2Label.text=_home2TextField.text;
    self.work2Label.text=_work2TextField.text;
    self.workLabel.text= _workTextField.text;
    
    
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

- (IBAction)editbuttonPressed:(id)sender {
    self.hometextField.hidden=false;
    self.home2TextField.hidden=false;
    self.workTextField.hidden=false;
    self.work2TextField.hidden=false;
    self.nameTextField.hidden=false;
    self.courseTextField.hidden=false;
    self.editButton.hidden=true;
    _doneButton.hidden=false;
    self.viewmodulesButton.hidden=true;
    self.settingsButton.hidden=true;
    _loadprofile.hidden=true;
    self.nameLabel.hidden=true;
    self.courseLabel.hidden=true;
    self.homeLabel.hidden=true;
    self.home2Label.hidden=true;
    self.workLabel.hidden=true;
    self.work2Label.hidden=true;
   
    
    
    
    
     //first load string
     NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
     NSString *loadstring1 = [defaults1 objectForKey:@"saveString1"];
     [_nameTextField setText:loadstring1];
     
     //second load string
     NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
     NSString *loadstring2 = [defaults2 objectForKey:@"saveString2"];
     [_courseTextField setText:loadstring2];
     
     //third load string
     NSUserDefaults *defaults3 = [NSUserDefaults standardUserDefaults];
     NSString *loadstring3 = [defaults3 objectForKey:@"saveString3"];
     [_hometextField setText:loadstring3];
     
     //fourth load string
     NSUserDefaults *defaults4 = [NSUserDefaults standardUserDefaults];
     NSString *loadstring4 = [defaults4 objectForKey:@"saveString4"];
     [_workTextField setText:loadstring4];
    
    //fifth load string
    NSUserDefaults *defaults5 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring5 = [defaults5 objectForKey:@"saveString5"];
    [_work2TextField setText:loadstring5];
    
    //sixth load string
    NSUserDefaults *defaults6 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring6 = [defaults6 objectForKey:@"saveString6"];
    [_home2TextField setText:loadstring6];
    
    
    
    /* //First save string
    NSString *saveString1 = _nameTextField.text;
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
    [defaults1 setObject:saveString1 forKey:@"saveString1"];
    [defaults1 synchronize];
    //_loaded.text = @"Data loaded successfully";
    
    //Second save string
    NSString *saveString2 = _courseTextField.text;
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    [defaults2 setObject:saveString2 forKey:@"saveString2"];
    [defaults2 synchronize];
    
    //Third save string
    NSString *saveString3 = _hometextField.text;
    NSUserDefaults *defaults3 = [NSUserDefaults standardUserDefaults];
    [defaults2 setObject:saveString3 forKey:@"saveString3"];
    [defaults3 synchronize];
    
    //Fourth save string
    NSString *saveString4 = _workTextField.text;
    NSUserDefaults *defaults4 = [NSUserDefaults standardUserDefaults];
    [defaults4 setObject:saveString4 forKey:@"saveString4"];
    [defaults4 synchronize];*/
    
    
}

- (IBAction)viewmodulesbuttonPressed:(id)sender {
}

- (IBAction)donebuttonPressed:(id)sender {
    self.nameLabel.text= _nameTextField.text;
    self.courseLabel.text= _courseTextField.text;
    self.homeLabel.text= _hometextField.text;
    self.home2Label.text=_home2TextField.text;
    self.work2Label.text=_work2TextField.text;
    self.workLabel.text= _workTextField.text;
    
    self.hometextField.hidden=true;
    self.home2TextField.hidden=true;
    self.workTextField.hidden=true;
    self.work2TextField.hidden=true;
    self.nameTextField.hidden=true;
    self.courseTextField.hidden=true;
    
    self.nameLabel.hidden=false;
    self.courseLabel.hidden=false;
    self.homeLabel.hidden=false;
    self.home2Label.hidden=false;
    self.workLabel.hidden=false;
    self.work2Label.hidden=false;
    
    _doneButton.hidden=true;
    _editButton.hidden=false;
    self.viewmodulesButton.hidden=false;
    self.settingsButton.hidden=false;
    _loadprofile.hidden=false;
    
   
    
    
     //First save string
     NSString *saveString1 = _nameTextField.text;
     NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
     [defaults1 setObject:saveString1 forKey:@"saveString1"];
     [defaults1 synchronize];
     //_loaded.text = @"Data loaded successfully";
     
     //Second save string
     NSString *saveString2 = _courseTextField.text;
     NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
     [defaults2 setObject:saveString2 forKey:@"saveString2"];
     [defaults2 synchronize];
     
     //Third save string
     NSString *saveString3 = _hometextField.text;
     NSUserDefaults *defaults3 = [NSUserDefaults standardUserDefaults];
     [defaults2 setObject:saveString3 forKey:@"saveString3"];
     [defaults3 synchronize];
     
     //Fourth save string
     NSString *saveString4 = _workTextField.text;
     NSUserDefaults *defaults4 = [NSUserDefaults standardUserDefaults];
     [defaults4 setObject:saveString4 forKey:@"saveString4"];
     [defaults4 synchronize];
    
    //Fifth save string
    NSString *saveString5 = _work2TextField.text;
    NSUserDefaults *defaults5 = [NSUserDefaults standardUserDefaults];
    [defaults5 setObject:saveString5 forKey:@"saveString5"];
    [defaults5 synchronize];
    
    //Sixth save string
    NSString *saveString6 = _home2TextField.text;
    NSUserDefaults *defaults6 = [NSUserDefaults standardUserDefaults];
    [defaults6 setObject:saveString6 forKey:@"saveString6"];
    [defaults6 synchronize];
    
    
    
    
    /* //first load string
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring1 = [defaults1 objectForKey:@"saveString1"];
    [_nameTextField setText:loadstring1];
    
    //second load string
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring2 = [defaults2 objectForKey:@"saveString2"];
    [_courseTextField setText:loadstring2];
    
    //third load string
    NSUserDefaults *defaults3 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring3 = [defaults3 objectForKey:@"saveString3"];
    [_hometextField setText:loadstring3];
    
    //fourth load string
    NSUserDefaults *defaults4 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring4 = [defaults4 objectForKey:@"saveString4"];
    [_workTextField setText:loadstring4];*/
}
- (IBAction)loadprofilePressed:(id)sender {
    self.nameLabel.text= _nameTextField.text;
    self.courseLabel.text= _courseTextField.text;
    self.homeLabel.text= _hometextField.text;
    self.home2Label.text=_home2TextField.text;
    self.workLabel.text= _workTextField.text;
    self.work2Label.text=_work2TextField.text;
    
    
    //first load string
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring1 = [defaults1 objectForKey:@"saveString1"];
    [_nameTextField setText:loadstring1];
    
    //second load string
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring2 = [defaults2 objectForKey:@"saveString2"];
    [_courseTextField setText:loadstring2];
    
    //third load string
    NSUserDefaults *defaults3 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring3 = [defaults3 objectForKey:@"saveString3"];
    [_hometextField setText:loadstring3];
    
    //fourth load string
    NSUserDefaults *defaults4 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring4 = [defaults4 objectForKey:@"saveString4"];
    [_workTextField setText:loadstring4];
    
    //fifth load string
    NSUserDefaults *defaults5 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring5 = [defaults5 objectForKey:@"saveString5"];
    [_work2TextField setText:loadstring5];
    
    //sixth load string
    NSUserDefaults *defaults6 = [NSUserDefaults standardUserDefaults];
    NSString *loadstring6 = [defaults6 objectForKey:@"saveString6"];
    [_home2TextField setText:loadstring6];
    
}
@end
