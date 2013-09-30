# MCCircularProgressView
A scalable progress view that fits in a tiny amount of space.

## Installation

CocoaPods

```ruby
pod 'MCCircularProgressView', '~> 1.0.4'
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

![MCCircularProgressView with some progress](/MCCircularProgressView/Screenshots/small.PNG?raw=true "")
![MCCircularProgressView with more progress](/MCCircularProgressView/Screenshots/medium.PNG?raw=true"")
![MCCircularProgressView with even more progress](/MCCircularProgressView/Screenshots/large.PNG?raw=true "")
