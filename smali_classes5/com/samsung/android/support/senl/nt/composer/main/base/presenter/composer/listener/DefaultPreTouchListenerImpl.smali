.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mHandoffHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

.field private mIsBlockedTouch:Z

.field private mPendingHandoffMsg:Z

.field private mQuickSaveTimerController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DefaultPreTouchListenerImpl"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mHandoffHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mPendingHandoffMsg:Z

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mQuickSaveTimerController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mIsBlockedTouch:Z

    return-void
.end method

.method private notifyHandoffHandler(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mHandoffHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Writing:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mHandoffHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mPendingHandoffMsg:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mHandoffHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mPendingHandoffMsg:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mHandoffHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mHandoffHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;->sendHandoffDataMsg(I)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mPendingHandoffMsg:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private notifyQuickSaveTimer(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mQuickSaveTimerController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "hwTouchDown"

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;->lock(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "hwTouchUpCancel"

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;->unLock(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mIsBlockedTouch:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->TAG:Ljava/lang/String;

    const-string p2, "DefaultPreTouchListenerImpl# is blockedTouch"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/16 v1, 0xd3

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    if-eq p1, v0, :cond_2

    const/16 v0, 0xd4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd6

    if-ne p1, v0, :cond_4

    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->notifyQuickSaveTimer(Z)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->notifyHandoffHandler(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->notifyQuickSaveTimer(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->notifyHandoffHandler(Z)V

    :cond_4
    :goto_1
    return p2
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mHandoffHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/handoff/HandoffHandler;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mQuickSaveTimerController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

    return-void
.end method

.method public setBlockDefaultPreTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/DefaultPreTouchListenerImpl;->mIsBlockedTouch:Z

    return-void
.end method
