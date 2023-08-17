.class public abstract Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseContract$IView;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mIsFinishing:Z

.field private mStateListener:Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AbsBaseView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->mIsFinishing:Z

    return-void
.end method


# virtual methods
.method public changeScenario(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->mStateListener:Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;->onScenarioChange(I)V

    :cond_0
    return-void
.end method

.method public changeViewTo(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->mStateListener:Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;->onViewChange(II)V

    :cond_0
    return-void
.end method

.method public exitMultiWindow()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->exitMultiWindow(Landroid/app/Activity;)Z

    :cond_0
    return-void
.end method

.method public finishCancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->mIsFinishing:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->mStateListener:Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;->onFinishCancel()V

    :cond_0
    return-void
.end method

.method public finishSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->mStateListener:Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;->onFinishSuccess()V

    :cond_0
    return-void
.end method

.method public getSavedPasswordBlockingTime()J
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getBlockEndTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blocking time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v4, 0x7530

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setBlockEndTime(Landroid/content/Context;J)V

    move-wide v0, v2

    :cond_1
    return-wide v0
.end method

.method public isBlockedByMultiwindow()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public resetPasswordBlockingEndTime()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setBlockEndTime(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method public setOnFinishCallback(Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->mStateListener:Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;

    return-void
.end method
