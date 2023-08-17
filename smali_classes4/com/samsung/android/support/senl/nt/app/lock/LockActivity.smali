.class public Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static final INTENT_EXTRA_KEY_LOCK_SCENARIO_TYPE:Ljava/lang/String; = "key_lock_scenario_type"

.field private static final STATE_BUNDLE_KEY_QUEUE:Ljava/lang/String; = "state_bundle_key_queue"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentView:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;

.field private mLockViewListener:Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;

.field private mViewScenario:Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "LockActivity"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->mLockViewListener:Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;)Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->mViewScenario:Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->finishCancel()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->finishSuccess()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->showNextView(I)V

    return-void
.end method

.method private finishCancel()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private finishSuccess()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->startScenario(I)V

    return-void
.end method

.method public static bridge synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private hasFingerprintChanged()Z
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefFingerprintUniqueTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockBackupUtil;->getPrefFingerprintUniqueTimeBackup(Landroid/content/Context;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockBackupUtil;->getPrefFingerprintUniqueIdBackup(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefFingerprintUniqueId(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    if-eqz v0, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method private hasIrisChanged()Z
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefIrisUniqueTime(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockBackupUtil;->getPrefIrisUniqueTimeBackup(Landroid/content/Context;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockBackupUtil;->getPrefIrisUniqueIdBackup(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefIrisUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method private isFingerprintSupportedForMigration()Z
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefAvailableFingerprint(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefUseFingerprint(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->hasFingerprintChanged()Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isIrisSupportedForMigration()Z
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefAvailableIris(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefUseIris(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->hasIrisChanged()Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private showNextView(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->mViewScenario:Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->mViewScenario:Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;->getNextViewType()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showNextView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    const/16 v2, 0x15

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_4

    const/16 v2, 0x29

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p1, "invalid view type"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_1

    :pswitch_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyBackupPasswordView;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyBackupPasswordView;-><init>()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->isFingerprintSupportedForMigration()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->isIrisSupportedForMigration()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;->OLD:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->isFingerprintSupportedForMigration()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintView;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;->OLD:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintView;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->isIrisSupportedForMigration()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;->OLD:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseBiometricView$PASSWORDTYPE;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyBackupPasswordView;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyBackupPasswordView;-><init>()V

    goto :goto_1

    :pswitch_2
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;->CHANGE:Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;

    invoke-direct {p1, v2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;-><init>(ZLcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView$Mode;)V

    goto :goto_1

    :pswitch_3
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;-><init>()V

    goto :goto_1

    :pswitch_4
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;-><init>()V

    goto :goto_1

    :pswitch_5
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintView;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintView;-><init>()V

    goto :goto_1

    :pswitch_6
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;-><init>(ZI)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->mCurrentView:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;

    goto :goto_2

    :pswitch_7
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;

    invoke-direct {p1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;-><init>(Z)V

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->mCurrentView:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisViewUnderQ;-><init>()V

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyFingerprintViewUnderP;-><init>()V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;

    invoke-direct {v0, v3, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyPasswordView;-><init>(ZI)V

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;

    invoke-direct {p1, v3}, Lcom/samsung/android/support/senl/nt/app/lock/view/create/CreatePasswordView;-><init>(Z)V

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->mCurrentView:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->mLockViewListener:Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->setOnFinishCallback(Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->lock_fragment_container:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->mCurrentView:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->finishCancel()V

    :cond_8
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startScenario(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScenario : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefUseFingerprint(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefUseIris(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isBiometricDisabledMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    new-instance v3, Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;

    invoke-direct {v3, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;-><init>(IZZ)V

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->mViewScenario:Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Wrong scenario parameter."

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->finishCancel()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->showNextView(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->lock_main_activity:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->mCurrentView:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->mLockViewListener:Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->setOnFinishCallback(Lcom/samsung/android/support/senl/nt/app/lock/view/base/ViewStateListener;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "key_lock_scenario_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->startScenario(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_bundle_key_queue"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->mViewScenario:Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->mViewScenario:Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/lock/model/scenario/LockScenario;->getViewQueue()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "state_bundle_key_queue"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;->mCurrentView:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsBaseView;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
