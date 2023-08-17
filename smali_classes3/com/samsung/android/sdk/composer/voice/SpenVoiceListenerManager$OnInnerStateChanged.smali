.class public interface abstract Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager$OnInnerStateChanged;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/voice/SpenVoiceListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnInnerStateChanged"
.end annotation


# virtual methods
.method public abstract onInfo(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V
.end method

.method public abstract onPlayComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
.end method

.method public abstract onPlayError(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
.end method

.method public abstract onPlayPaused(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
.end method

.method public abstract onPlayPrepared(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
.end method

.method public abstract onPlayResumed(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
.end method

.method public abstract onPlaySeekComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
.end method

.method public abstract onPlayStarted(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
.end method

.method public abstract onPlayStopped(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
.end method

.method public abstract onRecordCancelled(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
.end method

.method public abstract onRecordError(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
.end method

.method public abstract onRecordPaused(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
.end method

.method public abstract onRecordResumed(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
.end method

.method public abstract onRecordStarted(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Ljava/lang/String;)V
.end method

.method public abstract onRecordStopped(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
.end method

.method public abstract onRecordUpdateTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
.end method
