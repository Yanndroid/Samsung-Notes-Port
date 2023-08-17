.class public Lcom/samsung/android/app/notes/sync/importing/services/ImportService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/importing/services/ImportService$b;,
        Lcom/samsung/android/app/notes/sync/importing/services/ImportService$LocalBinder;
    }
.end annotation


# static fields
.field private static final IMPORT_NOTIFICATION:I = 0x44d

.field private static final IMPORT_NOTIFICATION_CHANNEL_OLD:Ljava/lang/String; = "ImportServiceNotificationChannel"

.field private static final IMPORT_NOTIFICATION_CHANNEL_V2:Ljava/lang/String; = "ImportServiceNotificationChannel2"

.field private static final TAG:Ljava/lang/String; = "ImportService"


# instance fields
.field private final mImportListener:La1/a;

.field private mImportLogic:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

.field private final mImportServiceConnectionList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/importing/services/ImportService$a;-><init>(Lcom/samsung/android/app/notes/sync/importing/services/ImportService;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportListener:La1/a;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportServiceConnectionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private onStartCommandDL(Landroid/content/Intent;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->startForegroundNotification()V

    const/4 p1, 0x1

    return p1
.end method

.method private startForegroundNotification()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_impoort_downloading_title:I

    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImportServiceNotificationChannel2"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x44d

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private unbind()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportServiceConnectionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbind, unbindService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImportService"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportServiceConnectionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public addConnection(Landroid/content/ServiceConnection;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportServiceConnectionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isImporting()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportLogic:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->t()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Lcom/samsung/android/app/notes/sync/importing/services/ImportService$LocalBinder;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/notes/sync/importing/services/ImportService$LocalBinder;-><init>(Lcom/samsung/android/app/notes/sync/importing/services/ImportService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 9

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "ImportService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportLogic:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    new-instance v1, Lcom/samsung/android/app/notes/sync/importing/services/ImportService$b;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/sync/importing/services/ImportService$b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->G(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$a;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportLogic:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->s()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportLogic:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportListener:La1/a;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->i(La1/a;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ImportServiceNotificationChannel"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->deleteNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/notes/sync/R$string;->sync_tipcard_impoort_downloading_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;->DEFAULT:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;

    const-string v4, "ImportServiceNotificationChannel2"

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->registerService(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;I)Lcom/samsung/android/support/senl/nt/base/common/service/ServiceInfo;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->unbind()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportLogic:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportListener:La1/a;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->C(La1/a;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->unregisterService(Landroid/app/Service;)V

    const-string v0, "ImportService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onNetworkConnected(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportLogic:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->x(ZZ)V

    return-void
.end method

.method public onNetworkConnectionFailedDialogFinish(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportLogic:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->y(II)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ImportService : onStartCommand() : flags = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ImportService"

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->onStartCommandDL(Landroid/content/Intent;)I

    move-result p1

    return p1
.end method

.method public reTryImporting()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportLogic:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->B()V

    return-void
.end method

.method public startImport(Ly0/a;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportLogic:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->I(Ly0/a;)V

    return-void
.end method

.method public stopImportInternal()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->mImportLogic:Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->J()V

    return-void
.end method
