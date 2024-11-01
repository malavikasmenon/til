# Color Codes

## RGB

- There are different ways to represent a color, one of the most popular models is using RGB - which stands for red, green and blue.
- Each of R, G and B can take a value from 0-255 (00-FF in hexadecimal). So there can be a total of 255 * 255 * 255 colors represented with this model.
- So hexcode representation of color uses the same RGB model, #RRGGBB is the way of representation.

### Few common color representations
|  R  |  G  |  B  | Color |
|-----|-----|-----|-------|
| 0   |  0  | 0   | Black |
| 255 | 255 | 255 | White |
| 0   | 255 | 0   | Green |
| 255 | 0   | 0   | Red   |
| 0   | 0   | 255 | Blue  |

## HSL
- RGB is not a very intuitive way for humans to understand what color something is from a code combination, as we are talking about the mixtures of the three primary colors. Intutively you may not know what it means to have 30 of green mixed with 32 of red mixed with 45 of blue.
- HSL is a form of representing the color by way of position in the color spectrum using degrees.
- First, you find the position of the color on the color wheel, then you add a saturation value (greyness to the color), then a light value to the color.
- Similar to RGB, another model of representation is HSL (Hue, Saturation and Light)
- Hue represents the color on the color wheel, 0 is red, 120 is green and 240 is blue
- Saturation, also known as the intensity, describes the amount of grey in the color. 100% means purely the color, no grey. 0% means fully grey.
- Light is the amount of lightness you want to give the color 100% = white, 0%=black, 50% is neither black nor white
- In some codes, there's also A(Alpha) which can be used to describe the opacity of the light
- But HSL may not be supported in some old browsers.


## References
https://www.niwa.nu/2013/05/math-behind-colorspace-conversions-rgb-hsl/
https://www.merixstudio.com/blog/hsl-color-model