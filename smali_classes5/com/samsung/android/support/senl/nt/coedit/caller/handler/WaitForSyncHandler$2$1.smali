.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/DownloadNoteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->wakeExternalSnap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

.field public final synthetic val$tempFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->val$tempFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "externalSnapStart, onFailed, syncSpenWNote failed itemId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$docUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaitForSyncHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->val$tempFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->deleteTempFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$docUuid:Ljava/lang/String;

    const-string v2, "externalSnapStart-onFailed"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->removeFromRunningNoteUuids(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFinished(Ljava/lang/String;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    const-string v14, "externalSnapStart-onFinished"

    const-string v13, "WaitForSyncHandler"

    new-instance v12, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$appContext:Landroid/content/Context;

    invoke-direct {v12, v0}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->h()V

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    const-string v4, "lastModifiedAt"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_0
    move-wide v7, v2

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$appContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getCreatedTime()J

    move-result-wide v5

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getModifiedTime()J

    move-result-wide v9

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getSpaceId()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getItemId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v3, v4, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$groupId:Ljava/lang/String;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getLeaderId()Ljava/lang/String;

    move-result-object v17

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    move-object/from16 v18, v3

    iget-object v3, v4, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$originFilePath:Ljava/lang/String;

    move-object/from16 v19, v3

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->val$tempFilePath:Ljava/lang/String;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getResourceId()Ljava/lang/String;

    move-result-object v20
    :try_end_0
    .catch Ly1/b; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v3

    const/4 v3, 0x1

    move-object/from16 v4, p1

    move-object/from16 v21, v12

    move-object v12, v0

    move-object/from16 v22, v13

    move-object/from16 v13, v16

    move-object/from16 v23, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    :try_start_1
    invoke-static/range {v2 .. v18}, Lv/g;->r(Landroid/content/Context;ZLjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;)Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;
    :try_end_1
    .catch Ly1/b; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v2, p1

    :try_start_2
    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->setWorkspaceId(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getModifiedTime()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->updateTitleAndModifiedTime(Ljava/lang/String;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "externalSnapStart, succeed to save : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->val$item:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ly1/b; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v3, v22

    :try_start_3
    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v3, v22

    const-string v0, "externalSnapStart, fail to save!"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ly1/b; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->val$tempFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->deleteTempFile(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->j()V

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v0

    move-object/from16 v4, v23

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v2, p1

    :goto_1
    move-object/from16 v4, v23

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    :goto_2
    move-object/from16 v2, p1

    :goto_3
    move-object/from16 v3, v22

    :goto_4
    move-object/from16 v4, v23

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v21, v12

    move-object v4, v14

    move-object v2, v15

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    :goto_5
    move-object/from16 v21, v12

    move-object v3, v13

    move-object v4, v14

    move-object v2, v15

    :goto_6
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "externalSnapStart, onFinished, , e : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->val$tempFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->deleteTempFile(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->j()V

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v0

    :goto_7
    invoke-interface {v0, v2, v4}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->removeFromRunningNoteUuids(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception v0

    :goto_8
    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->val$tempFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/CoeditConnectionUtils;->deleteTempFile(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/app/notes/sync/db/SyncSaveDocumentManager;->j()V

    iget-object v3, v1, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2$1;->this$1:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;

    iget-object v3, v3, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;->a(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/WaitForSyncHandler;)Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;

    move-result-object v3

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/UpDownloaderContract;->removeFromRunningNoteUuids(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
