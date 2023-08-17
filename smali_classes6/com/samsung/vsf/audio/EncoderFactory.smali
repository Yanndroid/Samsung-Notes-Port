.class public Lcom/samsung/vsf/audio/EncoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncoderInstance(Lcom/samsung/vsf/audio/AudioProcessorConfig;)Lcom/samsung/vsf/audio/IAudioEncoder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/vsf/audio/AudioProcessorConfig;->getEncodingType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/samsung/vsf/audio/OpusEncoder;->getInstance()Lcom/samsung/vsf/audio/OpusEncoder;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/samsung/vsf/audio/SpeexEncoder;->getInstance()Lcom/samsung/vsf/audio/SpeexEncoder;

    move-result-object p0

    return-object p0
.end method
