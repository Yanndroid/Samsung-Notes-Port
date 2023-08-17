.class public Lcom/sec/vsg/voiceframework/process/SignalFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUDIO_CHANNEL_MONO:I = 0x1

.field public static final AUDIO_CHANNEL_STEREO:I = 0x2

.field public static final AUDIO_SAMPLING_RATE_16kHz:I = 0x3e80

.field public static final AUDIO_SAMPLING_RATE_8kHz:I = 0x1f40

.field public static final ERROR:I = -0x1

.field private static final LIB_MODE_16kHZ:I = 0x0

.field private static final LIB_MODE_8kHZ:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChannelConfig(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static GetSamplingMode(I)I
    .locals 1

    const/16 v0, 0x1f40

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x3e8

    :goto_0
    return p0
.end method

.method public static parseMonoToStereo([S[SII)V
    .locals 5

    rsub-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    shl-int/lit8 v2, v1, 0x1

    add-int v3, v2, p3

    aget-short v4, p0, v1

    aput-short v4, p1, v3

    add-int/2addr v2, v0

    aget-short v3, p0, v1

    aput-short v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static parseStereoToMono([S[SII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    shl-int/lit8 v1, v0, 0x1

    add-int/2addr v1, p3

    aget-short v1, p0, v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
