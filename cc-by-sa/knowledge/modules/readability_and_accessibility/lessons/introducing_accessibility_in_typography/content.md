Making [text](/glossary/text_copy) [accessible](https://www.google.com/accessibility/) should be part of everyday practice. However, general [typographic](/glossary/typography) practices of optimizing [legibility](/glossary/legibility) and [readability](/glossary/readability) don’t necessarily go all the way towards making text accessible.

First, let’s make sure we define **legibility** and **readability**. Both are measures of clarity.

- **Legibility** is the measure of how distinguishable individual characters and words are to the eye of the reader.
- **Readability** is the measure of how easy it is to read the text overall.

<figure>

![Two columns of text in red and black.](images/thumbnail.svg)

<figcaption>Top row: A comparison between less legible type set in Gill Sans and Prosto One (left) with more legible type set in Raleway and Noto Sans (right). Bottom row: A comparison between less readable type (left) with more readable type (right). Both paragraphs are set in Roboto and share the same absolute value of line-height for 9 lines, but different font-size values.</figcaption>

</figure>

## Choosing accessible type

[Accessible typography](https://www.visionaustralia.org/business-consulting/digital-access/blog/typography-in-inclusive-design-part-1#2) considerations start with choosing type. When selecting typefaces, seek out designs that have legibility built in alongside the other attributes you like. There is no single answer about which fonts are most accessible for everyone, but there are some things that can make a typeface more accessible to some people.

The examples in this section are for languages using the Latin writing system. However, the same principles of choosing typefaces where similar shapes in two or more characters are made more different or even unique do apply to other writing systems, especially within character groups like letterforms, numerals, punctuation marks, and symbols.

The type designers who created [Lexend](https://design.google/library/lexend-readability/) and [Atkinson Hyperlegible](https://material.io/blog/atkinson-hyperlegible-design) created these typefaces with specific designs that are intended to be easier to read. Other fonts, such as Poppins, have also become popular with individuals who have visual or cognitive disabilities.

## Checking legibility

[Counters](/glossary/counter), the white space within letters such as “o,” “e,” and “c,” can play a role in legibility. When the counters are open, there is more white space inside the letter and the letters may appear larger. Open counters can make it easier for the reader to differentiate similarly shaped letters, such as the “c” and “e”.

<figure>

![The letters “c,”, “o,” and “e” in different typefaces, showing the varying counter shapes.](images/accessibility_extra.svg)

<figcaption>Left (in red lines): Lowercase “c,” “o,” and “e” with closed counters. Right (in blue lines): Lowercase “c,” “o,” and “e” with open counters.</figcaption>

</figure>

## Checking readability

Mirroring or flipping is when readers find it difficult to read a character because it looks like another when flipped or rotated. For example, a reader could mistake a lowercase letter “b” for a lowercase “d” or “6” for “9”. Instead of reading the word “bog,” the reader will think the word is “dog.”

A different and more pervasive challenge among people with dyslexia and other reading difficulties is the transpositioning of letters. For example, the word “loin” may appear as “lion” or the word “lien” may appear as “line.”

To reduce mirroring and transpositioning, check character pairs like these to make sure they are distinct enough from each other:

- qp
- db
- 0O
- nu
- il1I
- 69
- a8
- a6
- 6g
- rn, m

When selecting a typeface—especially a [sans serif](/glossary/sans_serif)—it’s useful to assess the similarities or differences between the uppercase “L,” lowercase “l,” and numeral “1” characters because these letters and numbers all have the same simple structure of a single vertical stem. In addition to structural changes like serifs on the “1” or a tail on the “l”, subtle differences in height or stroke width can also improve legibility.

Many shapes are simply mirrored without any further alteration. Lowercase “b,” “d,” “p,” and “q” are the most commonly confused letters. Subtle edits to these letterforms help to differentiate them, such as changes to stroke contrast or counter width. Structural changes are even better.

<figure>

![b, d, q, and p characters set in different typefaces.](images/accessibility_2.svg)

<figcaption>Left: Mirroring of letterforms is employed in Helvetica (top) and Public Sans (bottom). Right: The non-mirrored letterforms used in Andika (top) and Atkinson Hyperlegible (bottom) help the reader avoid confusion with potentially similar characters.</figcaption>

</figure>

<figure>

![Google Fonts website screenshot with six boxes of glyphs](images/accessibility_3.png)

<figcaption>Comparison of “b,” ”d,” “q,” “p,” “a,” “8,” “6,” “g,” “a,” “6,” “1,” “I,” and “l” in Roboto, Abyssinica SIL, Intern Tights, Open Sans, Noto Sans Mono, and Noto Sans Japanese.</figcaption>

</figure>

Look for letters that can be clearly distinguished. For people with moderate to severe vision impairment, the characters “o,” ”c,” “e,” or “a” can be easily confused, which in turn makes words harder to identify.

<figure>

![Three columns of r, n, m, i, !, I, l, o, c, 0, O, C, a, 8, 6, g, a, 6](images/accessibility_4.svg)

<figcaption>From left to right: The typefaces Andika, Lexend, and Atkinson Hyperlegible show how effective they are in differentiating potentially confusing character combinations.</figcaption>

</figure>

## Accessible typography beyond typefaces

With our typeface(s) chosen, let’s move on to accessibility considerations for typesetting. The first place to start is to look at the structure of our content. For web typography, that means ensuring that the HTML is marked up with the most appropriate elements, such as headings with the right levels (h1, h2, etc.), and that the hierarchy looks as expected with the default styles used by the browser before we dive into any bespoke CSS.

Semantically structured HTML is not only good general practice, but it also means we’ll be making our content readable by assistive technologies that take advantage of the markup. For example, [screen readers](https://www.afb.org/blindness-and-low-vision/using-technology/assistive-technology-products/screen-readers)—assistive software that allows text to be dictated to users with visual or cognitive impairments, such as Google’s TalkBack on Android, Apple’s VoiceOver on iOS, and Freedom Scientific’s JAWS for Microsoft Windows—rely on the semantic HTML to give the reader critical information about structure that they cannot see visually. Many text-to-speech tools, such as Microsoft Immersive Reader and Snap & Read, provide visual and audio support together. These products rely on semantic information for determining how these supports look and sound. These software programs use either a [braille display](https://www.afb.org/node/16207/refreshable-braille-displays) or read text aloud.

The HTML reflects the visual hierarchy by reading the content from the top left (Step 1) to the top right (Step 2), bottom left (Step 3) to bottom right (Step 4).

<figure>

![Arrows showing zig-zag direction.](images/accessibility_5.svg)

<figcaption> Example code for displaying the images in a screen reader-friendly hierarchy.</figcaption>

</figure>

```html
<section id="instructions">
  <img class=”step-1”
  alt=”Description of image”
  />
  <img class=”step-2”
  alt=”Description of image”
  />
  <img class=”step-3”
  alt=”Description of image”
  />
  <img class=”step-4”
  alt=”Description of image”
  />
</section>
```

For more information on hierarchy, read [Material Design Accessibility Principles](https://m3.material.io/foundations/overview/principles), [Material Design Accessibility Structure](https://m3.material.io/foundations/designing/structure), [W3C Headings](https://www.w3.org/WAI/tutorials/page-structure/headings/), and the  [Document Object Model (DOM) order matters](https://developers.google.com/web/fundamentals/accessibility/focus/dom-order-matters) articles.

## Color

Color contrast is important for users to distinguish various text and non-text elements. Higher contrast makes the imagery easier to see. Low-contrast images or text may be hard for some users to differentiate in bright or low light conditions, such as on a very sunny day or at night.

Contrast ratios represent how different one color is from another color, commonly written as 1:1 or 21:1. The contrast ratio between a color and its background ranges from 1-21 based on its luminance (the intensity of light emitted). The greater the difference is between the two numbers in the ratio, the greater the difference in relative luminance between the colors. As the absolute bare minimum, the [W3C](https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-contrast.html) Web Content Accessibility Guidelines (WCAG) recommends the following contrast ratios for body and image text for an AA rating:

- Large text (at 14 pt bold/18 pt regular and up) and graphics: 3:1 against the background
- Small text: 4.5:1 against the background

The issue with color contrast can be complicated as some people with cognitive disabilities are sensitive to light and could experience eye fatigue or feel distracted when looking at high contrast text and images, such as black text on a white background at a 21:1 contrast ratio. A good middle ground is to aim for a 7:1 contrast ratio, the AAA rating for WCAG.

These lines of text follow the color contrast ratio recommendations and are legible against their background colors.

<figure>

![“The woodman set to work at once” text on two lines](images/accessibility_6.svg)

<figcaption>The black text on the white background and the white text on the black background meet color contrast standards.</figcaption>

</figure>

When picking up several colors for background, text, and other components, consider how readers perceive your choice of colors in addition to color contrast.

There are several different types of color blindness (also known as color vision deficiency). According to the British Colour Blind Awareness Organisation, there are an estimated 300 million people worldwide with color blindness. About 8% of men and 0.5% of women have red-green color blindness. The most common type is red-green color blindness, which causes difficulty recognizing shades of red, green, and yellow. [The ability to recognize and differentiate colors also deteriorates with age](https://www.webmd.com/healthy-aging/news/20140318/color-vision-tends-to-fade-with-age-study#1), even in those people who were not born with color blindness. Blue and yellow become increasingly difficult for most individuals to decipher as their eyes age.

For more info on color and contrast and color blindness, visit [Material Design Accessibility Color Contrast Guidelines](https://m3.material.io/foundations/designing/color-contrast), [Material Design Color System](https://m3.material.io/styles/color/system/overview), [The Perception of Color](https://www.britannica.com/science/color/The-perception-of-colour), and [Colour Blindness Awareness](https://www.colourblindawareness.org/colour-blindness/types-of-colour-blindness/). To see what different types of color blindness look like, try out the [Chromatic Vision Simulator application](https://play.google.com/store/apps/details?id=asada0.android.cvsimulator&hl=en_US&gl=US). To see if your choice of background and text colors meet color contrast guidelines, try the free [WebAIM contrast checker](https://webaim.org/resources/contrastchecker/) tool.

Note that the concept of contrast discussed here is different to contrast in type design, which addresses the differences between the thickest and thinnest parts of strokes in a letterform.

## Text size and spacing

Make sure your text isn’t too small. The exact dimensions of font sizes can vary depending on the unit used, the size of the viewport (if units are relative), and the pixel density of the device’s screen, but a safe bet would be to use 16px or 1em or 1rem as the smallest size for body type.

Employ generous line heights (although not so generous as to detach lines from each other), and don’t allow measures (line lengths) to become too wide.

Mobile devices and browsers include features to allow users to adjust their font size system-wide. To enable system font size in an Android app, mark text and their associated containers to be measured in scalable pixels (sp). For iOS, Dynamic Type is the accessibility feature that enables app to adjust font size. Be sure to not hard set the line heights when coding text as dynamic and adjustable. Otherwise, a reader may choose a large text size but be unable to read it because the lines of content overlap.

<figure>

![Two columns of text ](images/accessibility_7.svg)

<figcaption>A comparison between less readable type (left) with more readable type (right). Both paragraphs are set in Roboto and share the same line-height value, but different font-size values.</figcaption>

</figure>

Ensure that there is sufficient space for large fonts and other writing systems.

Make sure that there is enough [spacing](/glossary/tracking_letter_spacing) between characters. Fonts have different widths. If a font looks too tightly packed, letters may appear to crowd or overlap one another resulting in letter confusion. Crowding occurs when too many letters are too close to each other. Some words may become too hard to read. Words may blur or seem to disappear. Increasing spacing for letters, words and lines may help to reduce, or alleviate, these effects.

When selecting a font on Google Fonts, go to the Type Tester to try out different widths. See which one is most visually comfortable, reduces any sensation of eyestrain, and increases your overall reading satisfaction.

<figure>

![Three text samples in text area, variable axes controls](images/accessibility_8.png)

<figcaption>Type Tester showing text with variable axes for weight, width, slant and ascender height.</figcaption>

</figure>

There are various resources to learn about [text spacing](https://www.w3.org/TR/WCAG21/#text-spacing), [crowding](https://www.sciencedirect.com/science/article/pii/S0042698907005561), [line heights (for foreign languages)](/lesson/language_support_in_fonts), [choosing line height](https://www.youtube.com/watch?v=ponRmWSzpDg&t=42s), [hierarchy of type sizes, weights, line heights and spacing](https://m3.material.io/styles/typography/applying-type), [type scale and units](https://material.io/design/typography/the-type-system.html#type-scale), [Android text scaling](https://support.google.com/accessibility/android/answer/12159181?hl=en), and [iOS Typography guidelines](https://developer.apple.com/design/human-interface-guidelines/foundations/typography/).

Read more about [visual acuity and text size](https://www.teachingvisuallyimpaired.com/print-comparisons.html) to learn about how those with visual impairments may need different text sizes.

## Hyperlinks

Follow these guidelines for hyperlinks:
- Allow user preferences to change the fonts and colors
- Change the color of links that have been accessed. Usually, unvisited links are in blue and visited links are in pink. This helps people see which links they have already accessed.
- Embedded content (like documents, spreadsheets, videos, or decks) should have a sentence/link near the embedded content that reads, “Open the [content name] in a new window.”
- All hyperlinks are descriptive. Screen reading software often reads links out of context from the surrounding text. Links should clearly describe where the user will be taken or what action it triggers.
    - Incorrect: “It’s important to meet accessibility standards. [Learn more](https://fonts.google.com/knowledge).”
    - Correct: “It’s important to meet [accessibility standards](https://fonts.google.com/knowledge).”

## Non-text elements and text in images

When designing content with images, it’s important to have captions and alt text for informative images. Decorative images that do not add information don’t need captions or alt text. Captions are the text that appear below an asset (e.g. an image or video). They explain the asset’s contextual information–the who, what, when, and where. Both sighted and screen reader users rely on captions for descriptions of assets. Alt text describes what the image or video is showing. This information is important for people who can’t see the image or video. When an asset doesn’t load on a website, the alt text will appear for people to know what is missing.

Learn about how to write alt text and captions in [Material Design’s Accessibility in Writing](https://m3.material.io/foundations/writing/best-practices). To learn about which images need captions, visit [Material Design's Accessibility in Designing Elements](https://m3.material.io/foundations/designing/elements), the W3C [decorative](https://www.w3.org/WAI/tutorials/images/decorative/), [functional](https://www.w3.org/WAI/tutorials/images/functional/), and [informative](https://www.w3.org/WAI/tutorials/images/informative/) images articles.

Online menus or price sheets that are images or PDF files of a restaurant menu or price sheet may be easy solutions for business owners. However, they can be difficult or impossible to read for people who use screen reader and text-to-speech software or for people squinting at the pixelated text on their phones. Users can’t do a text search in an image to find what they are looking for. If you’re designing a website for a business, take the menu or price sheet information and put it as regular text on the site rather than adding images of the price sheet or menu. Having the menu and price sheets as text also improves SEO.

## Resources:

Here are a few resources to learn more about fonts and their impact on readability in the cognitive space:

- [British Dyslexia Association: A Dyslexia-friendly Style Guide](https://www.bdadyslexia.org.uk/advice/employers/creating-a-dyslexia-friendly-workplace/dyslexia-friendly-style-guide)
- [Reading Well: Dyslexia Fonts](https://www.dyslexia-reading-well.com/dyslexia-font.html)
- [Hating Comic Sans is Ableist](https://theestablishment.co/hating-comic-sans-is-ableist-bc4a4de87093/index.html)
- [WebAIM: Customizable Text](https://www.w3.org/WAI/perspective-videos/customizable/)
- [APA Style, American Psychological Association: Accessible Typography](https://apastyle.apa.org/style-grammar-guidelines/paper-format/accessibility/typography)
- [FS Me: ‘The accessible type’](http://projectrising.in/2015/08/fs-me-the-accessable-type/) (a typeface co-designed with individuals with cognitive disabilities)
- [What’s in a Word? Font preferences](https://medium.com/the-readability-group/whats-in-a-word-53bcf217d5c1)
- [What makes a typeface accessible](https://medium.com/the-readability-group/a-guide-to-understanding-what-makes-a-typeface-accessible-and-how-to-make-informed-decisions-9e5c0b9040a0)
- [Material Design accessibility guidelines](https://material.io/design/usability/accessibility.html)
