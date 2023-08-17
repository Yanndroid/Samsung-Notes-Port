.class public Lcom/samsung/android/support/senl/nt/app/settings/external/SCloudSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTO_SYNC_DISABLED:I = 0xb

.field public static final AUTO_SYNC_ENABLED:I = 0xa

.field public static final FAILED_CONSENT_TO_USE_NETWORK:I = 0x4

.field public static final INSTALL_SCLOUD:I = 0x7

.field public static final LOCAL_CLOUD_SETTING:I = 0x1

.field private static final MIN_SUPPORT_SCLOUD_VERSION:I = 0x11e636e0

.field public static final NOT_LOGIN:I = 0x8

.field public static final NO_PERMISSION:I = 0x9

.field public static final NO_PERSONAL_INFO:I = 0x5

.field public static final NO_PRIVACY_NOTICE:I = 0x6

.field public static final SAMSUNG_CLOUD_SETTING:I = 0x2

.field private static final SAMSUNG_NOTES_SETTINGS_ACTION:Ljava/lang/String; = "com.samsung.android.scloud.SAMSUNG_NOTES_SETTINGS"

.field public static final SC_RPC_SETTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SCloudSetting"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSCloudSupportState(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Lc3/l;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    invoke-static {p0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, 0x8

    return p0

    :cond_1
    const-string v0, "android.permission.GET_ACCOUNTS"

    const-string v1, "android.permission.READ_PHONE_STATE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 p0, 0x9

    return p0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isVZWModel()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-static {p0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object v0

    invoke-virtual {v0}, Lh/e;->d()Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_7

    invoke-static {p0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object v0

    invoke-virtual {v0}, Lh/e;->e()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object v0

    invoke-virtual {v0}, Lh/e;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->hasCloudSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->isSamsungCloudUpper505(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    const v2, 0x11e636e0

    const-string v3, "com.samsung.android.scloud"

    invoke-virtual {v0, p0, v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v2
.end method

.method public static getSCloudSyncState(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lc3/l;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    invoke-static {p0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p0, 0x8

    return p0

    :cond_1
    invoke-static {p0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object v0

    invoke-virtual {v0}, Lh/e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    invoke-static {p0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object v0

    invoke-virtual {v0}, Lh/e;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    invoke-static {p0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object v0

    invoke-virtual {v0}, Lh/e;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    const-string v0, "android.permission.GET_ACCOUNTS"

    const-string v1, "android.permission.READ_PHONE_STATE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const/16 p0, 0x9

    return p0

    :cond_5
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result p0

    if-nez p0, :cond_6

    const/16 p0, 0xb

    return p0

    :cond_6
    const/16 p0, 0xa

    return p0
.end method

.method public static launchSCloudRPCSetting(Landroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object p0

    invoke-virtual {p0}, Lh/e;->l()V

    return-void
.end method

.method public static launchSCloudSyncSetting(Ljava/lang/ref/WeakReference;)Z
    .locals 6
    .param p0    # Ljava/lang/ref/WeakReference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    const-string v2, "SCloudSetting"

    if-nez v0, :cond_0

    const-string v0, "launchSCloudSyncSetting, fragment is null"

    :goto_0
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return v1

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "launchSCloudSyncSetting, context is null"

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "com.samsung.android.scloud"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.samsung.android.scloud.SAMSUNG_NOTES_SETTINGS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v0, "launchSCloudSyncSetting, intent do not have component"

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 p0, 0x1

    return p0
.end method
