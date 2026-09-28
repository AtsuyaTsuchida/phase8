# PHASE / 8

**An eight-voice generative percussion instrument for Max 8.**

Shape irregular intervals, bursts, silence, and interactions between parts. PHASE / 8 is designed around fragmentary, non-metric rhythms, with a Free Time mode, built-in synthesis, and a complete Presentation Mode interface.

The instrument is an original implementation informed by public Autechre interviews and Max learning resources. It is not an official Autechre product or a reproduction of their patches. See [References](REFERENCES.md) for the research behind the design.

## Quick start

1. Download the repository using **Code → Download ZIP**, or clone it. Extract the archive and keep the entire folder together.
2. Open **PHASE8.maxpat** in Max 8. It opens in Presentation Mode. You can also open **PHASE8.maxproj** to work with it as a Max project.
3. Press **PLAY**. Audio is enabled automatically; the initial output level is −9 dB.
4. Choose a **SCENE** and explore the six macros.
5. Use **FREEZE** to capture and repeat a phrase.

Tested in Max **8.6.5** on macOS. No third-party externals, RNBO, Ableton Live, or additional samples are required. An original source sound for Grain is included. Sound generation uses Gen; the interface and data editing use Max 8's standard JavaScript objects.

The interface canvas is 1250 × 820. Reduce Max's zoom if it does not fit your display. Leave Presentation Mode only when you want to edit the patch wiring.

## Features

- Eight voices with four overlapping synthesis slots each: Kick, Snare, Hat, Metal, Membrane, Click, Grain, and Bass.
- Signal-domain event timing and envelopes, with deterministic seeds and evolving rhythm generation.
- Six performance macros, per-part interval/accent/timbre arrays, probability, rotation, reverse, swing, and inter-part modulation.
- Freeze, mutation, undo, A/B capture and morphing, and ten factory scenes.
- Optional sample loading, portable JSON scene saving, and stereo 32-bit float WAV recording.
- Stereo echo and a feedback delay network, with 1x / 2x / 4x DSP quality settings.

## Three starting points

- **Silence and fragments:** choose Scene 03, *Quiet Fractures*. Set Density to 10–30 and Fragment to 40–90. Explore Speed between 0.5 and 1.2.
- **Metallic bursts:** choose Scene 04, *Wire Rain*. Set Fragment around 80 and Material to 70–100. Select Metal and adjust Tune, Decay, and Color.
- **Dense interactions:** choose Scene 07, *Swarm*. Raise Coupling and edit Mod Source, Target, and Amount. Capture a phrase with FREEZE, then change Material and the individual voice controls.

All ten factory scenes are also available as JSON files in [scenes/](scenes/). Max-recorded examples are in [demos/](demos/): [Shards](demos/01-shards.wav), [Quiet Fractures](demos/02-quiet-fractures.wav), and [Swarm](demos/03-swarm.wav). [preview-shards.wav](demos/preview-shards.wav) is a 16-bit PCM conversion of the Shards recording, without normalization.

## Macros and time

| Control | Effect |
|---|---|
| Density | Changes event density and spacing. At zero, new events stop from the next generated phrase. |
| Time Warp | Locally stretches and compresses interval sequences. Raising it does not simply make the rhythm faster. |
| Fragment | Changes bursts, spacing within bursts, and the attenuation of following hits. |
| Coupling | Scales how the previous phrase's accent information affects other parts' intervals, timbre, and accents. |
| Material | Changes FM, noise, harmonics, and other aspects of each voice's character. |
| Space | Sets the amount of stereo delay and short reverberation. Refine it with FEEDBACK and DELAY. |
| Speed | Runs at 0.25–4 times the base speed in both Free Time and Grid modes. |
| WINDOW / BARS | Selects 2 / 4 / 8 / 16 seconds in Free Time, or 2 / 4 / 8 / 16 bars in Grid. Speed changes the actual duration. |
| BPM / GRID | Sets the reference tempo for Grid mode. It is unused in Free Time. |

Rhythm edits generally take effect at the **next phrase boundary**. Material, Space, gain, and voice settings can change during playback; some voice parameters apply at the next hit. Long windows and slow speeds increase the wait before rhythm changes become audible.

Grid mode rounds intervals to a sixteenth-note reference and applies each part's Swing. The event display represents elapsed phrase time in both modes.

## Voices and part editing

Select a part by clicking its row or using the VOICE menu. **M** mutes it; **S** solos it. The slider on the right controls its level.

| Voice | Synthesis |
|---|---|
| Kick | A rapidly descending sine-wave pitch with a short noise attack |
| Snare | An FM body with noise |
| Hat | High-frequency noise and metallic components at non-integer ratios |
| Metal | Non-integer-ratio FM and metallic partials |
| Membrane | Multiple decaying components for membrane-like and wooden impacts |
| Click | Very short noise and FM fragments |
| Grain | Windowed sections of a sample, played forward or backward |
| Bass | Low-frequency FM impacts and bass tones |

**TUNE** is in semitones, **DECAY** scales duration, **COLOR** changes timbre, **PAN** positions the voice, and **DRIVE** adds saturation.

