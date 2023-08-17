.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/ExternalSnapState$ExternalSnapContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->requestDownloadInternal(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

.field public final synthetic val$appContext:Landroid/content/Context;

.field public final synthetic val$docUuid:Ljava/lang/String;

.field public final synthetic val$groupId:Ljava/lang/String;

.field public final synthetic val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

.field public final synthetic val$request:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;

.field public final synthetic val$spaceId:Ljava/lang/String;

.field public final synthetic val$tempFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$docUuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$appContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$tempFilePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$groupId:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    iput-object p7, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$spaceId:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$request:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isExceedExternalSnap()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->b(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->isExceedRunningNoteUuids()Z

    move-result v0

    return v0
.end method

.method public wakeExternalSnap()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->b(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$docUuid:Ljava/lang/String;

    const-string v2, "requestDownloadInternal"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->addToRunningNoteUuids(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->b(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$appContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$tempFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$docUuid:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$groupId:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getResourceId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2$1;-><init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;)V

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->downloadSpenWNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;)V

    return-void
.end method
