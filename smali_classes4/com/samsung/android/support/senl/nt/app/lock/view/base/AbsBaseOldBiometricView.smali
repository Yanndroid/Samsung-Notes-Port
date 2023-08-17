.class public abstract Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;
.super Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView$PASSWORDTYPE;
    }
.end annotation


# static fields
.field private static final BIOMETRIC_LOCKOUT_DEFAULT_SECONDS:I = 0x1e

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsChangingToPasswordVerification:Z

.field private mPasswordType:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView$PASSWORDTYPE;

.field public mRetryDialog:Landroidx/appcompat/app/AlertDialog;

.field private mTimerDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AbsBaseOldBiometricView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView$PASSWORDTYPE;->COMMON:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView$PASSWORDTYPE;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->mPasswordType:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView$PASSWORDTYPE;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->lambda$showTimerDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->lambda$showTimerDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->lambda$showTimerDialog$1(Landroid/content/DialogInterface;)V

    return-void
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

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->authenticate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract authenticate()V
.end method

.method public abstract cancelAuthenticate()V
.end method

.method public changeToPasswordVerification(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->TAG:Ljava/lang/String;

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

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->mIsChangingToPasswordVerification:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->cancelAuthenticate()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->finishCancel()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->mPasswordType:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView$PASSWORDTYPE;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView$PASSWORDTYPE;->OLD:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView$PASSWORDTYPE;

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

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->mIsChangingToPasswordVerification:Z

    return v0
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

.method public isOldBiometricBlocked()Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->getSavedOldBiometricBlockingTime()J

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

.method public onBioAuthenticationFailed(Ljava/lang/Runnable;)V
    .locals 5
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->TAG:Ljava/lang/String;

    const-string v2, "old biometric blocked permanent"

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {p1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setOldBiometricMethodBlockEndTime(Landroid/content/Context;J)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->changeToPasswordVerification(I)V

    goto :goto_0

    :cond_1
    rem-int/lit8 v1, v0, 0x5

    if-nez v1, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->TAG:Ljava/lang/String;

    const-string v1, "old biometric blocked temporary"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setOldBiometricMethodBlockEndTime(Landroid/content/Context;J)V

    const/16 p1, 0x1e

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->showTimerDialog(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->cancelAuthenticate()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setOldBiometricMethodFailCount(Landroid/content/Context;I)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBioAuthenticationFailed fail count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBioAuthenticationLockOutPermanent(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onBioAuthenticationLockedOut()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->isOldBiometricBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->getSavedOldBiometricBlockingTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->showTimerDialog(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setOldBiometricMethodFailCount(Landroid/content/Context;I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->mTimerDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->mTimerDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->mTimerDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->mRetryDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->mRetryDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public showTimerDialog(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->mTimerDialog:Landroidx/appcompat/app/AlertDialog;

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

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/i;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/i;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/g;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/g;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;)V

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils;->showTimerDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->mTimerDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/f;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/f;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;->mTimerDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/h;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/h;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseOldBiometricView;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