**PROBABILITY** sets the chance of a hit. **EVENTS** sets the editable pattern length from 1 to 64. **RATE** sets a part's relative speed; **ROTATE / REVERSE** rotate or reverse its arrays. Doubling RATE does not necessarily align that part with another part's beat grid.

The three editors contain **INTERVAL** values for relative spacing (0.08–3), **ACCENT** values for strength (zero creates a rest), and **TONE LOCK** values for per-event timbre. TONE LOCK does not lock musical pitch. The generator reads these shapes and combines them with bursts and probability. For very long phrases, it widens spacing to distribute events across the phrase within the event-table limit. **EUCLID** uses the current EVENTS count and Density to create evenly distributed accents, and sets interval values to 1.

**MOD SOURCE / TARGET / AMOUNT** configure modulation received by the **selected part**. Choose one of the eight parts as the source and Interval, Timbre, or Accent as the target; Amount ranges from −1 to 1. Each part has one modulation slot, for eight total. Modulation uses information from the previous generated phrase. Muting a part silences its audio but preserves its generated data as a modulation source.

## Capture and transform a performance

- **FREEZE:** repeats the most recently completed phrase's events from the next boundary. During the first phrase, it uses the current event table. It preserves event timing, velocity, and event timbre, rather than recorded audio or reverb. Changes to controls such as Density apply after Freeze is released.
- **ANCHOR:** protects the first element of each shape from probability-based thinning. It does not force beat synchronization or freeze all events.
- **EVOLVE:** enables new variations for each phrase. When off, the same settings and seed repeat the same event table.
- **MUTATE:** changes the seed. **UNDO** restores an earlier state. History holds up to 32 states, grouping continuous knob movements into edits.
- **RESET:** restarts the event sequence from the same seed. PLAY after stopping also restarts from the beginning. It does not rewind active DSP envelopes, noise phases, or effect tails.
- **CAP A / CAP B → MORPH:** capture two states, then interpolate macros, levels, voice controls, speed, and other continuous values. Discrete settings such as length and seed, along with arrays, switch at the midpoint. Generated tables update at phrase boundaries. A and B share the sample source.
- **PANIC:** stops with a short fade and clears feedback and voice state. Press PLAY to resume.

## Save, load samples, and record

Use **SAVE** and **LOAD** for JSON scenes. They preserve voice settings, generation rules, seed, macros, frozen events, and A/B states. DSP quality, the recording destination, active effect tails, and in-progress DSP state are not saved. This is separate from saving the Max patch itself.

**LOAD SAMPLE** changes Grain's source. Start with WAV or AIFF files. Grain reads the source's first channel and uses the same pan and effects routing as the synthesized voices. **INTERNAL** restores the included sound. Saving a scene with an external source copies the original file beside the JSON as a companion named after the scene, with a "-sample" suffix and the source's extension. It preserves the original bytes, bit depth, and format. Keep both files together when moving the scene.

To record, choose **REC FILE → destination → REC**. Press REC again to stop. Recording produces a stereo 32-bit float WAV at Max's current sample rate, including output gain and effects. Choose a destination with REC FILE before each new recording. Stopping PLAY leaves recording running so you can capture tails. PANIC also stops recording.

**DSP QUALITY** offers 1x / 2x / 4x, with 2x as the default. **Stop playback and recording before changing it.** The 4x setting can reduce high-frequency aliasing from FM and distortion, at a higher CPU cost. Use 1x if needed for your system.

The signal path includes DC removal, parameter smoothing, and a stereo-linked limiter with 128 samples of lookahead. Its setting is −1.5 dB, followed by the OUTPUT control. The lookahead is approximately 2.90 ms at 44.1 kHz or 2.67 ms at 48 kHz; oversampling and audio-device latency are additional. This is not a true-peak compliance guarantee.

## Troubleshooting

If there is no sound, check PLAY, AUDIO, OUTPUT, and the M / S controls, then confirm the output device in Max's Audio Status. For high CPU load, stop playback and recording and set DSP QUALITY to 1x. Use PANIC → PLAY to recover from unexpected behavior. Keep the JS, Gen, and media files together with the patch.

## Project files

| File or directory | Purpose |
|---|---|
| PHASE8.maxpat | Presentation Mode interface |
| PHASE8.maxproj | Max project |
| p8_engine.maxpat | Signal clock, eight voices, and effects routing |
| p8_*.gendsp / p8_*.genexpr | Gen modules and readable source |
| p8_model.js | Seeded generation, factory scenes, and validation |
| p8_control.js | UI control, event-bank exchange, saving, and recording |
| p8_display.js | Event visualization |
| media/ | Original default sample |
| scenes/ | Ten factory scenes as JSON |
| demos/ | Audio examples recorded from Max |
| [TESTING.md](TESTING.md) | Validation results and limitations |
| [REFERENCES.md](REFERENCES.md) | Research and learning resources |
| [ARCHITECTURE.md](ARCHITECTURE.md) / dev/ | Design notes and patch-generation scripts |

The Max patches, JavaScript, and Gen code are included as editable source. Reopen the patch after changing JavaScript. If you edit a .genexpr file, update the corresponding .gendsp codebox as well. No Max 9-only features are used.
