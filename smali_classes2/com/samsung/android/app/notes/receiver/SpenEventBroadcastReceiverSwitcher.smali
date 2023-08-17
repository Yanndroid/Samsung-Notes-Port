.class public Lcom/samsung/android/app/notes/receiver/SpenEventBroadcastReceiverSwitcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLASS_NAME_SPEN_EVENT_BROADCAST_RECEIVER:Ljava/lang/String; = "com.samsung.android.app.notes.receiver.SPenEventBroadcastReceiver"

.field private static final TAG:Ljava/lang/String; = "SpenEventBroadcastReceiverSwitcher"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableSpenEventBroadcastReceiver(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SpenEventBroadcastReceiverSwitcher"

    const-string v1, "disableSpenEventBroadcastReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.notes.receiver.SPenEventBroadcastReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->setComponentEnabledSetting(Landroid/content/Context;Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static enableSpenEventBroadcastReceiver(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SpenEventBroadcastReceiverSwitcher"

    const-string v1, "enableSpenEventBroadcastReceiver"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.notes.receiver.SPenEventBroadcastReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->setComponentEnabledSetting(Landroid/content/Context;Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static getComponentEnabledSetting(Landroid/content/Context;)I
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.notes.receiver.SPenEventBroadcastReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getComponentEnabledSetting(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method
