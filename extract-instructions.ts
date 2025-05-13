#!/usr/bin/env bun

/**
 * Extract Instructions
 * Reads .lst lines from stdin and extracts just the assembly instructions
 */

async function extractInstructions() {
    try {
      // Read all input from stdin
      const stdinText = await new Response(Bun.stdin.stream()).text();
      const inputLines = stdinText
        .trim()
        .split('\n')
        .map(line => line.trim())
        .filter(line => line.length > 0);
  
      if (inputLines.length === 0) {
        return;
      }
  
      // Process each line to extract the instruction
      for (const line of inputLines) {
        // Pattern: 00:XXXXXXXX HEXBYTES SPACES LINENUM: SPACES INSTRUCTION
        // Example: 00:0000026E C07C0003                70:         and.w   #$03,d0
        
        // Find the pattern after the line number and colon
        // Look for: line number, colon, then whitespace, then capture the instruction
        const match = line.match(/\d+:\s+(.+)$/);
        
        if (match && match[1]) {
          // Extract the instruction part
          let instruction = match[1].trim();
          
          // Remove comments (everything after semicolon)
          const commentIndex = instruction.indexOf(';');
          if (commentIndex !== -1) {
            instruction = instruction.substring(0, commentIndex).trim();
          }
          
          console.log(instruction);
        } else {
          // Debug: show lines that don't match
          console.error(`No match for line: "${line}"`);
        }
      }
  
    } catch (error) {
      console.error("Error processing instructions:", error);
      process.exit(1);
    }
  }
  
  // Run the extractor
  extractInstructions();