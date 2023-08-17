.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract captureCurrentView()Landroid/graphics/Bitmap;
.end method

.method public abstract endContinuousChange()V
.end method

.method public abstract executeWorkThreadFromCoedit(Z)V
.end method

.method public abstract init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
.end method

.method public abstract initBackgroundColor(Z)V
.end method

.method public abstract initScrollManager()V
.end method

.method public abstract isEasyWritingPadEnabled()Z
.end method

.method public abstract isMathEnabled()Z
.end method

.method public abstract isZoomLocked()Z
.end method

.method public abstract onChangedNoteType(Z)V
.end method

.method public abstract onChangedPageCount(I)V
.end method

.method public abstract onInAppCollaborationModeChanged(Z)V
.end method

.method public abstract release(Z)V
.end method

.method public abstract requestCancelTouch()V
.end method

.method public abstract requestReadyForSave()V
.end method

.method public abstract setAutoCleanUpEnabled(Z)V
.end method

.method public abstract setAutoScrollEnabled(Z)V
.end method

.method public abstract setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
.end method

.method public abstract setEasyWritingPadEnabled(Z)V
.end method

.method public abstract setFullScreenModeOn()V
.end method

.method public abstract setLongPressEnabled(Z)V
.end method

.method public abstract setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;)V
.end method

.method public abstract setTagList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setToolbarPosition(Landroid/graphics/Rect;Z)V
.end method

.method public abstract setWritingGuideLineEnabled(Z)V
.end method

.method public abstract setZoomLock(Z)V
.end method

.method public abstract showLockCanvasToolTip()V
.end method

.method public abstract startActionMode()V
.end method

.method public abstract startContinuousChange()V
.end method

.method public abstract stopActionMode()V
.end method

.method public abstract updateNextFocusForward(Z)V
.end method
