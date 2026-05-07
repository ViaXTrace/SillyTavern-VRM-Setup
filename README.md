# SillyTavern VRM Setup

SillyTavern configured with VRM assets, Voiceforge TTS extension, and Spicy VRM Animations.

## Installed Components

### VRM Models (6 models)
Located in `data/default-user/assets/vrm/model/`:
- Aera.vrm
- Dhahlia.vrm  
- Epithet.vrm
- Lara Lightland.vrm
- Onyx.vrm
- Velara.vrm

Source: [VRM-Assets-Pack-For-Silly-Tavern](https://github.com/test157t/VRM-Assets-Pack-For-Silly-Tavern)

### VRM Animations (456 total)
Located in `data/default-user/assets/vrm/animation/`:
- 116 animations from [VRM-Assets-Pack-For-Silly-Tavern](https://github.com/test157t/VRM-Assets-Pack-For-Silly-Tavern)
- 340 spicy animations from [Spicy-VRM-Animations](https://github.com/test157t/Spicy-VRM-Animations)

### Extensions

#### VoiceForge TTS Extension
Located in `public/scripts/extensions/third-party/Extension-Voiceforge/`
Source: [Extension-Voiceforge](https://github.com/test157t/Extension-Voiceforge)

Unified TTS with VoiceForge integration (OmniVoice + Pocket TTS), Call Mode for real-time voice conversation, dynamic BGM/ambient audio, and playback controls.

#### Spicy VRM Animations
Located in `public/scripts/extensions/third-party/Spicy-VRM-Animations/`
Source: [Spicy-VRM-Animations](https://github.com/test157t/Spicy-VRM-Animations)

## Base
Built on [SillyTavern](https://github.com/SillyTavern/SillyTavern) v1.18.0 (release branch)

## Asset Placement
```
data/
└── default-user/
    └── assets/
        └── vrm/
            ├── model/    ← VRM character models (.vrm)
            └── animation/ ← BVH animation files
public/
└── scripts/
    └── extensions/
        └── third-party/
            ├── Extension-Voiceforge/
            └── Spicy-VRM-Animations/
```
