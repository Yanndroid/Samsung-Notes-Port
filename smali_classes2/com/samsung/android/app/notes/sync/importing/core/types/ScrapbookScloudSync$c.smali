.class public Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->startImport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld1/d;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[Ls0/c;

.field public final synthetic d:[Ljava/lang/Boolean;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;Ld1/d;Ljava/lang/String;[Ls0/c;[Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->a:Ld1/d;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->c:[Ls0/c;

    iput-object p5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->d:[Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->access$300(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->access$400(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->access$500(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SCRAPBOOK_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->a:Ld1/d;

    invoke-interface {v2, v3, v4, v1}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onDownloaded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ld1/d;I)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->a:Ld1/d;

    invoke-virtual {v0}, Ld1/d;->i()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    new-instance v0, La2/b;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;

    invoke-static {v3}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->a(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lo/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, La2/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->a:Ld1/d;

    invoke-virtual {v3}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->a:Ld1/d;

    invoke-virtual {v3}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->a:Ld1/d;

    invoke-virtual {v5}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "ScrapbookScloudSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startImport : cropImageFile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    const-string v4, "ScrapbookScloudSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startImport : download a crop image file ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->a:Ld1/d;

    invoke-virtual {v4}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, La2/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ls0/c; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "ScrapbookScloudSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startImport : SyncException 1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ls0/c;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->c:[Ls0/c;

    monitor-enter v4

    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->d:[Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v1

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->c:[Ls0/c;

    aput-object v3, v5, v1

    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->a:Ld1/d;

    invoke-virtual {v3}, Ld1/d;->j()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_6

    :try_start_3
    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->a:Ld1/d;

    invoke-virtual {v3}, Ld1/d;->j()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "metaObjs"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const-string v5, "ScrapbookScloudSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startImport : size of metaObjs =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_6

    :try_start_4
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "server_file_path"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "server_file_path"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :cond_3
    move-object v6, v2

    :goto_3
    if-eqz v6, :cond_5

    :try_start_5
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    const-string v8, "ScrapbookScloudSync"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startImport : download a meta object file ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, La2/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ls0/c; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_1
    move-exception v6

    :try_start_7
    const-string v7, "ScrapbookScloudSync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startImport : SyncException 2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ls0/c;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->c:[Ls0/c;

    monitor-enter v7
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    iget-object v8, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->d:[Ljava/lang/Boolean;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v9, v8, v1

    iget-object v8, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->c:[Ls0/c;

    aput-object v6, v8, v1

    monitor-exit v7

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_2
    move-exception v6

    :try_start_a
    const-string v7, "ScrapbookScloudSync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startImport : JSONException - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v3, "ScrapbookScloudSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startImport : JSONException - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->access$600(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->access$700(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    move-result-object v0

    monitor-enter v0

    :try_start_b
    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;

    invoke-static {v4}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->access$800(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SCRAPBOOK_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->a:Ld1/d;

    invoke-interface {v4, v5, v6, v3}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onDownloaded(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Ld1/d;I)V

    monitor-exit v0

    goto :goto_5

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v1

    :cond_7
    :goto_5
    const-string v0, "1"

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->e:Ljava/lang/Object;

    monitor-enter v4

    :try_start_c
    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->a:Ld1/d;

    invoke-virtual {v5}, Ld1/d;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->access$900(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v1}, Lcom/samsung/android/app/notes/sync/db/n;->b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->h()Lb0/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lb0/a;->getCategoryDeleted(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->access$1000(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/samsung/android/app/notes/sync/db/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    const-string v1, "ScrapbookScloudSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "localCategoryUuid = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    const-string v1, "ScrapbookScloudSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertToSDoc : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->a:Ld1/d;

    invoke-virtual {v5}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lz/g;

    invoke-direct {v1}, Lz/g;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->a:Ld1/d;

    invoke-virtual {v3}, Ld1/d;->j()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v5, v0}, Lz/g;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ScrapbookScloudSync"

    const-string v1, "succeed to convert!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->f:Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;->access$1100(Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->a:Ld1/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_6

    :catch_4
    :try_start_e
    const-string v0, "ScrapbookScloudSync"

    const-string v1, "startImport : Failed to convert!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->m()Lb0/b;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/ScrapbookScloudSync$c;->a:Ld1/d;

    invoke-virtual {v1}, Ld1/d;->A()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lb0/b;->setNoteSyncName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    :try_start_f
    const-string v1, "ScrapbookScloudSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startImport : Exception 3 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    monitor-exit v4

    return-void

    :goto_8
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v0
.end method
