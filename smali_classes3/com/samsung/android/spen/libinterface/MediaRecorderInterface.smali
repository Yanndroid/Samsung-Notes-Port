.class public interface abstract Lcom/samsung/android/spen/libinterface/MediaRecorderInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderConfig;,
        Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;,
        Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;,
        Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;
    }
.end annotation


# virtual methods
.method public abstract cancel()Z
.end method

.method public abstract getMaxAmplitude()I
.end method

.method public abstract isPauseSupported()Z
.end method

.method public abstract isStarting()Z
.end method

.method public abstract pause(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
.end method

.method public abstract prepare()V
.end method

.method public abstract prepareRecording(Ljava/lang/String;II)Z
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract resume(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
.end method

.method public abstract setActionListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;)V
.end method

.method public abstract setAudioEncoder(I)V
.end method

.method public abstract setAudioSource(I)V
.end method

.method public abstract setOutputFile(Ljava/lang/String;)V
.end method

.method public abstract setOutputFormat(I)V
.end method

.method public abstract setTimeListener(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;)V
.end method

.method public abstract start(Ljava/lang/String;Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;II)Z
.end method

.method public abstract stop(Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Z
.end method
