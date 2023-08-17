.class Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;->onUpdate(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;

.field public final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic val$byUser:Z

.field public final synthetic val$isEnable:Z

.field public final synthetic val$preferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;ZLandroidx/preference/PreferenceScreen;ZLandroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener$1;->val$isEnable:Z

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener$1;->val$preferenceScreen:Landroidx/preference/PreferenceScreen;

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener$1;->val$byUser:Z

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdate# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener$1;->val$isEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncStateListener"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener$1;->val$preferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "settings_sync_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener$1;->val$preferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "settings_samsung_cloud_sync"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, v1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    check-cast v1, Landroidx/preference/TwoStatePreference;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener$1;->val$isEnable:Z

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener$1;->val$byUser:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/dialog/GDPRDialogFragment;->newInstance()Lcom/samsung/android/support/senl/nt/app/settings/common/dialog/GDPRDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/common/listener/SyncStateListener$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/settings/common/dialog/GDPRDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/common/dialog/GDPRDialogFragment;->showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
