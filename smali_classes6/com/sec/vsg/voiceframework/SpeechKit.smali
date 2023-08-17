.class public Lcom/sec/vsg/voiceframework/SpeechKit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUGMODE:I = 0x1

.field public static final REALEASEMODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SpeechKit"

.field public static final VERSION:Ljava/lang/String; = "170223"


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

.method public static init()I
    .locals 5

    const-string v0, "WARNING: "

    const/4 v1, -0x2

    :try_start_0
    sget-object v2, Lcom/sec/vsg/voiceframework/SpeechKit;->TAG:Ljava/lang/String;

    const-string v3, "Trying to load VoiceActivity.so"

    invoke-static {v2, v3}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "VoiceActivity"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v3, "Loading  VoiceActivity.so done"

    invoke-static {v2, v3}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Lcom/sec/vsg/voiceframework/SpeechKit;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Lcom/sec/vsg/voiceframework/SpeechKit;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/vsg/voiceframework/process/ProcessLOGS;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1
.end method


# virtual methods
.method public native GetVersion()Ljava/lang/String;
.end method

.method public native LogEpdSetting(JI)I
.end method

.method public native checkSaturationDRC([SI)I
.end method

.method public native computeEnergyFrame([SII)I
.end method

.method public native freeMemoryDRC(J)I
.end method

.method public native freeMemoryDoENV(J)I
.end method

.method public native freeMemoryDoNS(J)I
.end method

.method public native freeMemoryEPD(J)I
.end method

.method public native getEnvResultValue(J)I
.end method

.method public native getSpectrum([S[II)I
.end method

.method public native initializeDRC(II)J
.end method

.method public native initializeDoNS(III)J
.end method

.method public native initializeENV()J
.end method

.method public native initializeEPD(II)J
.end method

.method public native processDRC(J[SI)I
.end method

.method public native processDoNSFrame(J[SI[SI)I
.end method

.method public native processENVFrame(J[SI)I
.end method

.method public native processEPDFrame(J[SI)I
.end method

.method public native resetEPDparams(J)I
.end method
