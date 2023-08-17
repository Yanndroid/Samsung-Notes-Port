.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnded(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public onStarted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsSyncWithSamsungAccountPrefFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
