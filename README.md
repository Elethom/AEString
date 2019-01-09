# AEString [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-brightgreen.svg)](https://github.com/Carthage/Carthage) [![Language](https://img.shields.io/badge/language-Swift-orange.svg)](../../search) [![License](https://img.shields.io/github/license/Elethom/AEString.svg)](/LICENSE)

Slice strings like a boss.

## Usage

Let's create a string first.

```swift
var string = "abcdefghijklmnopqrstuvwxyz"
```

### Get character

```swift
string[0]
"a"

string[-1]
"z"

string[6]
"g"

string[-6]
"u"
```

### Slice string

#### From the beginning

```swift
string[0,7]
"abcdefg"
```
#### In the middle

```swift
string[3,7]
"defg"
```

#### To the end

```swift
string[3,0]
"defghijklmnopqrstuvwxyz"
```

#### Negative value for counting from backwards

```swift
string[0,-6]
"abcdefghijklmnopqrst"

string[-6,0]
"uvwxyz"

string[-6,-2]
"uvwx"
```

#### Add step

```swift
string[3,14,2]
"dfhjln"

string[3,15,3]
"dgjm"

string[3,16,3]
"dgjmp"
```

#### Step can be negative value too

`-1` for quick reverse.

```swift
string[3,7,-1]
"gfed"

string[0,0,-1]
"zyxwvutsrqponmlkjihgfedcba"

string[5,15,-3]
"olif"
```

### Misc

#### Determine if it contains CJK characters

```swift
string.containsCJKCharacters
false

"苟利國家生死以，豈因禍福避趨之。".containsCJKCharacters
true
```

## License

This project is released under the terms and conditions of the [MIT license](http://opensource.org/licenses/MIT). See [LICENSE](/LICENSE) for details.

## Contact

This project is designed and developed by [Elethom Hunter](http://github.com/Elethom). You can reach me via:

* Email: elethomhunter@gmail.com
* Telegram: [@elethom](http://telegram.me/elethom)
* Twitter: [@ElethomHunter](https://twitter.com/ElethomHunter)
