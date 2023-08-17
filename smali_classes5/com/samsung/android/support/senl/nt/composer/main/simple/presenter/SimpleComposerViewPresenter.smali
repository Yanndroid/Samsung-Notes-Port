.class public Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mComposerStateManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;

.field private mIsInitialized:Z

.field private mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

.field private final mSCVListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVListenerManager;

.field private final mSCVScrollZoomController:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;

.field private mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "SimpleComposerViewPresenter"

    const-string v1, "SCV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mIsInitialized:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mComposerStateManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mSCVScrollZoomController:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVListenerManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVListenerManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mSCVListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVListenerManager;

    return-void
.end method


# virtual methods
.method public getSCVScrollZoomController()Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$ZoomScrollPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mSCVScrollZoomController:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;

    return-object v0
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mSCVScrollZoomController:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->init(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;)V

    return-void
.end method

.method public initNote()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->setPageDefaultHeight(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mSCVScrollZoomController:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->setView(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;->initView(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mSCVListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVListenerManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVListenerManager;->init(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mIsInitialized:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mSCVListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVListenerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVListenerManager;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mComposerStateManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mComposerStateManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;->restoreState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;

    return-void
.end method
