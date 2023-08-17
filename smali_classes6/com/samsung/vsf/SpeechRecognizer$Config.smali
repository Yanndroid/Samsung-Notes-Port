.class public Lcom/samsung/vsf/SpeechRecognizer$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private config:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    return-void
.end method

.method public getASRDictationModel()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "asrDictModels"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "dash_dict"

    iget-object v2, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCertificatePath()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/vsf/recognition/RecognizerConstants;->CERT_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/vsf/util/DeviceInfo;->isChineseDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "/system/etc/security/cacerts/00673b5b.0"

    :cond_0
    iget-object v1, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v2, "certPath"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEPDThresholdDuration()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "epdDurationThreshHold"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEncodingType()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "encodingType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIsByteOrderLittleEndian()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "isByteOrderLittleEndian"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsCensored()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "censor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsDumpRequired()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getEncodingType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getIsSPXDumpRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "dumpNeeded"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsEnableNoiseSeparation()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "clientOwnsNoiseSeparation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsEncodingRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "needEncoding"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsPCMDumpRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "pcmDumpNeeded"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsRMSrequired()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "clientNeedsRMS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsRecordedBufferNeeded()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "bufferNeeded"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsRecordingRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "clientOwnsRecorder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsSPXDumpRequired()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "spxDumpNeeded"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsSpeechDetectionNotificationRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "requireSpeechDetection"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsSpeechDetectionRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "clientOwnsSpeechDetector"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsTLSUsed()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    sget-boolean v1, Lcom/samsung/vsf/recognition/RecognizerConstants;->USE_TLS:Z

    const-string v2, "useTLS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsTOSAccepted()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "tos_full"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsTOSOptionAccepted()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "tos_optional"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsUsePLMRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "locale"

    const-string v2, "en-US"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPortNumber()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "portNumber"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/vsf/util/DeviceInfo;->isChineseDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getLocale()Ljava/lang/String;

    move-result-object v0

    const-string v2, "de-DE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "it-IT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "es-ES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "pt-BR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ru-RU"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "en-GB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "ko-KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ja-JP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "zh-CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "zh-TW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "zh-SG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "fr-FR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "es-US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "zh-HK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_3
    :goto_0
    const/16 v0, 0x1bb

    iget-object v2, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    return v0
.end method

.method public getRPCTimeoutValue()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "rpc_timeout"

    const v2, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSDKClient()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    sget-object v1, Lcom/samsung/vsf/recognition/RecognizerConstants$Client;->VOICE_MEMO:Lcom/samsung/vsf/recognition/RecognizerConstants$Client;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSPDThresholdDuration()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "spdDurationThreshHold"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSamplingRate()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "samplingRate"

    const/16 v2, 0x3e80

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getServerIP()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "serverAddress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/vsf/util/DeviceInfo;->isChineseDevice()Z

    move-result v0

    const-string v2, "voiceapi-kr.samsung-svoice.com"

    if-eqz v0, :cond_0

    const-string v0, "voiceapi-cn.samsung-svoice.cn"

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/vsf/SpeechRecognizer$Config;->getLocale()Ljava/lang/String;

    move-result-object v0

    const-string v3, "de-DE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "it-IT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "es-ES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "pt-BR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ru-RU"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "en-GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "en-US"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "fr-FR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "es-US"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "ko-KR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ja-JP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "zh-CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "zh-TW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "zh-SG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "zh-HK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "voiceapi-us.samsung-svoice.com"

    :goto_1
    iget-object v2, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public getSessionMode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "sessionMode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setASRDictationModel(Ljava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "asrDictModels"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEPDThresholdDuration(I)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    const/16 v0, 0x190

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "epdDurationThreshHold"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setEncodingType(I)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "encodingType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setIsCensored(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "censor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsDumpRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "dumpNeeded"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsEncodingRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "needEncoding"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsNoiseSeparationRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "clientOwnsNoiseSeparation"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsPCMDumpRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "pcmDumpNeeded"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsPartialResultsRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "clientNeedsSASR"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsRMSRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "clientNeedsRMS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsRecordedBufferRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "bufferNeeded"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsRecordingRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "clientOwnsRecorder"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsSPXDumpRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "spxDumpNeeded"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsSpeechDetectionNotificationRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "requireSpeechDetection"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsSpeechDetectionRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "clientOwnsSpeechDetector"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "locale"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRPCTimeout(I)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "rpc_timeout"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setSDKClientType(Lcom/samsung/vsf/recognition/RecognizerConstants$Client;)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "clientType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSPDThresholdDuration(I)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "spdDurationThreshHold"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setSamplingRate(I)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "samplingRate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setServerDetails(Ljava/lang/String;I)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "serverAddress"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v0, "portNumber"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setServerDetails(Ljava/lang/String;IZLjava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "serverAddress"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v0, "portNumber"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string p2, "useTLS"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string p2, "certPath"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSessionMode(I)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "sessionMode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SamsungSpeechRecognizer : sessionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tickcount"

    invoke-static {v0, p1}, Lcom/samsung/vsf/util/SVoiceLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTOSAccepted(ZZ)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "tos_full"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v0, "tos_optional"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setUsePLM(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string v1, "usePLM"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method
