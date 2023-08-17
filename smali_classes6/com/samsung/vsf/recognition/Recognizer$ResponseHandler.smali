.class public interface abstract Lcom/samsung/vsf/recognition/Recognizer$ResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/recognition/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseHandler"
.end annotation


# virtual methods
.method public abstract onBufferReceived([S)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onErrorString(Ljava/lang/String;)V
.end method

.method public abstract onPartialResult(Ljava/util/Properties;)V
.end method

.method public abstract onRMSresult(I)V
.end method

.method public abstract onReadyForSpeech(Landroid/os/Bundle;)V
.end method

.method public abstract onResult(Ljava/util/Properties;)V
.end method

.method public abstract onSpeechEnded()V
.end method

.method public abstract onSpeechStarted()V
.end method
