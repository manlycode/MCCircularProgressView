# CircularProgressView
A scalable progress view that fits in a tiny amount of space.

## Installation

CocoaPods

```ruby
pod 'CircularProgressView', '~> 1.0.0'
```



## How to use

### Interface Builder
Within Interface Builder, set a UIView's custom class to
"MCCircularProgressView". The indicator will automatically scale to the
size of the smallest dimension of the UIView.

### Programmatically

Include the class:

```obj-c
#include <MCCircularProgressView.h>
```

#### Initialization
Initialize MCCircularProgressView and add it to the subView like you would any UIView:

```obj-c
MCCircularProgressView *progressView = [[MCCircularProgressView alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
[self.view addSubview:progressView];
```

#### Customization
You can change the color of the indicator by specifying the
_circleColor_ property:


```obj-c
progressView.circleColor = [UIColor redColor];
```


## Screenshots

![CircularProgressView with some progress](/CircularProgressView/Screenshots/small.PNG?raw=true "")
![CircularProgressView with more progress](/CircularProgressView/Screenshots/medium.PNG?raw=true"")
![CircularProgressView with even more progress](/CircularProgressView/Screenshots/large.PNG?raw=true "")
