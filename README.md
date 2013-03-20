Temperatures (Complete)
==============

First commit - d6b8eb1c9739f5936d328605e8afa7698140d34b   

1. Create a new project called Temperatures. Set the prefix to `TM`.
2. Open `TMViewController.xib` and drag in 1. A UITextField 2. 2 UIButton's. The buttons should have the text `F to C` and `C to F` respectively.
3. Create 3 properties in `TMViewController.h` like so:

        @property (weak, nonatomic) IBOutlet UITextField *temperatureTextField;
        @property (weak, nonatomic) IBOutlet UIButton *farenheightButton;
        @property (weak, nonatomic) IBOutlet UIButton *celsiusButton;

4. Connect those IBOutlets to their respective buttons in `TMViewController.xib`.

