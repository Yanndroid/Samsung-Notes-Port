.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController$VoicePlayPreparedListener;
    }
.end annotation


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mPlayObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

.field private mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

.field private mVoicePlayPreparedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController$VoicePlayPreparedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachView(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public onDetachView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public onPlayClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mFragment:Landroidx/fragment/app/Fragment;

    const/16 v1, 0x82

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->checkedNotificationPermissions(Landroidx/fragment/app/Fragment;I)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mPlayObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onPlayClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V

    :cond_1
    return-void
.end method

.method public onPlayComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onPlayComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V

    :cond_0
    return-void
.end method

.method public onPlayError(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onPlayError(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V

    :cond_0
    return-void
.end method

.method public onPlayPaused(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onPlayPaused(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V

    :cond_0
    return-void
.end method

.method public onPlayPrepared(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onPlayPrepared(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoicePlayPreparedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController$VoicePlayPreparedListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController$VoicePlayPreparedListener;->onPlayPrepared(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V

    :cond_1
    return-void
.end method

.method public onPlayResumed(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onPlayResumed(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V

    :cond_0
    return-void
.end method

.method public onPlaySeekComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onPlaySeekComplete(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V

    :cond_0
    return-void
.end method

.method public onPlayStarted(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onPlayStarted(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V

    :cond_0
    return-void
.end method

.method public onPlayStopped(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onPlayStopped(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V

    :cond_0
    return-void
.end method

.method public onRecordCancel(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onRecordCancel(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    :cond_0
    return-void
.end method

.method public onRecordError(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onRecordError(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V

    :cond_0
    return-void
.end method

.method public onRecordPause(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onRecordPause(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    :cond_0
    return-void
.end method

.method public onRecordPlayComplete(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onRecordPlayComplete(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    :cond_0
    return-void
.end method

.method public onRecordPlayError(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onRecordPlayError(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V

    :cond_0
    return-void
.end method

.method public onRecordPlayPause(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onRecordPlayPause(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    :cond_0
    return-void
.end method

.method public onRecordPlayPrepared(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onRecordPlayPrepared(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V

    :cond_0
    return-void
.end method

.method public onRecordPlayResume(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onRecordPlayResume(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    :cond_0
    return-void
.end method

.method public onRecordPlayStart(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onRecordPlayStart(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    :cond_0
    return-void
.end method

.method public onRecordPlayStop(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onRecordPlayStop(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    :cond_0
    return-void
.end method

.method public onRecordResume(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onRecordResume(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    :cond_0
    return-void
.end method

.method public onRecordStart(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onRecordStart(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRecordStop(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onRecordStop(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I)Z
    .locals 1

    const/16 v0, 0x82

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mPlayObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->onPlayClicked(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mPlayObjectVoice:Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onUpdateRecordPlayTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onUpdateRecordPlayTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V

    :cond_0
    return-void
.end method

.method public onUpdateRecordTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;->onUpdateRecordTime(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;I)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoiceListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingEventListener;

    return-void
.end method

.method public setVoicePlayPreparedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController$VoicePlayPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController;->mVoicePlayPreparedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/VoiceRecordingController$VoicePlayPreparedListener;

    return-void
.end method
