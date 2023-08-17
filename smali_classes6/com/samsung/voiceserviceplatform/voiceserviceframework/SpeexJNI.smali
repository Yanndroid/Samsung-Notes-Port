.class public Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SPEEX_GET_FRAME_SIZE:I = 0x3

.field public static final SPEEX_SET_QUALITY:I = 0x4

.field public static final SPEEX_SET_VBR:I = 0xc

.field public static final SPEEX_SET_VBR_QUALITY:I = 0xe

.field private static jniLibraryLoaded:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "speex-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;->jniLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native startEncode([B)I
.end method


# virtual methods
.method public final isSpeexLoaded()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexJNI;->jniLibraryLoaded:Z

    return v0
.end method

.method public native speex_bits_destroy(Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;)V
.end method

.method public native speex_bits_init(Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;)V
.end method

.method public native speex_bits_reset(Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;)V
.end method

.method public native speex_bits_write(Lcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;[BI)I
.end method

.method public native speex_encode_int(J[SLcom/samsung/voiceserviceplatform/voiceserviceframework/SpeexBits;)I
.end method

.method public native speex_encoder_ctl(JILjava/lang/Long;)I
.end method

.method public native speex_encoder_ctl_get_vbr(JILjava/lang/Long;)I
.end method

.method public native speex_encoder_destroy(J)V
.end method

.method public native speex_encoder_init(I)J
.end method
