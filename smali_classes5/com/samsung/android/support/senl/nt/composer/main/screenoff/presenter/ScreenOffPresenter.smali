.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter$IMenuBarNavigator;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter$ISaveNoteDialogNavigator;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter$ISelectNoteDialogNavigator;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/IClosingAnimationListener;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/IPinAnimationListener;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/IRotationModel;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/IFoldModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_WAIT_TO_GET_WINDOW_FOCUSED:I = 0x3

.field private static final MESSAGE_WAIT_TO_INIT_FINISHED:I = 0x1

.field private static final MESSAGE_WAIT_TO_ON_FINISH:I = 0x2

.field private static final MESSAGE_WAIT_TO_SHOW_UNTIL_NAVIGATION_SHOWN:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static final WAIT_TO_INIT_FINISHED_DELAY:I = 0x1f4

.field private static final WAIT_TO_ON_FINISH_DELAY:I = 0x3e8

.field private static final WAIT_TO_ON_GET_WINDOW_FOCUSED_DELAY:I = 0x1f4

.field private static final WAIT_TO_SHOW_UNTIL_NAVIGATION_SHOWN_DELAY:I = 0x2bc


# instance fields
.field private mCloseModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/close/CloseModel;

.field private mClosingAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;

.field private mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;

.field private mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

.field private mDialogCreator:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$IDialogCreator;

.field private mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;

.field private mFoldModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;

.field private mGuidePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;

.field private final mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

.field private mInitFinished:Z

.field private mIsChangedNote:Z

.field private mIsReserveRestart:Z

.field private mLoadedPinModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;

.field private mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

.field private mPinAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

.field private mPreHideOrientation:I

.field private mPreShowOrientation:I

.field private mRotationModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;

.field private final mSOMBasePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;

.field public mSOMView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;

.field private mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

.field private mScrollPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;

.field private mShowingAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

.field private mStartingPenHoverAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

