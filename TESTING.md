# PHASE / 8 — Validation record

The instrument was tested on **2026-09-28**, in Max **8.6.5** on macOS. The English publication pass was completed on **2026-09-29**.

## Native Max checks

Each of the eight voices was soloed and recorded, confirming valid audio from every voice. Checks also covered scene saving and reloading, JSON containing A/B states, Japanese and other non-ASCII scene names, frozen-event restoration, playback after Panic, Grid playback, DSP quality switching, and stereo WAV recording.

External sources of 20,017 and 132,301 frames were alternated to confirm full-file loading and buffer resizing. A copied 32-bit float source matched the original SHA-256 hash. Resaving to the same destination preserved the source. The looping and held Freeze tables matched by hash, as did the table after saving and restoring it.

| Sample rate | Signal vector | DSP multiplier | Result |
|---|---:|---:|---|
| 44,100 Hz | 64 | 1x | Settings matched; audio recorded |
| 44,100 Hz | 128 | 4x | Settings matched; audio recorded |
| 48,000 Hz | 64 | 2x | Settings matched; audio recorded |
| 48,000 Hz | 128 | 2x | Settings matched; audio recorded |
| 96,000 Hz | 64 | 2x | Settings matched; audio recorded |
| 96,000 Hz | 128 | 4x | Settings matched; audio recorded |

Actual Max sample-rate and vector settings were read back and matched the requested values. The original 44.1 kHz / 64 configuration was restored afterward. Demos were recorded directly from Max as 32-bit float WAV; only preview-shards.wav was converted to 16-bit PCM. No normalization was applied.

## Twenty-minute continuous test

The stress configuration combined maximum Density and Fragment, 64-element shapes, Rate 4, Speed 4, long Decay, Drive, Space, and Feedback at 76%. Seed, Warp, Coupling, Material, and Delay changed every ten seconds. Recording and UI updates ran together at 44.1 kHz, signal vector 64, and DSP 2x.

- Recorded duration: **1,200.785 seconds**.
- All samples were finite: no NaN or Inf values, and no all-zero frames.
- Maximum peak: **−10.87 dBFS**, with OUTPUT at −9 dB.
- Largest absolute channel mean: approximately 1.9e-07.
- Max DSP CPU meter: approximately 24.1% average, 27% maximum in the test session.

The logged clock phrase number advanced by 20 every ten seconds. No unexpected stops or all-zero sections were detected during recording. This does not establish immunity to every kind of audio-driver dropout or certify true-peak compliance.

## Code and distribution checks

- Generation model: 1,320 cases and 210,818 events.
- Additional boundary checks: 878 cases and 1,119,388 events, including 192-second phrases and the limits of speed, density, intervals, and array lengths.
- Controller logic: 177 assertions using a mocked Max API, separate from the native Max checks above.
- Bank protection, fixed-seed repeatability, event ordering, minimum 3 ms spacing, invalid-data rejection, Undo, and agreement between stopped previews and first playback were checked.
- Shrinking, editing, and expanding arrays, along with seed wrapping at the upper limit, passed an additional native save/reload/recording test of the final code.
- JSON is read and written in chunks; scenes larger than approximately 32 KB were saved and restored in Max.
- Final UI bounds, overlaps, control connections, object reference names, and Gen wiring were checked statically.
- The included Python generators reproduced all ten Gen modules, the UI, engine, project, and default source sound.

After the long-duration test, changes to long-phrase event distribution, stopped previews, file saving, and array editing received additional model checks and native Max regression tests. The Gen audio DSP code remained the same as in the long-duration test.

## English publication pass

Documentation and the remaining bilingual in-app status messages were translated into English. Synthesis and generation behavior were unchanged. The controller assertions were rerun, and the publication files were checked for project references, local paths, accidental credentials, and remaining Japanese interface or documentation text. The non-ASCII scene-name fixture in validation.json is retained as escaped Unicode test data.

## Limitations

The Presentation Mode interface was displayed and inspected during development. A locked macOS session prevented a complete **final mouse-interaction pass**. Control wiring, value propagation, and drawing code were checked.

Subjective listening evaluation was not performed. Use the included demos to assess the sound and its relationship to your musical expectations. Numerical checks alone do not establish a claim of highest sound quality. Windows, other Max 8 releases, and other audio devices were not tested.

Machine-readable measurements are in [validation.json](validation.json). The long stress-test recording and automated playback test patches are not included in the distribution. This publication pass did not repeat the native audio stress test.
