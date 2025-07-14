# TMM-OS Doc 15: The Dashboard Blueprint
**Version:** 1.0 | **Status:** ACTIVE PLAN | **Last Reviewed:** 2025-07-13

---

### 1.0 Core Purpose
The Dashboard is the primary visual interface for the TMM-OS. Its goal is to evolve from a static "Who am I?" page into a dynamic **"What is my mission today, and how is it progressing my long-term goals?"** interface. It is a tool for focus and productivity.

### 2.0 Architectural Vision
The dashboard will be a single, private `dashboard.html` page, styled with CSS and powered by JavaScript. It will be designed with a clear visual hierarchy separating high-level identity from daily operational data.

*   **Phase 1 (This Week):** The dashboard will be built as a static page that reads data from a local `master_data.json` file. This allows for rapid development and testing of the visual layout.
*   **Phase 2 (Future):** The JavaScript will be updated to make live API calls to the `tmm_os_db` MySQL database, making the dashboard fully dynamic.
*   **Phase 3 (Future):** The dashboard will integrate with the Home Assistant AI, both displaying data from it and providing an interface to send commands to it.

### 3.0 Layout & Information Zones

**Zone 1: The Identity Header**
*   **Content:** `Thapelo Madiba Masebe / Transdisciplinary Artist & Data Scientist`.
*   **Design:** Minimalist, clean typography, taking up the top portion of the view.

**Zone 2: The Operational Directive**
*   **Content:** A prominent module labeled "Today's Directive".
*   **Functionality:** This module calculates the current day in the 3-day rhythmic cycle (`Input`, `Output`, `Synthesis`). It will display the corresponding Theme and Mission.
*   **Data Source:** Reads from the `rhythmic_cycles` table in the database (via `master_data.json` in v1).

**Zone 3: Key Metric Readouts**
*   **Content:** A clean, grid-based display of real-time data points.
*   **Functionality:** This section will display live data:
    *   **Hi-Fi & Art Fund:** `R [current_value_zar]` (from `financial_funds` table)
    *   **Emergency Fund:** `R [current_value_zar]` (from `financial_funds` table)
    *   **Current Input:** `Reading: [item_title] by [item_author]` (from `reading_list` table)
    *   **Tasks Due Today:** `[Count]` (from `tasks` table)
*   **Design:** Presented as simple `LABEL: VALUE` pairs, structured by 1px dividers.

### 4.0 Future Iteration Goals (v2.1+)
*   Integrate data from the Home Assistant AI (e.g., "Water Intake Today").
*   Visualize progress on financial goals with simple bar charts.
*   Add a quick-entry form to add tasks or log data directly from the dashboard.