.field private mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ScreenOffPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mInitFinished:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mIsChangedNote:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mIsReserveRestart:Z

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mPreHideOrientation:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mPreShowOrientation:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSOMBasePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;->setContract(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter$Contract;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateNone;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateNone;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mInitFinished:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onWaitToInitFinished(I)V

    return-void
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private changeNote(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSOMBasePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->changeNote(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSOMBasePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSOMBasePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    return-object v0
.end method

.method private getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSOMBasePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    return-object v0
.end method

.method private handleExceptionalCase()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/close/CloseModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/close/CloseModel;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mCloseModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/close/CloseModel;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/close/CloseModel;->setCloseReason(I)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onFinish()V

    return-void
.end method

.method private isNoteChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mIsChangedNote:Z

    return v0
.end method

.method private needToWaitToShowUntilNavigationShown()Z
    .locals 4

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mPreShowOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mPreHideOrientation:I

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToWaitToShowUntilNavigationShown# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private onWaitToGetWindowFocused()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onWaitToGetWindowFocused# delay 500"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private onWaitToInitFinished(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWaitToInitFinished# delay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private onWaitToOnFinish()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onWaitToOnFinish# delay 1000"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public blockUserInput(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockUserInput# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "getIntent#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "getWindow#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public hasCachedNote()Z
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->loadCachedNoteUuid()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasCachedNote# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEditedNote()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->getObjectChanged()Z

    move-result v0

    return v0
.end method

.method public isEmptyNote()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/DialogCreator;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated# uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "sdoc_uuid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mDialogCreator:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$IDialogCreator;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mLoadedPinModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mRotationModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/close/CloseModel;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/close/CloseModel;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mCloseModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/close/CloseModel;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mGuidePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mScrollPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->onActivityCreated(Landroid/app/Activity;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/StartingPenHoverAnimation;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mStartingPenHoverAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mShowingAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mPinAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mClosingAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/IFoldModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mFoldModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->setExitReason(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onBackKeyPressed(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public onClosingAnimationEnd()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onClosingAnimationEnd#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onSave()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onWaitToOnFinish()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler;->requestGoToSleep(I)V

    return-void
.end method

.method public onClosingAnimationPenAttach()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onClosingAnimationPenAttach#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->setExitReason(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onStartAnimationClosing()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onSave()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onFinish()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Z)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->isIsMainDisplay()Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged# halfWheelRotation/isMainDisplay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenButtonHoverTap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->onConfigurationChanged(IZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mGuidePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->onConfigurationChanged(IZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mScrollPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;->onConfigurationChanged(IZ)V

    return-void
.end method

.method public onDetachView()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachView# state/initFinished/isReserveRestart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mInitFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mIsReserveRestart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateNone;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mStartingPenHoverAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mShowingAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mPinAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mClosingAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mFoldModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;->release()V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mInitFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mGuidePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mScrollPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->onDetachView()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->onDetachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->onDetachView()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mIsReserveRestart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/ExecutorFactory;->createExecutor(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mIsReserveRestart:Z

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->release()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->cancelAll()V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mInitFinished:Z

    return-void
.end method

.method public onDispatchActionDownEvent()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onDispatchActionDownEvent#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onDispatchActionDownEvent()V

    :cond_0
    return-void
.end method

.method public onDispatchActionUpEvent()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onDispatchActionUpEvent#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onDispatchActionUpEvent()V

    :cond_0
    return-void
.end method

.method public onDisplayStateChanged(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayStateChanged# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onScreenOn(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayStateChanged# has MESSAGE_WAIT_TO_ON_FINISH "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayStateChanged# has MESSAGE_WAIT_TO_GET_WINDOW_FOCUSED "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onScreenOff(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onFinish()V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    return-void
.end method

.method public onFinish()V
    .locals 9

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSOMBasePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSOMBasePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/SOMBasePresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSpenDocModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerSpenDocModel;->getPageLengthInSingleMode()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->getSizeLevel()I

    move-result v3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->getCurrentPairedColorCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->getEnabledWritingColorSwitch()Z

    move-result v5

    const-string v6, "Settings"

    invoke-static {v6}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v6

    const-string v7, "settings_pen_color_for_saved_notes"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->onExit(ZIILjava/lang/String;ZI)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mCloseModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/close/CloseModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/close/CloseModel;->getCloseReason()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinish# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/Constants$CloseReason;->toStringCloseReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->removeCachedNoteUuid()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->removeCachedNotePath()V

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->getSaveResult()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->save()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;->onFinish()V

    :cond_2
    return-void
.end method

.method public onFocused()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onFocused#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->onFocused()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mGuidePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->onFocused()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mScrollPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;->onFocused()V

    return-void
.end method

.method public onFolded()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onFolded#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->setExitReason(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onFolded(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public onHalfWheelRotationChanged()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onHalfWheelRotationChanged#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onConfigurationChanged(Z)V

    return-void
.end method

.method public onHomeKeyPressed()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onHomeKeyPressed#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->setExitReason(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onHomeKeyPressed(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public onInitFinished()V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitFinished# uuid/docPath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sdoc_uuid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "doc_path"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInitFinished# object count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectCount(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInitFinished# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/StaticalModelInitializer;->initialize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSOMView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;->attachMenuBar(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSOMView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mGuidePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;->attachGuide(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSOMView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mScrollPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;->attachScroll(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSOMView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;->attachCovered(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_main_background_light:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mLoadedPinModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mRotationModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->init(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/IRotationModel;Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mCloseModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/close/CloseModel;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/close/CloseModel;->init(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mDialogCreator:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$IDialogCreator;

    invoke-virtual {v0, v3, p0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->init(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SaveNoteDialogPresenter$ISaveNoteDialogNavigator;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/SelectNoteDialogPresenter$ISelectNoteDialogNavigator;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->onAttachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mGuidePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mGuidePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->onAttachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mGuidePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->initView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mScrollPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mRotationModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mScrollPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mScrollPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mIsChangedNote:Z

    const/4 v4, 0x4

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;->initView(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->init()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->onAttachView(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->initView(IZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mRotationModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;

    invoke-virtual {v0, v3, v5, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter$IMenuBarNavigator;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->onAttachView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mIsChangedNote:Z

    if-eqz v3, :cond_1

    move v4, v1

    :cond_1
    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->initView(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSOMView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;->requestRelayout()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->isNoteChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onPostNoteChanged()V

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->saveCache()V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mInitFinished:Z

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v3, "onInitFinished# has MESSAGE_WAIT_TO_INIT_FINISHED"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onWaitToInitFinished(I)V

    :cond_4
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->setExitReason(I)V

    return-void
.end method

.method public synthetic onInitialized()V
    .locals 0

    invoke-static {p0}, Le4/a;->f(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public onInterrupted()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onInterrupted#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->setExitReason(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onInterrupted(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onPause#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onPause(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public onPinAnimationEnd()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onPinAnimationEnd#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPinToAOD(Landroid/graphics/Bitmap;Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onPin#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->getPinController()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->pinToAOD(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public onPostNoteChanged()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onPostNoteChanged#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onFocused()V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mIsChangedNote:Z

    return-void
.end method

.method public onPreHide()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mPreHideOrientation:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreHide# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mPreHideOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateHiding;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateHiding;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->main_layout_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->menu_bar_layout:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->scroll_layout:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->guide_layout:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->onPreHide()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onWindowFocusChanged(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public onPreNoteChanged()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onPreNoteChanged#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mIsChangedNote:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mGuidePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mScrollPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->onDestroy()V

    return-void
.end method

.method public onPreShow()V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mPreShowOrientation:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mStartingPenHoverAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;->isAnimating()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mShowingAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreShow# mInitFinished/orientation/isAnimating/startCommand "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mInitFinished:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mPreShowOrientation:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mInitFinished:Z

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenButtonHoverTap;

    if-eqz v2, :cond_3

    const-string v0, "onPreShow# WAIT_TO_ON_GET_WINDOW_FOCUSED_DELAY"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onWaitToGetWindowFocused()V

    goto/16 :goto_3

    :cond_3
    if-eqz v0, :cond_5

    const-string v0, "onPreShow# stop animation"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mStartingPenHoverAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mStartingPenHoverAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/starting/IStartingAnimation;->stop()V

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mShowingAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->stop()V

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->main_layout_container:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->menu_bar_layout:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->scroll_layout:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->guide_layout:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->needToWaitToShowUntilNavigationShown()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onWindowFocusChanged(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mCoveredPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;->onPreShow()V

    return-void
.end method

.method public onReadyToShow(Z)V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReadyToShow# initFinished/withAnimation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mInitFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mInitFinished:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "onReadyToShow# ComposerView isn\'t set !!!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onFinish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->onReadyToShow()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mGuidePresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->onReadyToShow()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mScrollPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;->onReadyToShow()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onReadyToShow(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mShowingAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->getColor()I

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->needToWaitToShowUntilNavigationShown()Z

    move-result v5

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->init(Landroid/view/View;Landroid/view/View;IZLcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/IShowingAnimationListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mShowingAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/showing/ShowingAnimation;->start()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x1f4

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onWaitToInitFinished(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onResume#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;->executeOnResume(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/AODCommandFactory;->makeAODCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/IAODCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/aod/IAODCommand;->executeOnResume(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    return-void
.end method

.method public onSave()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getPrimitiveStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSave# primitiveStartCommand "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->isConverted()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "onSave# saveCachePrimitiveDocument by LoadNoteByDoubleTapOnAOD"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_screenoff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ".sdocx"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentFileUtils;->createSavedPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->getPinController()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;

    move-result-object v3

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->replacePinnedNoteData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->saveCachePrimitiveDocument(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;->SAVE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->setReleaseType(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->save()V

    :cond_1
    return-void
.end method

.method public onSaveNoteCache()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onSaveNoteCache#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mInitFinished:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;->SAVE_CACHE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->setReleaseType(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getPrimitiveStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;

    if-eqz v1, :cond_0

    const-string v1, "onSaveNoteCache# saveCacheEditedPinDocument by LoadNoteByDoubleTapOnAOD"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_screenoff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ".sdocx"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentFileUtils;->createSavedPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->saveCacheEditedPinDocument(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->saveCache()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveNoteDialogDiscard()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onSaveNoteDialogDiscard#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->setCloseReason(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->discard()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;->DISCARD:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->setReleaseType(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onFinish()V

    return-void
.end method

.method public onSaveNoteDialogSave()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onSaveNoteDialogSave#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->setCloseReason(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onStartAnimationClosing()V

    return-void
.end method

.method public onSavePinCache(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->getPinController()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->loadExistingPinnedLegacyNotePathByPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSavePinCache# legacyPinPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "/"

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->convert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSavePinCache# uuid/path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->getPinController()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->deleteExistingPinnedLegacyNoteByExceptedPath(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->getPinController()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->loadExistingPinnedNoteUuidByUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSavePinCache# uri/existingUuid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSavePinCache# save existing pinned note "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->savePinCache(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->getPinController()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->deleteExistingPinnedDataByExceptedUri(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getPrimitiveStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSavePinCache# primitiveStartCommand "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;

    if-eqz p1, :cond_2

    const-string p1, "onSavePinCache# savePrimitiveDocument by LoadNoteByDoubleTapOnAOD"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->savePrimitiveDocument()V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;->SAVE_PUSHED:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->setReleaseType(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mControllerManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->getPinController()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->savePinCache()V

    return-void
.end method

.method public onSelectNoteDialogDiscard()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onPreNoteChanged()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getPrimitiveStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;->getUri()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelectNoteDialogDiscard# uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;-><init>()V

    invoke-interface {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;->setUri(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->setPrimitiveStartCommand(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->discard()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mLoadedPinModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mLoadedPinModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;->getNotePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSelectNoteDialogDiscard# selectionUuid/selectionNotePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "sdoc_uuid"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "doc_path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->changeNote(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectNoteDialogSave()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onPreNoteChanged()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getPrimitiveStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;->getUri()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelectNoteDialogSave# uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;-><init>()V

    invoke-interface {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;->setUri(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->setPrimitiveStartCommand(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->saveChanged()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mLoadedPinModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mLoadedPinModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;->getNotePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSelectNoteDialogSave# selectionUuid/selectionNotePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "sdoc_uuid"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "doc_path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->changeNote(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSetCloseReason(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->setCloseReason(I)V

    return-void
.end method

.method public onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetState before/after# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    return-void
.end method

.method public onShowingAnimation()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onShowingAnimation#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onReadyToShow(Z)V

    return-void
.end method

.method public onShowingAnimationEnd()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onShowingAnimationEnd#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    instance-of v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onWindowFocusChanged(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getPrimitiveStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->onShow(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onFocused()V

    return-void
.end method

.method public onShowingAnimationHalfProgressed()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onShowingAnimationHalfProgressed#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateShowing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onWindowFocusChanged(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public onStartAnimationClosing()V
    .locals 8

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onStartAnimationClosing#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isEmpty()Z

    move-result v7

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v7, :cond_0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->screenoff_no_content_to_save_note_discarded:I

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->screenoff_saved_in_notes_jp:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->screenoff_saved_in_notes:I

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->getStateSetter()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/StateClosing;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;->onSetState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onWindowFocusChanged(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mClosingAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->captureCurrentView()Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mRotationModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->getRotation()I

    move-result v6

    move-object v3, p0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->init(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/IClosingAnimationListener;Landroid/view/View;Landroid/graphics/Bitmap;IZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mClosingAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/closing/ClosingAnimation;->start()V

    return-void
.end method

.method public onStartAnimationPin(Z)V
    .locals 8

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onStartAnimationPin#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->screenoff_nothing_to_pin_to_always_on_display:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mPinAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getView()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getCompViewPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->captureCurrentView()Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v4, p0

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->init(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/IPinAnimationListener;Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mPinAnimation:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->start()V

    return-void
.end method

.method public synthetic onStarted()V
    .locals 0

    invoke-static {p0}, Le4/a;->m(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged# hasFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onWindowFocusChanged(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mMenuBarPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->onWindowFocusChanged(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    const-string v1, "show"

    invoke-interface {p1, p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onNotifyExecution(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter$MessageHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->makeStartCommand(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;->executeOnWindowFocusChanged(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/KeepScreenOnFlagFeature;->needToAddKeepScreenOnFlag()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->getScreenTimeOut()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/PowerManagerHandler;->requestGoToSleep(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    const-string v1, "close"

    invoke-interface {p1, p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;->onNotifyExecution(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public requestReadyToShow(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestReadyToShow# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->onReadyToShow(Z)V

    return-void
.end method

.method public synthetic requestRestart()V
    .locals 0

    invoke-static {p0}, Le4/a;->o(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/navigator/Navigator;)V

    return-void
.end method

.method public requestShowSaveNoteDialog()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "requestShowSaveNoteDialog#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->showSaveNoteDialog()V

    return-void
.end method

.method public requestShowSelectNoteDialog()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSaveModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mLoadedPinModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;->getUuid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestShowSelectNoteDialog# uuid/loadedPinUuid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogPresenterManager;->showSelectNoteDialog()V

    :cond_0
    return-void
.end method

.method public reserveRestart()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "reserveRestart#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mIsReserveRestart:Z

    return-void
.end method

.method public resetIntent()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "resetIntent#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pre_initialized"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "pen_intent_com"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "pin_com_load"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "pin_com_delete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method public setCloseReason(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mCloseModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/close/CloseModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/close/CloseModel;->setCloseReason(I)V

    return-void
.end method

.method public setLoadedPinNotePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mLoadedPinModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;->setNotePath(Ljava/lang/String;)V

    return-void
.end method

.method public setLoadedPinUuid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mLoadedPinModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/loadedpin/LoadedPinModel;->setUuid(Ljava/lang/String;)V

    return-void
.end method

.method public setState(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IStateSetter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/state/IState;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v0, "setState, exceptional case!!!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->handleExceptionalCase()V

    :goto_0
    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->TAG:Ljava/lang/String;

    const-string v1, "setView#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffPresenter;->mSOMView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;

    return-void
.end method
