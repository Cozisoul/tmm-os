# TMM-OS Doc 04: The Brand Identity & IP Management System
**Version:** 1.0 | **Status:** OPERATIONAL GUIDELINE - MASTER | **Last Reviewed:** 2025-07-13

---

### 1.0 Core Principle
This document is the definitive guide for ensuring 100% consistency across all visual and verbal outputs of the TMM practice. It is the "brand bible" to be shared with all external collaborators. It also functions as a management tool for the legal protection of the practice's intellectual property.

### 2.0 Visual Identity System

#### 2.1 Color Palette
*   **Primary Colors:**
    *   Black: `#000000` (Usage: Primary text, foundational elements).
    *   White: `#FFFFFF` (Usage: Negative space, knockout text).
*   **Base Color:**
    *   Cosmic Latte: `#FFF8E7` (Usage: Primary background for digital and print).
*   **Systemic Accent Colors:**
    *   Primary Red: `#FF0000`
    *   Primary Blue: `#0000FF`

#### 2.2 Typography System
*   **Primary Typeface:** Helvetica
*   **Web Fallback Stack:** `Helvetica Neue, Helvetica, Arial, sans-serif`.
*   **Stylistic Application:** The use of Virgil Abloh-style quotation marks (e.g., "FOR LISTENING") is permitted for meta-commentary on specific works or concepts.

### 3.0 Sub-Brand Architecture & Logo Specifications

| Brand Name | Logo Specification | Status / Use Case |
| :--- | :--- | ---: |
| **`aes72studio`** | `aes72studio` (Helvetica Neue Regular) | **Active:** Fine Art |
| **`Research Radio`**| `Research Radio` (Helvetica Neue Bold) | **Active:** Sound & Video |
| **`thapography`** | `thapography` (Helvetica Neue Light) | **Active:** Photography |
| **`Masebe Data`** | `Masebe-Data` (Helvetica Neue Medium) | **Active:** Data Science |
| **`Love Me Again`**| `Love Me Again™™` (Custom Logotype, TBD) | **In Development** |
| **`Homemade Handmade`**| `Homemade™ Handmade` (Helvetica Neue Bold) | **In Development** |
| **`NIRMIRI`** | `NIRMIRI` (Helvetica Neue Bold, Uppercase) | **Conceptual** |
| **`0723 Studio`** | `0723` (Numeric, Helvetica Neue Bold) | **Conceptual** |
| **`Thapelo Studio Shop`**| `Shop` (Helvetica Neue Regular) | **Planned** |
| **`None Given™`** | `None Given™` (Conceptual Brand) | **Conceptual** |

### 4.0 Intellectual Property (IP) Management & Budget

This section outlines the strategy and associated costs for protecting the brand's intellectual assets. Costs are estimates in ZAR as of July 2025.

#### 4.1 IP Ledger & Action Plan
| IP Asset | Type | Registration Status | Action Required & Target Date |
| :--- | :--- | :--- | :--- |
| `Thapelo Masebe` (Name) | Trademark | Not Registered | **Action:** Register in relevant classes. **Target:** Q4 2026. |
| `aes72studio` | Trademark | Not Registered | **Action:** Register trademark. **Target:** Q4 2026. |
| `Love Me Again` | Trademark | Not Registered | **Action:** Register trademark. **Target:** Q1 2027. |
| `Research Radio` | Trademark | Not Registered | **Action:** Register trademark. **Target:** Q1 2027. |
| Specific Artworks| Copyright | Automatic | **Action:** Maintain a dated inventory (Doc 05). |
| `thapelomasebe.com`| Domain Name | Not Registered | **Action:** Purchase immediately. **Target:** Within 1 week. |

#### 4.2 Annual IP & Digital Presence Budget
| Item | Description | Estimated Annual Cost (ZAR) |
| :--- | :--- | ---: |
| **Trademark Registration**| Initial filing fee (assumes 2 per year). | R 6,000 - R 12,000 |
| **Copyright Registration**| Optional formal registration for high-value works. | R 500 - R 1,000 |
| **Primary Domain Purchase**| Purchase of `thapelomasebe.com`. | R 150 - R 300 (First Year) |
| **Domain Name Renewals**| Annual renewal for all owned domains (~5 domains). | R 750 - R 1,500 |
| **Website Hosting**| Quality web hosting (e.g., Netlify, Vercel). | R 1,800 - R 4,000 |
| **Professional Email**| Email hosting linked to your domain (e.g., Google Workspace).| R 900 - R 1,200 |
| **Total Estimated Annual Budget**| **(Excluding initial trademark fees)** | **~R 3,600 - R 6,850** |
| **Total Estimated First-Year Setup**| **(Including 2 trademarks)** | **~R 9,600 - R 18,850** |

### 5.0 Note on Exporting with Custom Styling

The master `.md` files of the TMM-OS prioritize structural clarity and are primarily left-aligned. To achieve a right-aligned aesthetic for exported **PDF documents**:

1.  In VS Code, install the **"Markdown PDF"** extension.
2.  In your `tmm-os` folder, create a file named `style.css`.
3.  In that `style.css` file, add the following code:
    ```css
    body {
        text-align: right;
    }
    /* Add any other custom styles here */
    ```
4.  In your VS Code settings, point the Markdown PDF extension to use this stylesheet. When you export, the resulting PDF will reflect your right-aligned aesthetic.