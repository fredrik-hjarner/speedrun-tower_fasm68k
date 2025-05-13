#!/usr/bin/env bun

/**
 * LST Offset Finder
 * Reads hex offsets from stdin and finds corresponding lines in .lst file
 */

interface LstLine {
    offset: number;
    line: string;
    lineNumber: number;
  }
  
  async function findOffsetsInLst() {
    try {
      console.error("Reading hex offsets from stdin...");
      
      // Read all input from stdin
      const stdinText = await new Response(Bun.stdin.stream()).text();
      const inputOffsets = stdinText
        .trim()
        .split('\n')
        .map(line => line.trim())
        .filter(line => line.length > 0)
        .map(hex => parseInt(hex, 16));
  
      if (inputOffsets.length === 0) {
        console.error("No hex offsets provided on stdin");
        return;
      }
  
      console.error(`Found ${inputOffsets.length} offsets to lookup`);
  
      // Read the .lst file
      console.error("Reading LST file...");
      const lstContent = await Bun.file("./vasm_artifacts/SpeedrunTower.lst").text();
      const lstLines = lstContent.split('\n');
  
      // Parse .lst file to extract lines with offsets
      const parsedLines: LstLine[] = [];
      
      for (let i = 0; i < lstLines.length; i++) {
        const line = lstLines[i];
        
        // Look for lines that start with offset pattern like "00:0000AEF0"
        const offsetMatch = line.match(/^00:([0-9A-Fa-f]{8})/);
        if (offsetMatch) {
          const offset = parseInt(offsetMatch[1], 16);
          parsedLines.push({
            offset,
            line,
            lineNumber: i + 1
          });
        }
      }
  
      console.error(`Parsed ${parsedLines.length} lines with offsets from LST file`);
  
      // Sort parsed lines by offset (should already be sorted, but just in case)
      parsedLines.sort((a, b) => a.offset - b.offset);
  
      // For each input offset, find the corresponding line
      for (const inputOffset of inputOffsets) {
        console.error(`Looking up offset: ${inputOffset.toString(16).toUpperCase()}`);
        
        // Find the line where this offset falls
        let foundLine: LstLine | null = null;
        
        for (let i = 0; i < parsedLines.length; i++) {
          const currentLine = parsedLines[i];
          const nextLine = parsedLines[i + 1];
          
          // Check if the input offset falls within this instruction
          if (currentLine.offset <= inputOffset) {
            // If this is the last line, or if the next line's offset is greater than input
            if (!nextLine || nextLine.offset > inputOffset) {
              foundLine = currentLine;
              break;
            }
          }
        }
  
        if (foundLine) {
          console.error(`Found at line ${foundLine.lineNumber}: offset ${foundLine.offset.toString(16).toUpperCase()}`);
          // Output the full line to stdout
          console.log(foundLine.line);
        } else {
          console.error(`No matching line found for offset ${inputOffset.toString(16).toUpperCase()}`);
        }
      }
  
    } catch (error) {
      console.error("Error processing LST file:", error);
      process.exit(1);
    }
  }
  
  // Run the finder
  findOffsetsInLst();