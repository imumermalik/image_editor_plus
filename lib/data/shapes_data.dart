Map<String, String> shapesWeights = {};

List<String> shapes = [
  '△', // Triangle
  '▭', // Rectangle
  '▢', // Square
  '⬭', // Oval
  '◯', // Circle
  '⬛', // Black large square
  '⬜', // White large square
  '◼', // Black medium square
  '◻', // White medium square
  '▪', // Black small square
  '▫', // White small square
  '🟥', // Red square
  '🟧', // Orange square
  '🟨', // Yellow square
  '🟩', // Green square
  '🟦', // Blue square
  '🟪', // Purple square
  '🔲', // Black square button
  '🔳', // White square button
  '⬜', // White large square
  '⬛', // Black large square
  '◻', // White medium square
  '◼', // Black medium square
  '◽', // White medium-small square
  '◾', // Black medium-small square
  '□', // White square
  '■', // Black square
  '▢', // White square with rounded corners
  '▣', // Black square with rounded corners
  '▨', // White square containing black small square
  '▩', // White square containing black medium square
  '▪', // Black small square
  '▫', // White small square
  '▭', // White medium small square
  '▮', // Black medium small square
  '▱', // White parallelogram
  '▰', // Black parallelogram
  '▲', // Black up-pointing triangle
  '▼', // Black down-pointing triangle
  '◆', // Black diamond
  '❖', // Black diamond minus white x
  '❑', // White square with vertical bisecting line
  '❒', // White square with horizontal bisecting line
  '❐', // White square with orthographic drawing of shaded envelope
  '❏', // White square with upper right quadrant black
  '◧', // White square with upper left quadrant black
  '◨', // White square with lower left quadrant black
  '◩', // White square with lower right quadrant black
  '◪', // White square with vertical bisecting line
  '◫', // White square with horizontal bisecting line
  '▦', // White square with lower right diagonal half black
  '▧', // White square with upper right diagonal half black
  '▨', // White square with diagonal crosshatch fill
  '▩', // Black small square
  '▪', // Black small square
  '▫', // White small square
  '▬', // Black medium square
  '▭', // White medium square
  '▮', // Black medium small square
  '▯', // White medium small square
  '▰', // Black large square
  '▱', // White large square
  '▲', // Black up-pointing triangle
  '△', // White up-pointing triangle
  '▴', // Black up-pointing small triangle
  '▵', // White up-pointing small triangle
  '▶', // Black right-pointing triangle
  '▷', // White right-pointing triangle
  '▸', // Black right-pointing small triangle
  '▹', // White right-pointing small triangle
  '►', // Black right-pointing pointer
  '▻', // White right-pointing pointer
  '▼', // Black down-pointing triangle
  '▽', // White down-pointing triangle
  '▾', // Black down-pointing small triangle
  '▿', // White down-pointing small triangle
  '◀', // Black left-pointing triangle
  '◁', // White left-pointing triangle
  '◂', // Black left-pointing small triangle
  '◃', // White left-pointing small triangle
  '◄', // Black left-pointing pointer
  '◅', // White left-pointing pointer
  '◆', // Black diamond
  '◇', // White diamond
  '◈', // White diamond containing black small diamond
  '◉', // Fisheye
  '◊', // Lozenge
  '○', // White circle
  '◌', // Dotted circle
  '◍', // Circle with horizontal fill
  '◎', // Bullseye
  '●', // Black circle
  '◐', // Circle with vertical fill
  '◑',
  '❶', // Dingbat circled digit one
  '❷', // Dingbat circled digit two
  '❸', // Dingbat circled digit three
  '❹', // Dingbat circled digit four
  '❺', // Dingbat circled digit five
  '❻', // Dingbat circled digit six
  '❼', // Dingbat circled digit seven
  '❽', // Dingbat circled digit eight
  '❾', // Dingbat circled digit nine
  '❿', // Dingbat circled number ten
  '➔', // Heavy wide-headed rightward arrow
  '➘', // Heavy south east arrow
  '➙', // Heavy rightward arrow
  '➚', // Heavy north east arrow
  '➛', // Drafting point rightwards arrow
  '➜', // Heavy round-tipped rightward arrows
  '➝', // Triangle-headed right arrow
  '➞', // Heavy triangle-headed rightward arrow
  '➟', // Dashed triangle-headed rightward arrow
  '➠', // Heavy dashed triangle-headed rightward arrow
  '➡', // Black rightwards arrow
  '➢', // Three-d top-lighted rightward arrowhead
  '➣', // Three-d bottom-lighted rightward arrowhead
  '➤', // Black rightward pointing triangle
  '➥', // Heavy black curved upwards and rightwards arrow
  '➦', // Heavy black curved downwards and rightwards arrow
  '➧', // Squat black rightwards arrow
  '➨', // Heavy concave-pointed black rightwards arrow
  '➩', // Right-shaded white rightwards arrow
  '➪', // Left-shaded white rightwards arrow
  '➫', // Back-tilted shadowed white rightwards arrow
];
