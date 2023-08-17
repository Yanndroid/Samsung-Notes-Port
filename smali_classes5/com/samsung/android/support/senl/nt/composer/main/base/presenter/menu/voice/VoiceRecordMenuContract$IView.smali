.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract changeMode(ZLcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;)V
.end method

.method public abstract hideAllView()V
.end method

.method public abstract hideAudioPlayView()V
.end method

.method public abstract hideEditTrashView()V
.end method

.method public abstract initSTT(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)V
.end method

.method public abstract notifyDataChanged()V
.end method

.method public abstract notifyItemChanged(I)V
.end method

.method public abstract notifyItemInserted(I)V
.end method

.method public abstract notifyItemRemoved(I)V
.end method

.method public abstract setItemSelectedMode(Z)V
.end method

.method public abstract setPlayPauseIcon(Z)V
.end method

.method public abstract setPlaySpeed(Ljava/lang/String;)V
.end method

.method public abstract setPlayTime(Ljava/lang/String;)V
.end method

.method public abstract setProgress(I)V
.end method

.method public abstract setRecordTime(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;)V
.end method

.method public abstract setRecordingTime(Ljava/lang/String;)V
.end method

.method public abstract setTotalRecordTime(Ljava/lang/String;)V
.end method

.method public abstract showAudioPlayView(IIZ)V
.end method

.method public abstract showEditView(ZI)V
.end method

.method public abstract showInitView(Z)V
.end method

.method public abstract showRecordingPlayView(ZIZI)V
.end method

.method public abstract showRecordingView()V
.end method

.method public abstract toggleExpendVoicePanel()V
.end method

.method public abstract updateBackground(IZZ)V
.end method

.method public abstract updateSelectedItemMenu(I)V
.end method
