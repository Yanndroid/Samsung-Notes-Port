.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsLockPrefFragment"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->d(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "1"

    const-string v3, "0"

    const-string v4, "511"

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string p1, "5103"

    invoke-static {v4, p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;->hasEnrolledFingerprint(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->k(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->i(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)V

    :goto_1
    return v5

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefUseFingerprint(Landroid/content/Context;Z)V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->e(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    const-string p1, "5104"

    invoke-static {v4, p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;->hasEnrolledIris(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->k(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;I)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->j(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)V

    :goto_3
    return v5

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefUseIris(Landroid/content/Context;Z)V

    return v1

    :cond_7
    return v5
.end method
