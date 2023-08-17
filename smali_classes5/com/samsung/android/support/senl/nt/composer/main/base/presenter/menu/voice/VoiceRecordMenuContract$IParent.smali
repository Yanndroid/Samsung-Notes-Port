.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuContract$IParent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IParent"
.end annotation


# virtual methods
.method public abstract getSPDVoiceTagPath()Ljava/lang/String;
.end method

.method public abstract seekToSTTTouchedWord(I)V
.end method

.method public abstract setSPDVoiceTagPath(Ljava/lang/String;)V
.end method

.method public abstract showAudioPlayView(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;IZ)V
.end method

.method public abstract showInitView()V
.end method

.method public abstract showRecordingView()V
.end method

.method public abstract updateVoiceMenu()V
.end method
