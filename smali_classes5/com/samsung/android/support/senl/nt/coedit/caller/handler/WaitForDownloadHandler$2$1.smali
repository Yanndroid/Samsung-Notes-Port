.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->wakeExternalSnap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$docUuid:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$tempFilePath:Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$spaceId:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$request:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->g(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;)V

    return-void
.end method

.method public onFinished(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$appContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$spaceId:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$groupId:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$tempFilePath:Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$docUuid:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler$2;->val$request:Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;->h(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForDownloadHandler;Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadRequest;)V

    return-void
.end method
