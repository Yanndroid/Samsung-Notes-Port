.class public Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/migration/common/MigrationService$LocalBinder;
    }
.end annotation


# static fields
.field private static final MIGRATION_NOTIFICATION_CHANNEL:Ljava/lang/String; = "MigrationServiceNotificationChannel"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MigrationService"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService$LocalBinder;-><init>(Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private onStartCommandDL(Landroid/content/Intent;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/notes/sync/R$string;->migration_restore_data:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;->DEFAULT:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->registerService(Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private registerService(Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    const-string v2, "MigrationServiceNotificationChannel"

    const/4 v6, 0x3

    move-object v1, p0

    move-object v3, p2

    move-object v4, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->registerService(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;I)Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->unregisterService(Landroid/app/Service;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    sget-object p3, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand. flags : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->onStartCommandDL(Landroid/content/Intent;)I

    move-result p1

    return p1
.end method

.method public startForegroundService(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->TAG:Ljava/lang/String;

    const-string v1, "startForegroundService."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;->FOREGROUND:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->registerService(Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startForegroundService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;->DEFAULT:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->registerService(Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopForegroundService()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->TAG:Ljava/lang/String;

    const-string v1, "stopForegroundService"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->unregisterService(Landroid/app/Service;)V

    return-void
.end method
