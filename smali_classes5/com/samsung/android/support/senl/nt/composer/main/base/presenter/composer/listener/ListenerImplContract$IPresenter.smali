.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPresenter"
.end annotation


# virtual methods
.method public abstract clearWritingToolControl()V
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;
.end method

.method public abstract getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
.end method

.method public abstract getDialogPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;
.end method

.method public abstract getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
.end method

.method public abstract getHandoffManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;
.end method

.method public abstract getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;
.end method

.method public abstract getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;
.end method

.method public abstract getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;
.end method

.method public abstract getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;
.end method

.method public abstract getPdfManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;
.end method

.method public abstract getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;
.end method

.method public abstract getThumbnailUpdateHandler()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;
.end method

.method public abstract isLockedScreen()Z
.end method

.method public abstract onAlignmentRunning(Z)V
.end method

.method public abstract onConvertToTextRunning(Z)V
.end method

.method public abstract onInitLayoutFinished()V
.end method

.method public abstract pauseCoEdit(Ljava/lang/String;Ljava/lang/Runnable;)V
.end method

.method public abstract requestReadyForSave()V
.end method

.method public abstract resumeCoEdit(Ljava/lang/String;)V
.end method

.method public abstract setContextMenu(Z)V
.end method
