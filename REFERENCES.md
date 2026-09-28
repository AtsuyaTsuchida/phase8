# Research and design references

PHASE / 8 is an original instrument inspired by ideas described in public interviews: composing rules, manipulating them in real time, and treating an instrument's state as compositional material. It does not reproduce Autechre's current system, and the tutorial patches below are not embedded in the project.

| Resource | Research scope and influence |
|---|---|
| [Autechre — Sound On Sound](https://www.soundonsound.com/people/autechre) | An interview with the artists. The combination of rule-based generation and human intervention informed the instrument's design. |
| [Autechre: Where Code Meets Music — Pitchfork](https://pitchfork.com/thepitch/autechre-interview-nts-sessions-david-lynch-where-code-meets-music/) | An interview discussing the relationship between Max instruments and composition, including patch exchange. |
| [Collaborative Drum Kit in Max — Cycling '74](https://cycling74.com/articles/collaborative-drum-kit-in-max) | Density sequencing and drum patches from multiple authors. The downloadable examples and voice organization were reviewed. |
| [Philip Meyer Max Tutorials](https://github.com/pdmeyer/philip-meyer-max-tutorials) | Public patches accompanying video tutorials on rhythm and signal processing. |
| [Rhythm and Time Toolkit](https://github.com/pdmeyer/rhythm-and-time-toolkit) | A public collection of tools for rhythm and time. A reference, not a dependency of this project. |
| [MSP Sequencing Tutorial 1 — Max 8](https://docs.cycling74.com/legacy/max8/tutorials/12_sequencingchapter01) | Signal-driven sequencing. PHASE / 8 handles event timing in Gen's signal domain. |
| [Generating Sound & Organizing Time — Cycling '74](https://cycling74.com/books/go) | A learning resource for synthesis and time manipulation in Gen. The book's full text and companion examples were not execution-tested during this project. |
| [Analysis and recreation of key features in selected Autechre tracks from 1998–2005](https://figshare.mq.edu.au/articles/thesis/Analysis_and_recreation_of_key_features_in_selected_Autechre_tracks_from_1998-2005/19440656) | Research by Alexander Nicholas Mesker. The abstract and bibliographic information were reviewed; this is distinct from a patch release by the artists. |

Implementation APIs were also checked against the official reference bundled with Max 8.6.5, particularly the Gen, poly~, buffer~, sfrecord~, limi~, multislider, and textbutton objects, and the JavaScript File, Buffer, and Task APIs.

The distributed project consists of original Max, Gen, and JavaScript code and original audio material. Third-party tutorial patches, commercial music recordings, and leaked patches are not included.
