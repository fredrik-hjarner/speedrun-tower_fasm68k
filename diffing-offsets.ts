#!/usr/bin/env bun

/**
 * Git Diff Processor
 * Automates the manual git diff processing workflow
 */

async function processDiff() {
    try {
      console.error("Running git diff...");
      
      // Run the git diff command
      const proc = Bun.spawn([
        "git", "diff", 
        "--unified=0", 
        "--no-index", 
        "vasm_artifacts/SpeedrunTower.hex", 
        "fasm68k_artifacts/SpeedrunTower.hex"
      ]);
  
      // Get the output as text
      const diffOutput = await new Response(proc.stdout).text();
      
      if (!diffOutput.trim()) {
        console.error("No differences found between the files.");
        return;
      }
  
      console.error("Processing diff output...");
      
      // Apply all the transformations step by step
      let processed = diffOutput;
      
      // First, remove the git diff header lines
      // 1. Remove diff.* lines
      processed = processed.replace(/^diff.*$/gm, '');
      
      // 2. Remove index.* lines  
      processed = processed.replace(/^index.*$/gm, '');
      
      // 3. Remove ---.* lines
      processed = processed.replace(/^---.*$/gm, '');
      
      // 4. Remove +++.* lines (three or more + signs)
      processed = processed.replace(/^\+{3}.*$/gm, '');
      
      // Extract line numbers from @@ lines before removing them
      const lineNumbers: string[] = [];
      const aaMatches = processed.match(/^@@ -(\d+),.*$/gm);
      
      if (aaMatches) {
        for (const match of aaMatches) {
          // Extract the number after the - and before the comma
          const numberMatch = match.match(/@@ -(\d+),/);
          if (numberMatch && numberMatch[1]) {
            lineNumbers.push(numberMatch[1]);
          }
        }
      }
      
      console.error(`Found ${lineNumbers.length} line numbers to process`);
      
      // Convert each line: subtract 1 (to make zero-based) and convert to hex
      const hexValues: string[] = [];
      
      for (const line of lineNumbers) {
        const num = parseInt(line, 10);
        if (!isNaN(num)) {
          const zeroBased = num - 1;
          const hexValue = zeroBased.toString(16).toUpperCase();
          hexValues.push(hexValue);
          console.error(`${num} -> ${zeroBased} -> ${hexValue}`);
        } else {
          console.error(`Skipping non-numeric line: "${line}"`);
        }
      }
      
      console.error(`\nProcessing complete!`);
      console.error(`Total hex values: ${hexValues.length}`);
      console.error('\nHex values:');
      
      // Output hex values to stdout (one per line)
      hexValues.forEach((hex) => {
        console.log(hex);
      });
      
    } catch (error) {
      console.error("Error processing diff:", error);
      process.exit(1);
    }
  }
  
  // Run the processor
  processDiff();