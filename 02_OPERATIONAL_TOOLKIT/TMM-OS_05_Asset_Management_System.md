# TMM-OS Doc 05: The Asset Management System & Inventory
**Version:** 2.0 | **Status:** LIVING DOCUMENT - LINKED TO DATABASE | **Last Reviewed:** 2025-07-13

**Primary Use Case:** This document outlines the structure and fields of the `artworks` table in your MySQL database. It is the human-readable guide to your most valuable data asset. The Markdown table below serves as a template and example; the live data resides in the database.

---

### 1.0 Data Architecture

The canonical inventory of all artworks is stored in the `artworks` table within the `tmm_os_db` MySQL database. This allows for robust querying, analysis, and integration with future applications (e.g., website, dashboard).

### 2.0 Database Schema Fields

Refer to `DATABASE/01_schema_artworks.sql` for the formal `CREATE TABLE` statement. The fields are:
*   `id`: Unique numeric ID (Primary Key).
*   `artwork_id`: Human-readable unique ID (e.g., `2024-AES72-S-001`).
*   `title`: The official title of the work.
*   `creation_year`: The year the work was completed.
*   `brand_id`: The sub-brand under which it was created (e.g., `aes72studio`, `thapography`).
*   `medium`: Detailed description of materials used.
*   `dimensions`: Physical dimensions (e.g., `420 x 594mm` or `Variable` for installations).
*   `synopsis`: A short, powerful description of the work's concept and keywords.
*   `insured_value_zar`: The current replacement value for insurance purposes.
*   `status`: The current state of the artwork (e.g., `Available`, `Sold`, `NFS (Exhibition Only)`).
*   `asking_price_zar`: The price for available works. `NULL` if not for sale.
*   `strategic_deployment`: Tracks which active proposals or submissions the work is currently a part of.
*   `image_url`: A permanent link to the high-resolution, master image file (e.g., in your private cloud storage).
*   `created_at`: Timestamp of when the record was added to the database.

### 3.0 Initial Data Population Example (Commercial & Personal Work)

This demonstrates how your existing portfolio will be cataloged in the database.

| Artwork ID | Title | Year | Brand | Medium | Synopsis / Keywords | Status | Asking Price (ZAR) | Strategic Deployment |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **2024-THAPO-PH-001**| Vanz SA for Sportscene | 2024 | thapography| Digital Photography | Editorial campaign; youth culture; street style. | NFS (Client Work) | N/A | CV; Web Portfolio |
| **2024-THAPO-PH-002**| Kay-Leigh D Fischer | 2024 | thapography| Digital Photography | Portfolio shoot for artist's residency. | NFS (Client Work) | N/A | Web Portfolio |
| **2024-THAPO-PH-003**| Ama Qamata x Thebe Magugu | 2024 | thapography| 35mm Film | Editorial collaboration; high fashion; Thebe Magugu. | NFS (Client Work) | N/A | **Proposal to Thebe Magugu** |
| **2024-0723-V-002** | Excommunicado MV | 2024 | 0723 | Digital Video | Director & Editor for Jabba ft Kgale music video. | NFS (Client Work) | N/A | CV; Web Portfolio |
| **2021-AES72-P-001**| come in... | 2021 | aes72studio| Acrylic on A2 Paper | Abstract exploration of open invitations and emotional states.| **Available** | 8,500 | Gallery Intro Packet |
| **2019-THAPO-PH-001**| Remnants of Rhodes | 2019 | thapography| 35mm Film Series | Colonial remnants; architectural decay; memory. | **Limited Edition Prints**| 4,000 (per print)| **Proposal to Fujifilm SA** |
| **2018-THAPO-PH-002**| ME (Double Exposures)| 2018 | thapography| Digital (Polaroid)| Manifestations of the innerself; identity; distortion. | **Limited Edition Prints**| 2,500 (per print)| Web Portfolio |