.class public Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->downloadContentForData(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ld1/f;

.field public final synthetic d:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;Ljava/lang/String;Ljava/lang/String;Ld1/f;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;->d:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;->c:Ld1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;->d:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, La2/b;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;->d:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->a(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lo/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, La2/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "MemoScloudSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadContentForData : download a content.sync ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, La2/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ls0/c;->a()I

    move-result v3

    const/16 v4, 0x12f

    if-eq v3, v4, :cond_4

    const/16 v4, 0x13b

    if-eq v3, v4, :cond_3

    const/16 v0, 0x141

    if-eq v3, v0, :cond_4

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/utils/a;->l(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "MEMO"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "strippedContent"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ld1/d;

    const/16 v5, 0xa

    const-string v6, ""

    const-string v4, "lastModifiedAt"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;->c:Ld1/f;

    iget-object v10, v4, Ld1/f;->a:Ljava/lang/String;

    move-object v4, v12

    move-object v7, v3

    invoke-direct/range {v4 .. v10}, Ld1/d;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    const-string v4, "MemoScloudSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is strippedContent empty "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " title empty "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v11, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ld1/d;->j0(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ld1/d;->P(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;->d:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->access$300(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;->d:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;->access$400(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    :cond_2
    const-string v0, "MemoScloudSync"

    const-string v1, "downloadContentForData : memoJSON == null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Server Error!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "MemoScloudSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadContentForData : Fail to add ImportItem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "rcode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x3a

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/16 v4, 0x2c

    add-int/2addr v3, v1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    const-string v0, "MemoScloudSync"

    const-string v1, "downloadContentForData : can\'t parse the error!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/16 v0, 0x7d06

    if-ne v2, v0, :cond_4

    const-string v0, "MemoScloudSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadContentForData : no content.sync in server ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v0, "MemoScloudSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadContentForData: fail to Download a content.sync ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoScloudSync$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Server Error!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_4
    return-void
.end method
