.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NETWORK_CONNECTION_ACTION:Ljava/lang/String; = "NETWORK_CONNECTION_ACTION"

.field public static final NETWORK_CONNECTION_FAILED_TYPE:Ljava/lang/String; = "NETWORK_CONNECTION_FAILED_TYPE"

.field public static final NETWORK_CONNECTION_SYNC_TYPE:Ljava/lang/String; = "NETWORK_CONNECTION_SYNC_TYPE"

.field public static final NETWORK_RECONNECTION_RESULT_TYPE:Ljava/lang/String; = "NETWORK_RECONNECTION_RESULT_TYPE"

.field public static final REQUEST_APP_PROCESS_INFO_NAME:Ljava/lang/String; = "processState"

.field private static final TAG:Ljava/lang/String; = "NT$NetworkConnectionFailedHelper"

.field private static final mInstance:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;


# instance fields
.field private mCurrentDialog:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->mInstance:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->mCurrentDialog:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->mInstance:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;

    return-object v0
.end method

.method private getPacakageNameLollipop(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "NT$NetworkConnectionFailedHelper"

    :try_start_0
    const-class v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v2, "processState"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-gt v3, v4, :cond_0

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object p1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object p1, p1, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "getPacakageNameLollipop() : Failed with Exception"

    goto :goto_0

    :catch_1
    const-string p1, "getPacakageNameLollipop() : Failed with NoSuchFieldException | IllegalAccessException | SecurityException"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private startActivity(Landroid/content/Context;II)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "NETWORK_CONNECTION_FAILED_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "NETWORK_CONNECTION_SYNC_TYPE"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of p2, p1, Landroid/app/Activity;

    const/high16 p3, 0x20000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "NT$NetworkConnectionFailedHelper"

    if-nez p2, :cond_3

    const-string p2, "startActivity() - context is instance of non-activity"

    invoke-static {v3, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->getCurrentTaskPacakageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lc3/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {}, Lc3/b;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v2

    const-string v4, "\t current package is %s (using FLAG_ACTIVITY_SINGLE_TOP)"

    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {}, Lc3/b;->b()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "\t current package not %s (using FLAG_ACTIVITY_MULTIPLE_TASK)"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p2, 0x48800000    # 262144.0f

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move v1, v2

    goto :goto_2

    :cond_3
    const-string p2, "startActivity() - context is instance of activity (using FLAG_ACTIVITY_SINGLE_TOP)"

    :goto_1
    invoke-static {v3, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "RUN_ON_ACTIVITY"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_4
    const-string p1, "startActivity() : NetworkConnectionFailedDialog Activity is not found!"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public getCurrentTaskPacakageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->getPacakageNameLollipop(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper$1;-><init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reConnectedToMobile(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->mInstance:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "NT$NetworkConnectionFailedHelper"

    const-string v2, "reConnectedToMobile()"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->mCurrentDialog:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->getConnectionType()I

    move-result v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->mCurrentDialog:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->getConnectionType()I

    move-result v1

    const/16 v2, 0x66

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->mCurrentDialog:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->getConnectionType()I

    move-result v1

    const/16 v2, 0x67

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->mCurrentDialog:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->getConnectionType()I

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->mCurrentDialog:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->finish()V

    :cond_2
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->cancelAllImportNotification()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reConnectedToWAN(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->mInstance:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "NT$NetworkConnectionFailedHelper"

    const-string v2, "reConnectedToWAN()"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->mCurrentDialog:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->finish()V

    :cond_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->cancelNetworkErrNotification()V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->cancelAllImportNotification()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public reachedToMaxBytes(Landroid/content/Context;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Landroid/app/DownloadManager;->getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v7, "[Connection] reachedToMaxBytes(getMaxBytesOverMobile()) : %d / %d"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "NT$NetworkConnectionFailedHelper"

    invoke-static {v7, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v1, v8

    if-lez v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v0

    :goto_0
    invoke-static {p1}, Landroid/app/DownloadManager;->getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object p1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v0

    aput-object v3, v4, v6

    const-string v3, "[Connection] reachedToMaxBytes(getRecommendedMaxBytesOverMobile()) : %d / %d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-lez p1, :cond_3

    move v5, v6

    :cond_3
    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "reachedToMaxBytes() : %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method public setCurrentDialog(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->mInstance:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->mCurrentDialog:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public show(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "NT$NetworkConnectionFailedHelper"

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->updateCurrentType(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->cancelNetworkErrNotification()V

    const-string p1, "NT$NetworkConnectionFailedHelper"

    const-string p2, "show() : incorrectly connection type(%d)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->startActivity(Landroid/content/Context;II)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->getInstance()Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->getResIdToast(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->postToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateCurrentType(Landroid/content/Context;I)I
    .locals 4

    const-string v0, "NT$NetworkConnectionFailedHelper"

    const-string v1, "updateCurrentType()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lc3/h;->l(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "updateCurrentType() - CONNECTED_TO_WAN -"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string p2, "updateCurrentType() NetworkUtil.isNonPhone(context) == true"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x63

    const-string p1, "updateCurrentType() - WIFI_ONLY_MODELS_CONNECTION_FAILED -"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    invoke-static {p1}, Lc3/q;->l(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lc3/h;->o(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    const/16 p1, 0x64

    const-string p2, "updateCurrentType() - WIFI_NOT_AVAILABLE_ON_WIFI_ONLY -"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_2
    invoke-static {p1}, Lc3/h;->o(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "updateCurrentType() NetworkUtil.isWifiConnected(context) == true"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    invoke-static {p1}, Lc3/h;->g(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "updateCurrentType() NetworkUtil.isFlightMode(context) == true"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x65

    const-string p2, "updateCurrentType() - FLIGHT_MODE -"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_4
    invoke-static {p1}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p1, "updateCurrentType() NetworkUtil.isDataCapable(context) == false"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x66

    const-string p2, "updateCurrentType() - MOBILE_DATA_TURNED_OFF -"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_5
    invoke-static {p1}, Lc3/h;->m(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "updateCurrentType() Roaming"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-static {p1}, Lc3/h;->f(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "updateCurrentType() \tNetworkUtil.isDataRoamingEnabled(context) == false"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x67

    const-string p1, "updateCurrentType() - DATA_ROAMING_IS_OFF -"

    goto :goto_1

    :cond_6
    const-string p1, "updateCurrentType() - ROAM_DATA_WARNING -"

    :goto_1
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_7
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->reachedToMaxBytes(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "updateCurrentType() reachedToMaxBytes(context) == true"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x68

    const-string p2, "updateCurrentType() - DATA_REACHED_TO_LIMIT -"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_8
    const-string p1, "updateCurrentType() - MOBILE_DATA_WARNING -"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    return p1
.end method
