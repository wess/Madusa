# Introducing Medusa
Medusa is a tiny library that implements Map/Reduce on an NSArray (and more to come!).

## Example Usage:
```objectivec

#import <Madusa/Madusa.h>

NSArray *array = @[@"foo", @"bar", @"baz"];
array = array.map(^id(NSString *string){
	return [string uppercaseString];
});

NSLog(@"mapped array: %@", array);
// Output: "FOO", "BAR", "BAZ"

NSString *result = array.reduce("initial", ^id(NSString *sum, NSString *string){
	return [NSString stringWithFormat:@"%@.%@", sum, string];
});

NSLog(@"Reduced result: %@", result);
// Output: "initial.FOO.BAR.BAZ"

```


## If you need me
* [Github](http://www.github.com/wess)
* [@WessCope](http://www.twitter.com/wesscope)

## License
Read LICENSE file for more info.