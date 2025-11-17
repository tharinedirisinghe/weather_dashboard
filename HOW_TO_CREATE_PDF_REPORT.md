# How to Create Your PDF Report (≤2 pages)

## Step 1: Add Your Screenshots

1. **Take screenshots from your running app:**
   - Online mode (with weather data and URL visible at bottom)
   - Offline mode (with "(cached)" badge)
   - Optional: Error handling screenshot

2. **Save them in the screenshots folder:**
   - `C:\myFolder\uni\L3S1\wireless\weather_dashboard\screenshots\online_mode.png`
   - `C:\myFolder\uni\L3S1\wireless\weather_dashboard\screenshots\offline_mode.png`
   - `C:\myFolder\uni\L3S1\wireless\weather_dashboard\screenshots\error_handling.png`

## Step 2: Edit the Report

Open `report_224049K.md` and:
1. **Add your name** at the top where it says `[Your Name]`
2. **Remove unnecessary sections** to fit 2 pages:
   - Keep sections 1, 2, 3, and 6 (these are the required ones)
   - You can remove or shorten sections 4, 5, 7, and 8 if needed for space

## Step 3: Create a Condensed Version for PDF (Recommended)

Here's a streamlined 2-page version structure:

### Page 1:
- Header (Index, Batch, GitHub link)
- Section 1: Index and Coordinate Derivation
- Section 2: API Request Information
- Start of Section 3: Application Screenshots (at least 1 screenshot with URL visible)

### Page 2:
- Continue Section 3: More screenshots
- Section 6: Reflection (3-5 sentences as required)
- Footer

## Step 4: Convert Markdown to PDF

### Option A: Using VS Code Extension
1. Install "Markdown PDF" extension in VS Code
2. Open `report_224049K.md`
3. Press `Ctrl+Shift+P` → Type "Markdown PDF: Export (pdf)"
4. The PDF will be created in the same folder

### Option B: Using Online Converter
1. Go to: https://www.markdowntopdf.com/
2. Upload `report_224049K.md`
3. Download the PDF

### Option C: Using Microsoft Word
1. Open VS Code and view the markdown preview (Ctrl+Shift+V)
2. Copy the rendered content
3. Paste into Microsoft Word
4. Insert your screenshots
5. Adjust formatting
6. Save as PDF (File → Save As → PDF)

### Option D: Using Google Docs (Easiest for layout control)
1. Copy the markdown content
2. Paste into Google Docs
3. Insert screenshots (Insert → Image → Upload from computer)
4. Format to fit 2 pages
5. Download as PDF (File → Download → PDF Document)

## Step 5: Ensure 2-Page Limit

Tips to fit content in 2 pages:
- Use 11pt font size
- Set margins to 0.5 inches
- Make screenshots smaller (don't need full-size)
- Keep only the most important screenshot with URL visible
- Keep reflection to exactly 3-5 sentences
- Remove extra whitespace

## Recommended 2-Page Format

```
┌─────────────────────────────────────┐
│         PAGE 1                      │
├─────────────────────────────────────┤
│ Header (Name, Index, Batch, GitHub)│
│                                     │
│ 1. Index & Coordinate Derivation   │
│    - Index: 224049K                 │
│    - Formula shown                  │
│    - Result: Lat 7.20°, Lon 83.00° │
│                                     │
│ 2. API Request                      │
│    - URL shown                      │
│                                     │
│ 3. Screenshots (1-2 screenshots)    │
│    [Screenshot showing URL]         │
└─────────────────────────────────────┘

┌─────────────────────────────────────┐
│         PAGE 2                      │
├─────────────────────────────────────┤
│ 3. Screenshots (continued if needed)│
│    [Optional 2nd screenshot]        │
│                                     │
│ 4. Reflection (3-5 sentences)       │
│    - What you learned               │
│    - Challenges faced               │
│    - Key takeaways                  │
│                                     │
│ Footer: Date, GitHub link           │
└─────────────────────────────────────┘
```

## Final Checklist

Before submitting:
- [ ] Your name is filled in
- [ ] Index number is correct (224049K)
- [ ] Batch number is correct (22)
- [ ] GitHub link is included and correct
- [ ] At least one screenshot shows the request URL
- [ ] Reflection is 3-5 sentences
- [ ] PDF is exactly 2 pages or less
- [ ] File is named `report_224049K.pdf`

## Quick Start (Fastest Method)

1. **Update the markdown file** with your name
2. **Take 2 screenshots** (online mode with URL + offline mode)
3. **Use Google Docs:**
   - Copy sections 1, 2, 3, and 6 from the markdown
   - Paste into Google Docs
   - Insert 2 screenshots
   - Format to 2 pages
   - Download as PDF
4. **Rename** to `report_224049K.pdf`
5. **Done!** ✅
