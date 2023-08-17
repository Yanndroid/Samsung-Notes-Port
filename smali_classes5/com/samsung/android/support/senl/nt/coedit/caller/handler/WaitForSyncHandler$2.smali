.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState$ExternalSnapContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->registerExternalSnap(Landroid/content/Context;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Z)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

.field public final synthetic val$appContext:Landroid/content/Context;

.field public final synthetic val$docUuid:Ljava/lang/String;

.field public final synthetic val$groupId:Ljava/lang/String;

.field public final synthetic val$isAutoUpdate:Z

.field public final synthetic val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

.field public final synthetic val$originFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$appContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$docUuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$groupId:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$isAutoUpdate:Z

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    iput-object p7, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$originFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isExceedExternalSnap()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->isExceedRunningNoteUuids()Z

    move-result v0

    return v0
.end method

.method public wakeExternalSnap()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$docUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$groupId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$isAutoUpdate:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->g(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;->INVALID:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$State;

    if-ne v0, v1, :cond_0

    const-string v0, "WaitForSyncHandler"

    const-string v1, "wakeExternalSnap, INVALID"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/WDocUtils;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".sdocx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$docUuid:Ljava/lang/String;

    const-string v2, "externalSnapStart"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->addToRunningNoteUuids(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$appContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$originFilePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$docUuid:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$groupId:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getResourceId()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;

    invoke-direct {v9, p0, v5}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;Ljava/lang/String;)V

    invoke-interface/range {v2 .. v9}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->externalSnapStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;)V

    return-void
.end method
