.class public Lcom/samsung/android/support/senl/nt/app/settings/external/GlobalSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GLOBAL_CONTINUITY_SETTING:Ljava/lang/String; = "continuity_setting"

.field private static final MULTI_DEVICES_ACTION:Ljava/lang/String; = "com.samsung.android.intent.action.MULTI_DEVICES"

.field private static final TAG:Ljava/lang/String; = "GlobalSetting"

.field private static final USEFUL_FEATURE_MAIN_SETTINGS_ACTION:Ljava/lang/String; = "com.samsung.settings.USEFUL_FEATURE_MAIN_SETTINGS"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static launchContinuitySetting(Ljava/lang/ref/WeakReference;I)V
    .locals 7
    .param p0    # Ljava/lang/ref/WeakReference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const-string v1, "GlobalSetting"

    if-nez v0, :cond_0

    const-string p1, "launchContinuitySetting, fragment is null"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "launchContinuitySetting, context is null"

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getSemPlatformVersionInt(I)I

    move-result v4

    const v5, 0x222e0

    if-ge v4, v5, :cond_2

    const-string v4, "com.samsung.settings.USEFUL_FEATURE_MAIN_SETTINGS"

    goto :goto_2

    :cond_2
    const-string v4, "com.samsung.android.intent.action.MULTI_DEVICES"

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, ":settings:fragment_args_key"

    const-string v6, "continuity_setting"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p1, "launchContinuitySetting, intent do not have component"

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method
