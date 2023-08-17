.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AIR_COMMAND_PACKAGE:Ljava/lang/String; = "com.samsung.android.service.aircommand"

.field private static final AIR_COMMAND_REMOTE_SPEN_BIND_SERVICE_VERSION_0:Ljava/lang/String; = "com.samsung.android.service.aircommand.remotespen.external.RemoteSpenBindingService"

.field private static final AIR_COMMAND_REMOTE_SPEN_BIND_SERVICE_VERSION_1:Ljava/lang/String; = "com.samsung.android.service.aircommand.remotespen.external.RemoteSpenInternalBindingService"

.field private static final AIR_COMMAND_REMOTE_SPEN_SERVICE_VERSION:Ljava/lang/String; = "com.samsung.android.service.aircommand.remotespenservice.version"

.field private static final CMD_SET_ALLOW_MULTIPLE_SPEN:Ljava/lang/String; = "setAllowMultipleSpen"

.field private static final KEY_ALLOW_MULTIPLE_SPEN_ENABLED:Ljava/lang/String; = "isEnable"

.field private static final KEY_CMD:Ljava/lang/String; = "cmd"

.field private static final KEY_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field private static final KEY_IS_SUCCESS:Ljava/lang/String; = "isSuccess"

.field private static final KEY_REQUEST_ID:Ljava/lang/String; = "requestId"

.field private static final REQUEST_ID_SET_ALLOW_MULTIPLE_SPEN:I = 0x1

.field private static final SETTINGS_PEN_DETECT_MODE_DISABLED:Ljava/lang/String; = "pen_detect_mode_disabled"

.field private static final TAG:Ljava/lang/String; = "InAppActivityAttributes"


# instance fields
.field private final mRemoteSPenBindServiceConnection:Landroid/content/ServiceConnection;

.field private mRemoteSPenBindServiceMessenger:Landroid/os/Messenger;

.field private mUseMultiplePensBefore:Z

.field private mWakeLockForDim:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes$1;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mRemoteSPenBindServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mRemoteSPenBindServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->setUseMultiplePensEnabled(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private bindRemoteSPenBindService(Landroid/app/Activity;)V
    .locals 7

    const-string v0, "com.samsung.android.service.aircommand"

    const-string v1, "InAppActivityAttributes"

    const-string v2, "bindRemoteSPenBindService# "

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "com.samsung.android.service.aircommand.remotespen.external.RemoteSpenBindingService"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const-string v6, "com.samsung.android.service.aircommand.remotespenservice.version"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v5, :cond_0

    const-string v3, "com.samsung.android.service.aircommand.remotespen.external.RemoteSpenInternalBindingService"

    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mRemoteSPenBindServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v4, v0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->unbindRemoteSPenBindService(Landroid/app/Activity;)V

    return-void
.end method

.method private enableUseMultiplePensMode(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->isUseMultiplePensEnabled(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mUseMultiplePensBefore:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->bindRemoteSPenBindService(Landroid/app/Activity;)V

    return-void
.end method

.method private isUseMultiplePensEnabled(Landroid/app/Activity;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "InAppActivityAttributes"

    if-nez v0, :cond_0

    const-string p1, "isUseMultiplePensEnabled# contentResolver is null"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "pen_detect_mode_disabled"

    const/4 v3, 0x1

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-gtz p1, :cond_1

    move v1, v3

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUseMultiplePensEnabled# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private restoreUseMultiplePensMode(Landroid/app/Activity;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mUseMultiplePensBefore:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes$2;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;Landroid/app/Activity;)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->setUseMultiplePensEnabled(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private setUseMultiplePensEnabled(ZLjava/lang/Runnable;)V
    .locals 4
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mRemoteSPenBindServiceMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUseMultiplePensEnabled# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppActivityAttributes"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "cmd"

    const-string v3, "setAllowMultipleSpen"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "isEnable"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    const-string v2, "requestId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Messenger;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes$3;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes$3;-><init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;Landroid/os/Looper;)V

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mRemoteSPenBindServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    :goto_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUseMultiplePensEnabled# RemoteException: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    throw p1
.end method

.method private unbindRemoteSPenBindService(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "InAppActivityAttributes"

    const-string v1, "unbindRemoteSPenBindService# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mRemoteSPenBindServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mRemoteSPenBindServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private declared-synchronized wakeLockForDim(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mWakeLockForDim:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const-string v0, "InAppActivityAttributes"

    const-string v1, "wakeLockForDim#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mWakeLockForDim:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "InAppActivityAttributes"

    const-string v0, "wakeLockForDim# isHeld"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "InAppActivityAttributes"

    const-string v1, "wakeLockForDim# acquire"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x30000006

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mWakeLockForDim:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized wakeLockRelease()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mWakeLockForDim:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    const-string v0, "InAppActivityAttributes"

    const-string v1, "wakeLockRelease#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mWakeLockForDim:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InAppActivityAttributes"

    const-string v1, "wakeLockRelease# release"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mWakeLockForDim:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->mWakeLockForDim:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearAttributes(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "InAppActivityAttributes"

    const-string v1, "clearAttributes"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->restoreUseMultiplePensMode(Landroid/app/Activity;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setImmersiveModeEnable(Landroid/app/Activity;Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->wakeLockRelease()V

    return-void
.end method

.method public setupAttributes(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "InAppActivityAttributes"

    const-string v1, "setupAttributes"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->enableUseMultiplePensMode(Landroid/app/Activity;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setImmersiveModeEnable(Landroid/app/Activity;Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->setTurnScreenOn(Landroid/app/Activity;ZZ)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppActivityAttributes;->wakeLockForDim(Landroid/app/Activity;)V

    return-void
.end method

.method public windowFocusChanged(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "InAppActivityAttributes"

    const-string v1, "windowFocusChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/SystemUi;->setImmersiveModeEnable(Landroid/app/Activity;Z)V

    return-void
.end method
