.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$OnPageUpdateListener;
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$OnInitFinishedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mActivity:Landroid/app/Activity;

.field private final mBackgroundTaskManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;

.field public final mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

.field private mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IDialogManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandoffManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

.field private mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$HWToolbarContract;

.field private mInAppPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$InAppContract;

.field private mIsInitialized:Z

.field private mLastIsAbleToUseSpen:Ljava/lang/Boolean;

.field private final mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

.field private mMainToolbarCurrentRect:Landroid/graphics/Rect;

.field public mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

.field private mOldView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

.field private mOnInitFinishedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$OnInitFinishedListener;

.field public mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mThumbnailUpdateHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

.field private mUndoRedoPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/UndoRedoPresenter;

.field private mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ComposerViewPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->createModelManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->createComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->createListenerManager(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->createHandoffManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHandoffManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mBackgroundTaskManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$HWToolbarContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$HWToolbarContract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->toastDarkModeNotApplied(Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;)V

    return-void
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->initListenerForDoc()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getSpenObjectListener()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->addSpenObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V

    return-void
.end method

.method private initManager()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    const-string v2, "initManager# start"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->startTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager$IView;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->init(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->onAttachView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mThumbnailUpdateHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->init(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->initListener()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->initScrollManager()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mIsInitialized:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mOnInitFinishedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$OnInitFinishedListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$OnInitFinishedListener;->onInitFinished()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "initManager# end"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->endTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initNote(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->createDocInitialization()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;->init(Z)V

    return-void
.end method

.method private initView()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->initManager()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->addBackgroundColorObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverBackgroundColor;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setInvertBackgroundColorObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$ObserverInvertBackgroundColor;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->notifyBackgroundColorChange()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setViewUpdater(Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo$IViewUpdater;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->onChangedPageCount(I)V

    :cond_0
    return-void
.end method

.method private releaseManager()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    const-string v1, "releaseManager#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->release()V

    return-void
.end method

.method private toastDarkModeNotApplied(Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    const-string v0, "toastDarkModeNotApplied# currentNightMode is true."

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->isBackgroundColorInverted()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    const-string v0, "toastDarkModeNotApplied# isBackgroundColorInverted is true."

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;->Pdf:Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->dark_mode_not_applied_has_pdf_toast_msg:I

    :goto_1
    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;->Image:Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->dark_mode_not_applied_template_image_toast_msg:I

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public captureCurrentView()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    const-string v1, "captureCurrentView : mView is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->captureCurrentView()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public changeNoteType(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->changePageMode(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->initNote(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    sget-object p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCvPageSettingController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->updatePageLayoutByPageType(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->onChangedNoteType(Z)V

    return-void
.end method

.method public clearComposing()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Text:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->commitHistory()V

    :cond_1
    return-void
.end method

.method public clearWritingToolControl()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->clearControl()V

    return-void
.end method

.method public createComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;-><init>()V

    return-object v0
.end method

.method public createDocInitialization()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerDocInitialization;-><init>(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;)V

    return-object v0
.end method

.method public createHandoffManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager$IComposerPresenter;)V

    return-object v0
.end method

.method public createListenerManager(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager$ViewGetter;)V

    return-object v0
.end method

.method public createModelManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;-><init>()V

    return-object v0
.end method

.method public endContinuousChange()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->endContinuousChange()V

    :cond_0
    return-void
.end method

.method public executeWorkThreadFromCoedit(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->setDoingCoeditWorkThread(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSaveModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->setBlockedSave(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->stopGestureAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->setBlockDefaultPreTouch(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setTextInputBlock(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->executeWorkThreadFromCoedit(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mThumbnailUpdateHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->setBlockToUpdate(ZZ)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getBackgroundColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getColorAdjustment(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getBackgroundThemeColor()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->isBackgroundColorInverted()Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->hasBackgroundImage()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getBackgroundThemeColor(Landroid/content/Context;IZZ)I

    move-result v0

    return v0
.end method

.method public getBackgroundThemeColorTable()[I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->isBackgroundColorInverted()Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->hasBackgroundImage()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getBackgroundThemeColorTable(Landroid/content/Context;IZZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getClipboardController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getClipboardController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    move-result-object v0

    return-object v0
.end method

.method public getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    return-object v0
.end method

.method public getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    return-object v0
.end method

.method public getCurrentPageIndex()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDialogPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IDialogManager;

    return-object v0
.end method

.method public getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object v0
.end method

.method public getHandoffManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHandoffManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    return-object v0
.end method

.method public getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    return-object v0
.end method

.method public getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    return-object v0
.end method

.method public getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    return-object v0
.end method

.method public getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPdfManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getPdfManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    move-result-object v0

    return-object v0
.end method

.method public getRecentSearchKeywordManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getRecentSearchKeywordManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordManager;

    move-result-object v0

    return-object v0
.end method

.method public getSearchController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCompSearchController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSearchController;

    move-result-object v0

    return-object v0
.end method

.method public getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailUpdateHandler()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mThumbnailUpdateHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    return-object v0
.end method

.method public getToolbarPosition()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mMainToolbarCurrentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTwoPageLeftIndex(I)I
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x2

    :goto_0
    return p1
.end method

.method public getTwoPageRightIndex(I)I
    .locals 1

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method public getUndoRedoPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/UndoRedoPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mUndoRedoPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/UndoRedoPresenter;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCompVoiceController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;

    move-result-object v0

    return-object v0
.end method

.method public getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v0

    return-object v0
.end method

.method public hasBackgroundImage()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    const-string v1, "hasBackgroundImage mSpenWNote is null "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->hasBackgroundImage(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->createPageManager(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    invoke-direct {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mThumbnailUpdateHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->addListener(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$OnPageUpdateListener;)V

    new-instance p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/UndoRedoPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getQuickSaveTimer()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mThumbnailUpdateHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/UndoRedoPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mUndoRedoPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/UndoRedoPresenter;

    if-nez p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->initNote(Z)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mBackgroundTaskManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->startPageManagerInitTask(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHandoffManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IDialogManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCvPageSettingController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;->init(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager$IDialogManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->initView()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Z)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mThumbnailUpdateHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->release()V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getComposerModeController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;->stopParsingHyperText()V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNotePdfData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->clearNoteKey()V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mBackgroundTaskManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->startPageManagerInitTask(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeManager;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->fixInvalidInfo(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    :cond_0
    const/4 p3, 0x1

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->initNote(Z)V

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHandoffManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;->init(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->initView()V

    return-void
.end method

.method public insertNewPageByCurrentPage(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->insertNewPageByCurrentPage(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->goToPage(I)V

    return-void
.end method

.method public insertPage(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->insertPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->goToPage(I)V

    return-void
.end method

.method public isActionLinkEnabled()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/FeatureInfo;->isActionLinkEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerSpenUtils;->canUseSpen(Landroid/app/Activity;)Z

    move-result v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initActionLinkEnabled # isActionLinkEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", canUseSpen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isBackgroundColorInverted()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->isBackgroundColorInverted()Z

    move-result v0

    return v0
.end method

.method public isBackgroundDarkTheme()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->isBackgroundColorInverted()Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->hasBackgroundImage()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->isBackgroundDarkTheme(Landroid/content/Context;IZZ)Z

    move-result v0

    return v0
.end method

.method public isComposerViewDarkTheme()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->isBackgroundColorInverted()Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->hasBackgroundImage()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->isComposerViewDarkTheme(Landroid/content/Context;IZZ)Z

    move-result v0

    return v0
.end method

.method public isCtrlPressedLast()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->isCtrlPressedLast()Z

    move-result v0

    return v0
.end method

.method public isEasyWritingPadEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->isEasyWritingPadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFocusable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHyperTextEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "settings_show_links_in_notes"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLockedScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getProgressController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ProgressController;->isLockedScreen()Z

    move-result v0

    return v0
.end method

.method public isMathEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOverlappingWithFragment()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_2

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isZoomLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->isZoomLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAlignmentRunning(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$HWToolbarContract;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$HWToolbarContract;->onAlignmentRunning(Z)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Writing:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->cancelConvertToText()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "onBackPressed# cancel ConvertToText"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->cancelAlignment()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "onBackPressed# cancel Alignment"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->cancelMath()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "onBackPressed# cancel Math"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->isLockedScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "onBackPressed : Progress is running. return"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getComposerSelectionController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSelectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSelectionController;->clearSelection()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getClipboardController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ClipboardController;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onChangeMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getComposerModeController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$HWToolbarContract;

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;->onChangeMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController$HwToolbarContract;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Search:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->updateNextFocusForward(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->onConfigurationChanged(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCvPageSettingController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCvPageSettingController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->onConfigurationChanged(Landroid/content/res/Configuration;Z)V

    :cond_1
    return-void
.end method

.method public onConvertToTextRunning(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$HWToolbarContract;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$HWToolbarContract;->onConvertToTextRunning(Z)V

    :cond_0
    return-void
.end method

.method public onDeletedPages(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    const-string v0, "onDeletedPages#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mThumbnailUpdateHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;->getPageIdList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->onDeletedPages(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->onChangedPageCount(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->setDestroyFlag()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mBackgroundTaskManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->stop()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->clearComposing()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->releaseSpenComposerViewListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IView;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getComposerModeController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;->release()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->releaseView(ZZ)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mIsInitialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNotePdfData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->clearHavingPdf()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getComposerModeController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;->stopParsingHyperText()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->saveCacheToFile(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->isSkipToSaveCache()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getRecentSearchKeywordManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/search/RecentSearchKeywordManager;->save()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mThumbnailUpdateHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mThumbnailUpdateHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getSpenObjectListener()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->removeSpenObjectEventListener(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->onDestroy()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHandoffManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-void
.end method

.method public onDetachView()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onDetachView"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->onDetachView()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getComposerModeController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;->release()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->clearComposing()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->clearWritingToolControl()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->releaseView(ZZ)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->release()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mThumbnailUpdateHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->release()V

    :cond_2
    const-string v1, "onDetachView end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInAppCollaborationCloseButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mInAppPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$InAppContract;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$InAppContract;->onInAppCollaborationCloseButtonClicked()V

    :cond_0
    return-void
.end method

.method public onInAppCollaborationModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->onInAppCollaborationModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public onInitLayoutFinished()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mOnInitFinishedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$OnInitFinishedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$OnInitFinishedListener;->onInitLayoutFinished()V

    :cond_0
    return-void
.end method

.method public onInsertedPages(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .locals 1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    const-string v0, "onInsertedPages#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->onChangedPageCount(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCompVoiceController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;->onPause(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCompSipController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;->releaseKeyboardRunnable()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCompVoiceController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getSCoverController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerVoiceController;->onResume(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHandoffManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;->updatePendingStateFromHandoff()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->saveState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->setPrevNightMode(Z)V

    const-string v1, "SavedState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->saveCacheToFile(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    :cond_0
    return-void
.end method

.method public onScroll(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;FI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->onScroll(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;FI)V

    return-void
.end method

.method public onTouchOutside()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$HWToolbarContract;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController$HwToolbarContract;->onTouchOutside()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdatePage(IIILcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V
    .locals 2

    sget-object p4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdatePage# action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mIsInitialized:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCompSipController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "onWindowFocusChanged#!hasFocus"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;->updateClipboardFilter(ZLjava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCompSipController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "onWindowFocusChanged#hasFocus"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;->updateClipboardFilter(ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCompSipController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;->onGetWindowFocus()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-le p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x112

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public pauseCoEdit(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$5;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->pauseCoedit(Ljava/lang/String;Ljava/lang/Runnable;)I

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public releaseOldView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mOldView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->release(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mOldView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    return-void
.end method

.method public releaseView(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCompSipController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerSipController;->releaseKeyboardRunnable()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHandoffManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffManager;->getHandler()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isKeepTaskDuringActivityRecreation()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    const-string v0, "releaseView# keep old composer view"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mOldView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$6;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Z)V

    const/4 p1, 0x2

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->addPendingJob(Ljava/lang/Runnable;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->releaseManager()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->onDetachView()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->release(Z)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->releaseOldView(Z)V

    :goto_0
    return-void
.end method

.method public requestCancelTouch()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->requestCancelTouch()V

    :cond_0
    return-void
.end method

.method public requestFocus()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public requestReadyForSave()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->requestReadyForSave()V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "SavedState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    const-string v0, "restoreState# savedState  is null "

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;->getPrevNightMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mSpenWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getInvertBackgroundColorType(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->toastDarkModeNotApplied(Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isAvailableToSave()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    const-string v0, "restoreState# TaskController is running and isAvailableToSave() is false."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->restoreState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SavedState;)V

    return-void
.end method

.method public resumeCoEdit(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->resumeCoedit(Ljava/lang/String;)I

    return-void
.end method

.method public setAutoScrollEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->setAutoScrollEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setContainerControllers(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IDialogManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$OnInitFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getViewState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IDialogManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mOnInitFinishedListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter$OnInitFinishedListener;

    return-void
.end method

.method public setContextMenu(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContextMenu# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->startActionMode()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->stopActionMode()V

    :goto_0
    return-void
.end method

.method public setEasyWritingPadEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->setEasyWritingPadEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_0
    return-void
.end method

.method public setFullScreenModeOn()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->setFullScreenModeOn()V

    :cond_0
    return-void
.end method

.method public setHwToolbarPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$HWToolbarContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mHwToolbarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$HWToolbarContract;

    return-void
.end method

.method public setInAppPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$InAppContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mInAppPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$InAppContract;

    return-void
.end method

.method public setPageBackgroundColor(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->isEnabledDarkTheme()Z

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setDarkTheme(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mBackgroundTaskManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundTaskManager;->isRunningPageInfoInitTask()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getThumbnailUpdateHandler()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ThumbnailUpdateHandler;->updateThumbnailAll()V

    :cond_0
    return-void
.end method

.method public setTagList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->setTagList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setToolbarPosition(Landroid/graphics/Rect;Z)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mMainToolbarCurrentRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->setToolbarPosition(Landroid/graphics/Rect;Z)V

    :cond_0
    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setView# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    return-void
.end method

.method public setViewBackgroundColor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    const-string v0, "setViewBackgroundColor# mView is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->initBackgroundColor(Z)V

    return-void
.end method

.method public setWritingGuideLineEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->setWritingGuideLineEnabled(Z)V

    return-void
.end method

.method public setZoomLock(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->setZoomLock(Z)V

    :cond_0
    return-void
.end method

.method public showLockCanvasToolTip()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->showLockCanvasToolTip()V

    :cond_0
    return-void
.end method

.method public startContinuousChange()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;->startContinuousChange()V

    :cond_0
    return-void
.end method

.method public updateBodyTextPage()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mModelManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/ModelManager;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateBodyTextPage()V

    return-void
.end method

.method public updateDisallowTouchDownArea(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getComposerModeController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;->updateDisallowTouchDownArea(ZLandroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public updateSpenOnlyModeWithPreference(Z)Z
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mIsInitialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->isResumed()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->View:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerSpenUtils;->canUseSpen(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->isSpenOnlyMode()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isLastSpenOnlyMode()Z

    move-result v3

    if-eq v3, v2, :cond_4

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWindowFocusChanged update# currentSpenOnlyMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->setLastSpenOnlyMode(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setSpenOnlyMode(Landroid/content/Context;Z)V

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerSpenUtils;->isSpenSupportChangeable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->getToolTypeAction(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setToolTypeAction(II)V

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mLastIsAbleToUseSpen:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->mLastIsAbleToUseSpen:Ljava/lang/Boolean;

    return v0

    :cond_6
    :goto_2
    return v1
.end method
