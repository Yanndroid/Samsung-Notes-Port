.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->f(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isSetPassword(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->g(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;->h(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
