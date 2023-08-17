.class public Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/google/android/play/core/assetpacks/j;

.field public c:Lcom/google/android/play/core/assetpacks/bb;

.field private final d:Lcom/google/android/play/core/internal/af;

.field private e:Lcom/google/android/play/core/assetpacks/b;

.field private f:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/google/android/play/core/internal/af;

    const-string v1, "AssetPackExtractionService"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/af;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->d:Lcom/google/android/play/core/internal/af;

    return-void
.end method

.method private final declared-synchronized b(Landroid/os/Bundle;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "notification_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_subtext"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification_timeout"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "notification_on_click_intent"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_0

    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->a:Landroid/content/Context;

    const-string v9, "playcore-assetpacks-service-notification-channel"

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_1
    const v3, 0x1080081

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v0, "notification_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->d:Lcom/google/android/play/core/internal/af;

    const-string v2, "Starting foreground service."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->b:Lcom/google/android/play/core/assetpacks/j;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/assetpacks/j;->a(Z)V

    if-lt v5, v6, :cond_2

    const-string v1, "notification_channel_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "playcore-assetpacks-service-notification-channel"

    const/4 v3, 0x2

    invoke-direct {v1, v2, p1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->f:Landroid/app/NotificationManager;

    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    const p1, -0x70492694

    invoke-virtual {p0, p1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "action_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->d:Lcom/google/android/play/core/internal/af;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v6, "updateServiceState: %d"

    invoke-virtual {v1, v6, v3}, Lcom/google/android/play/core/internal/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->a()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->d:Lcom/google/android/play/core/internal/af;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v4, v0, v5

    const-string v1, "Unknown action type received: %d"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/af;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->d:Lcom/google/android/play/core/internal/af;

    const-string v1, "Stopping service."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/play/core/internal/af;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->b:Lcom/google/android/play/core/assetpacks/j;

    invoke-virtual {v0, v2}, Lcom/google/android/play/core/assetpacks/j;->a(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->e:Lcom/google/android/play/core/assetpacks/b;

    return-object p1
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->d:Lcom/google/android/play/core/internal/af;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onCreate"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/af;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/db;->a(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/play/core/assetpacks/a;->a(Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;)V

    new-instance v0, Lcom/google/android/play/core/assetpacks/b;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->c:Lcom/google/android/play/core/assetpacks/bb;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/play/core/assetpacks/b;-><init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;Lcom/google/android/play/core/assetpacks/bb;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->e:Lcom/google/android/play/core/assetpacks/b;

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->f:Landroid/app/NotificationManager;

    return-void
.end method
