.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->updateBiometricsViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$finalHasFingerChanged:Z

.field public final synthetic val$finalHasIrisChanged:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;Landroid/content/Context;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$2;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$2;->val$finalHasFingerChanged:Z

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$2;->val$finalHasIrisChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->d(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefUseFingerprint(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->e(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefUseIris(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$2;->val$finalHasFingerChanged:Z

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$2;->val$finalHasIrisChanged:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$2;->val$context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$2;->val$finalHasIrisChanged:Z

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockToastUtils;->showBiometricChangeToast(Landroid/content/Context;ZZ)V

    :cond_1
    return-void
.end method
