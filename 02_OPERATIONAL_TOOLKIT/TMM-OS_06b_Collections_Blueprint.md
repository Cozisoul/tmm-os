# TMM-OS Doc 06b: The Collections Blueprint
**Version:** 1.0 | **Status:** OPERATIONAL BLUEPRINT | **Last Reviewed:** 2025-07-13

---

### 1.0 Introduction
This document outlines the purpose and structure of the personal archive collections within the TMM-OS. These collections of books and music are not passive inventories; they are active datasets that track the intellectual and sonic influences of the practice.

### 2.0 The Book Collection (`book_collection` table)
*   **Purpose:** To serve as a comprehensive catalog of the personal library. This dataset tracks literary influences, manages the "to-read" queue, and provides a queryable source for research. It is the intellectual backbone of the practice.
*   **Future AI Integration:**
    *   The Home Assistant AI will query this table to answer, "What should I read next?" by selecting an item with the status 'To Read'.
    *   When a book is finished, the AI can be instructed to update its status to 'Completed'.
    *   The Dashboard's "Current Input" metric will be populated by querying this table for the item with `status = 'Reading'`.

### 3.0 The Music Collection (`music_collection` table)
*   **Purpose:** To catalog the physical (CD, Vinyl) and digital music library. This dataset tracks key sonic influences, provides inspiration for `Research Radio`, and serves as an archive of personal cultural history.
*   **Future AI Integration:**
    *   The Home Assistant AI can be asked, "Play something from my 90s Kwaito collection," and it would query this table for `genre = 'Kwaito'` and `release_year BETWEEN 1990 AND 1999` to generate a playlist.
    *   Notes can be added to albums to link them to specific creative projects.

---