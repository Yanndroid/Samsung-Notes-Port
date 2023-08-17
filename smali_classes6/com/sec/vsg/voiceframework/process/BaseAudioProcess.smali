.class public abstract Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$StereoObject;,
        Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$MonoObject;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseAudioProcess"


# instance fields
.field public VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

.field public id:J

.field public mChannelConfig:I

.field public mMode:I

.field private mProc:Lcom/sec/vsg/voiceframework/process/ObjectAudio;

.field public mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Enum;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    sget-object v1, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->TAG:Ljava/lang/String;

    const-string v2, "Voiceactivity Framework Version :: 170223"

    invoke-static {v1, v2}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/vsg/voiceframework/SpeechKitWrapper;->getInstance()Lcom/sec/vsg/voiceframework/SpeechKit;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->id:J

    invoke-virtual {p0, p1}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->getMode(Ljava/lang/Enum;)I

    move-result p1

    iput p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->mMode:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMode: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->mMode:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sec/vsg/voiceframework/process/SignalFormat;->ChannelConfig(I)I

    move-result p1

    iput p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->mChannelConfig:I

    iput p3, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->mSampleRate:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    iput-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->mProc:Lcom/sec/vsg/voiceframework/process/ObjectAudio;

    goto :goto_2

    :cond_0
    instance-of p1, p0, Lcom/sec/vsg/voiceframework/EndPointDetector;

    const/4 p2, 0x0

    if-nez p1, :cond_3

    instance-of p1, p0, Lcom/sec/vsg/voiceframework/NoiseChecker;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    instance-of p1, p0, Lcom/sec/vsg/voiceframework/NoiseReduction;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->mMode:I

    sget-object p3, Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;->STEREOTOMONO:Lcom/sec/vsg/voiceframework/NoiseReduction$Mode;

    invoke-virtual {p0, p3}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->getMode(Ljava/lang/Enum;)I

    move-result p3

    if-ne p1, p3, :cond_2

    new-instance p1, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$StereoObject;

    invoke-direct {p1, p0, p2}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$StereoObject;-><init>(Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;Z)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$StereoObject;

    invoke-direct {p1, p0}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$StereoObject;-><init>(Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance p1, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$StereoObject;

    invoke-direct {p1, p0, p2}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$StereoObject;-><init>(Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;Z)V

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$MonoObject;

    invoke-direct {p1, p0}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess$MonoObject;-><init>(Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;)V

    :goto_1
    iput-object p1, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->mProc:Lcom/sec/vsg/voiceframework/process/ObjectAudio;

    :goto_2
    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public getMode(Ljava/lang/Enum;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->mSampleRate:I

    invoke-static {v0}, Lcom/sec/vsg/voiceframework/process/SignalFormat;->GetSamplingMode(I)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->VALib:Lcom/sec/vsg/voiceframework/SpeechKit;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/vsg/voiceframework/SpeechKit;->GetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public process([SI)I
    .locals 1

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->mProc:Lcom/sec/vsg/voiceframework/process/ObjectAudio;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p1, p2}, Lcom/sec/vsg/voiceframework/process/ObjectAudio;->process([SI[SI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public process([SII)I
    .locals 3

    new-array v0, p3, [S

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0, p3}, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->process([SI)I

    move-result v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v2
.end method

.method public process([SI[SI)I
    .locals 1

    iget-object v0, p0, Lcom/sec/vsg/voiceframework/process/BaseAudioProcess;->mProc:Lcom/sec/vsg/voiceframework/process/ObjectAudio;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/vsg/voiceframework/process/ObjectAudio;->process([SI[SI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract processUnit([SI)I
.end method

.method public abstract processUnit([SI[SI)I
.end method
