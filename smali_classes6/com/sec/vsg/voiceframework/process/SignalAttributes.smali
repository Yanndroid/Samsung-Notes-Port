.class public Lcom/sec/vsg/voiceframework/process/SignalAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "SignalAttributes"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeEnergy([SIII)I
    .locals 1

    invoke-static {p3}, Lcom/sec/vsg/voiceframework/process/SignalFormat;->ChannelConfig(I)I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sec/vsg/voiceframework/process/SignalAttributes;->computeEnergyforStereo([SII)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/sec/vsg/voiceframework/process/SignalAttributes;->computeEnergyforMono([SII)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static computeEnergy([SIIII)I
    .locals 2

    new-array v0, p2, [S

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, p2, p3, p4}, Lcom/sec/vsg/voiceframework/process/SignalAttributes;->computeEnergy([SIII)I

    move-result p0

    return p0
.end method

.method private static computeEnergyforMono([SII)I
    .locals 1

    invoke-static {}, Lcom/sec/vsg/voiceframework/SpeechKitWrapper;->getInstance()Lcom/sec/vsg/voiceframework/SpeechKit;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/vsg/voiceframework/SpeechKit;->computeEnergyFrame([SII)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static computeEnergyforStereo([SII)I
    .locals 2

    div-int/lit8 p1, p1, 0x2

    new-array v0, p1, [S

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/sec/vsg/voiceframework/process/SignalFormat;->parseStereoToMono([S[SII)V

    invoke-static {v0, p1, p2}, Lcom/sec/vsg/voiceframework/process/SignalAttributes;->computeEnergyforMono([SII)I

    move-result p0

    return p0
.end method

.method public static getSpectrum([SI[III)I
    .locals 3

    array-length v0, p0

    add-int/lit16 v1, p1, 0xa0

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 v0, 0xa0

    new-array v1, v0, [S

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, p2, p3, p4}, Lcom/sec/vsg/voiceframework/process/SignalAttributes;->getSpectrum([S[III)I

    move-result p0

    return p0
.end method

.method public static getSpectrum([S[III)I
    .locals 1

    invoke-static {p3}, Lcom/sec/vsg/voiceframework/process/SignalFormat;->ChannelConfig(I)I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sec/vsg/voiceframework/process/SignalAttributes;->processforStereoSpectrum([S[II)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/sec/vsg/voiceframework/process/SignalAttributes;->processforMonoSpectrum([S[II)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static processforMonoSpectrum([S[II)I
    .locals 1

    invoke-static {}, Lcom/sec/vsg/voiceframework/SpeechKitWrapper;->getInstance()Lcom/sec/vsg/voiceframework/SpeechKit;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/vsg/voiceframework/SpeechKit;->getSpectrum([S[II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static processforStereoSpectrum([S[II)I
    .locals 5

    const/16 v0, 0xa0

    new-array v1, v0, [S

    array-length v2, p0

    const/4 v3, 0x0

    const/16 v4, 0x140

    if-lt v2, v4, :cond_0

    invoke-static {p0, v1, v0, v3}, Lcom/sec/vsg/voiceframework/process/SignalFormat;->parseStereoToMono([S[SII)V

    invoke-static {p0, p1, p2}, Lcom/sec/vsg/voiceframework/process/SignalAttributes;->processforMonoSpectrum([S[II)I

    move-result v3

    :cond_0
    return v3
.end method
