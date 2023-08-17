.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$CoeditServiceAdapterCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

.field private mGroupId:Ljava/lang/String;

.field private mPreviousIsWritePermissionGranted:Z

.field private mResourceId:Ljava/lang/String;

.field private mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

.field private mTimeIsWritePermissionGranted:J

.field private mUuid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CoeditServiceManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;)Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    return-void
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public checkDeleteOnlyMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->checkDeleteOnlyMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearCoeditCallback()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCoeditCallback() uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

    return-void
.end method

.method public connect(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() CoeditService uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "document_uuid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public disconnect(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->TAG:Ljava/lang/String;

    const-string v0, "disconnect() CoeditService, service is not connected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "disconnect() CoeditService"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;->Internal:Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants$User;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->unsubscribe(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

    return-void
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mResourceId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mResourceId:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mResourceId:Ljava/lang/String;

    return-object v0
.end method

.method public hasConnection()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public internalChannelOpen(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V
    .locals 9

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalChannelOpen() uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", groupId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mGroupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", resourceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mResourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mGroupId:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mResourceId:Ljava/lang/String;

    new-instance v8, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$CoeditServiceAdapterCallback;

    invoke-direct {v8, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$CoeditServiceAdapterCallback;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V

    move-object v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->internalChannelOpen(Landroid/app/Activity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;)V

    return-void
.end method

.method public internalSnapRefresh()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalSnapRefresh() uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", groupId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mGroupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", resourceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mResourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->internalSnapRefresh(Ljava/lang/String;)V

    return-void
.end method

.method public internalSnapRestart(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalSnapRestart() uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", groupId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mGroupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", resourceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mResourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$CoeditServiceAdapterCallback;

    invoke-direct {v2, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$CoeditServiceAdapterCallback;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$CoeditServiceAdapterCallback;

    invoke-direct {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$CoeditServiceAdapterCallback;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->internalSnapRestart(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;)V

    return-void
.end method

.method public internalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V
    .locals 8

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mGroupId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->getWorkspaceId()Ljava/lang/String;

    move-result-object v5

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalSnapStart() : uuid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spaceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mGroupId:Ljava/lang/String;

    new-instance v7, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$CoeditServiceAdapterCallback;

    invoke-direct {v7, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager$CoeditServiceAdapterCallback;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->internalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService$Callback;)V

    return-void
.end method

.method public isCoeditMode()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCoeditMode(), uuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager;->isCoeditWithComposerRunning(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWritePermissionGranted()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mTimeIsWritePermissionGranted:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "isWritePermissionGranted# frequently called"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mPreviousIsWritePermissionGranted:Z

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->isWritePermissionGranted(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mPreviousIsWritePermissionGranted:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mTimeIsWritePermissionGranted:J

    goto :goto_0
.end method

.method public pauseConcurrency(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$PauseTimeoutCallback;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->pauseConcurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)I

    move-result p1

    return p1
.end method

.method public readyCoedit(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->connect(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public requestReadPermission()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->requestReadPermission(Ljava/lang/String;)V

    return-void
.end method

.method public resumeConcurrency(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->resumeConcurrency(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public saveCoeditCache()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->saveCoeditCache(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCoeditServiceContract(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->initCoeditHandlerContract(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandlerManager$Contract;)V

    :cond_0
    return-void
.end method

.method public trimMemory(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mService:Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;->trimMemory(I)V

    :cond_0
    return-void
.end method

.method public waitConnection(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->hasConnection()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;->onConnected()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "waitConnection# not connected"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/service/CoeditServiceManager;->mConnectionCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ConnectionCallback;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
