.class public abstract Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;
.super Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/presenter/base/IBaseBiometricContract$IView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;,
        Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;
    }
.end annotation


# static fields
.field private static final BIOMETRIC_LOCKOUT_DEFAULT_SECONDS:I = 0x1e

.field private static final DELAY_WAIT_TO_CHECK_BIOMETRIC_UI_CLOSED:I = 0xc8

.field private static final MESSAGE_WAIT_TO_CHECK_BIOMETRIC_UI_CLOSED:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;

.field private mIsAutoCloseCase:Z

.field private mIsChangingToPasswordUI:Z

.field private mIsLockOutCase:Z

.field private mIsLockOutPermanentCase:Z

.field private mIsWaitingPromptUI:Z

.field private mPasswordType:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;

.field public mRetryDialog:Landroidx/appcompat/app/AlertDialog;

.field private mTimerDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AbsBaseBiometricView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;->COMMON:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mPasswordType:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;Lcom/samsung/android/support/senl/nt/app/lock/view/base/e;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mHandler:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;->COMMON:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mPasswordType:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;Lcom/samsung/android/support/senl/nt/app/lock/view/base/e;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mHandler:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mPasswordType:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->lambda$showTimerDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->lambda$showTimerDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->lambda$showTimerDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private closeTimerDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mTimerDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mTimerDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mTimerDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsLockOutCase:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->showTimerDialogAfterLockOut()V

    return-void
.end method

.method static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$showTimerDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishCancel()V

    return-void
.end method

.method private synthetic lambda$showTimerDialog$1(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishCancel()V

    return-void
.end method

.method private synthetic lambda$showTimerDialog$2(Landroid/content/DialogInterface;)V
    .locals 0

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->mIsFinishing:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->authenticate()V

    :cond_0
    return-void
.end method

.method private onAuthenticationLockedOutUnderP()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->isOldBiometricBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->getSavedOldBiometricBlockingTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->showTimerDialog(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setOldBiometricMethodFailCount(Landroid/content/Context;I)V

    return-void
.end method

.method private setBiometricBlockedTime(I)V
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBiometricBlockedTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setBlockEndTimeBiometric(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method private showTimerDialogAfterLockOut()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    const-string v1, "ShowTimerDialogAfterLockOut"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsLockOutCase:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->getRemainBlockTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->showTimerDialog(I)V

    return-void
.end method


# virtual methods
.method public abstract authenticate()V
.end method

.method public abstract cancelAuthenticate()V
.end method

.method public changeToPasswordVerification(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeToPasswordVerification context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsChangingToPasswordUI:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->cancelAuthenticate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsAutoCloseCase:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishCancel()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mPasswordType:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;->OLD:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->changeViewTo(II)V

    :goto_1
    return-void
.end method

.method public getIsChangingToPasswordUI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsChangingToPasswordUI:Z

    return v0
.end method

.method public getRemainBlockTime()I
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getBlockEndTimeBiometric(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRemainBlockTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v0, v2

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v6, v0

    float-to-int v0, v6

    const/16 v2, 0x1e

    if-le v0, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->setBiometricBlockedTime(I)V

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method public getSavedOldBiometricBlockingTime()J
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getOldBiometricMethodBlockEndTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7530

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setOldBiometricMethodBlockEndTime(Landroid/content/Context;J)V

    :cond_0
    return-wide v2
.end method

.method public isBiometricBlocked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->getRemainBlockTime()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOldBiometricBlocked()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->getSavedOldBiometricBlockingTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOldBiometricBlockedPermanent()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getOldBiometricMethodBlockEndTime(Landroid/content/Context;)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPasswordBlocked()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->getSavedPasswordBlockingTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAuthenticationLockOutPermanent(Ljava/lang/CharSequence;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    const-string v1, "onAuthenticationLockOutPermanent"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsWaitingPromptUI:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->changeToPasswordVerification(I)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsLockOutPermanentCase:Z

    :goto_0
    return-void
.end method

.method public onAuthenticationLockedOut()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    const-string v1, "onAuthenticationLockedOut"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsWaitingPromptUI:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->onAuthenticationLockedOutUnderP()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->isBiometricBlocked()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->setBiometricBlockedTime(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsLockOutCase:Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->getRemainBlockTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->showTimerDialog(I)V

    :goto_0
    return-void
.end method

.method public onAuthenticationSuccess()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    const-string v1, "onAuthenticationSuccess"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->setBiometricBlockedTime(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishSuccess()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->isSubDisplay(Landroid/content/res/Configuration;)Z

    move-result p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged, isSubScreen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->cancelAuthenticate()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mHandler:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mHandler:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;

    :cond_0
    return-void
.end method

.method public onOldBiometricAuthenticationFailed()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getOldBiometricMethodFailCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit8 v2, v0, 0x32

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    const-string v3, "old biometric blocked permanent"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setOldBiometricMethodBlockEndTime(Landroid/content/Context;J)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->changeToPasswordVerification(I)V

    goto :goto_0

    :cond_1
    rem-int/lit8 v1, v0, 0x5

    if-nez v1, :cond_2

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    const-string v2, "old biometric blocked temporary"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setOldBiometricMethodBlockEndTime(Landroid/content/Context;J)V

    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->showTimerDialog(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->cancelAuthenticate()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setOldBiometricMethodFailCount(Landroid/content/Context;I)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old biometric fail count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mTimerDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mTimerDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mTimerDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mRetryDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mRetryDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->onWindowFocusChanged(Z)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsAutoCloseCase:Z

    if-eqz p1, :cond_0

    const-string p1, "get focus with disappearance of the prompt caused by Timeout"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsAutoCloseCase:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishCancel()V

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsLockOutCase:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const-string p1, "get focus with disappearance of the prompt caused by Lockout"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->showTimerDialogAfterLockOut()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mHandler:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mHandler:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$MessageHandler;

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsLockOutPermanentCase:Z

    if-eqz p1, :cond_3

    const-string p1, "get focus with disappearance of the prompt caused by LockoutPermanent"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsLockOutPermanentCase:Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->changeToPasswordVerification(I)V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsWaitingPromptUI:Z

    if-eqz p1, :cond_3

    const-string p1, "lose focus with showing up the prompt"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->closeTimerDialog()V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsWaitingPromptUI:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public setIsAutoCloseCase(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsAutoCloseCase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsAutoCloseCase:Z

    return-void
.end method

.method public setIsWaitingPromptUI(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsWaitingPromptUI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mIsWaitingPromptUI:Z

    return-void
.end method

.method public showTimerDialog(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showTimerDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mTimerDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-gtz p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/d;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/d;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/b;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/b;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;)V

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils;->showTimerDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mTimerDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/a;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;->mTimerDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/c;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/c;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
