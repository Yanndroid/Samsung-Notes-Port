.class public Ls2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld1/b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld1/b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld1/b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ld1/b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lt2/b;

.field public i:Lp2/a;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lt2/b;Lp2/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls2/a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls2/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls2/a;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls2/a;->d:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls2/a;->g:Ljava/util/HashMap;

    iput-object p1, p0, Ls2/a;->h:Lt2/b;

    iput-object p2, p0, Ls2/a;->i:Lp2/a;

    invoke-virtual {p1}, Lt2/b;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ls2/a;->j:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Ls2/a;)Lt2/b;
    .locals 0

    iget-object p0, p0, Ls2/a;->h:Lt2/b;

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ld1/b;",
            ">;"
        }
    .end annotation

    const-string v0, "SyncOldNote$SyncCategory"

    const-string v1, "Start to get local category"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->q()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->h()Lb0/a;

    move-result-object v2

    iget-object v3, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    invoke-interface {v4}, Lb0/b;->getSdocContractYes()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lb0/a;->getCategoryUUIDListByDirty(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->q()Ljava/util/List;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    const-string v2, "Failed to GetLocalCategoryArray"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".category"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Lcom/samsung/android/app/notes/sync/db/b;

    iget-object v4, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/notes/sync/db/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/db/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/db/b;->a()I

    move-result v11

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/db/b;->d()J

    move-result-wide v9

    invoke-virtual {v3}, Lcom/samsung/android/app/notes/sync/db/b;->b()I

    move-result v3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->m()Lb0/b;

    move-result-object v4

    invoke-interface {v4}, Lb0/b;->getSdocContractNo()I

    move-result v4

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    move v8, v3

    new-instance v3, Ld1/b;

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Ld1/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish to get local category "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ld1/b;",
            ">;"
        }
    .end annotation

    const-string v0, "filepath"

    const-string v1, "SyncOldNote$SyncCategory"

    const-string v2, "GetServerCategoryArray start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v3, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->y()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "snote_list"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    iget-object v6, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v6, v5}, Lt2/b;->Q(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ".category"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "1.category"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "UUID_UNCATEGORIZED.category"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ld1/b;

    invoke-direct {v8, v7}, Ld1/b;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v7, "GetServerCategoryArray : no filepath!"

    invoke-static {v1, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetServerCategoryArray finish : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetServerCategoryArray - downloadList - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls0/c;

    const/16 v2, 0x130

    invoke-direct {v1, v2, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final d()Z
    .locals 11

    const-string v0, "SyncOldNote$SyncCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to delete Local : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls2/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ls2/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/b;

    invoke-virtual {v1}, Ld1/b;->e()Ljava/lang/String;

    move-result-object v9

    const-string v2, "SyncOldNote$SyncCategory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Category : deleteSDoc - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->h()Lb0/a;

    move-result-object v2

    invoke-interface {v2}, Lb0/a;->synchronizeCategory()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    new-instance v2, Lcom/samsung/android/app/notes/sync/db/b;

    iget-object v3, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v9}, Lcom/samsung/android/app/notes/sync/db/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/db/b;->d()J

    move-result-wide v3

    invoke-virtual {v1}, Ld1/b;->c()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/db/b;->b()I

    move-result v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractNo()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->h()Lb0/a;

    move-result-object v2

    iget-object v3, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Ld1/b;->c()J

    move-result-wide v5

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->m()Lb0/b;

    move-result-object v1

    invoke-interface {v1}, Lb0/b;->getSdocContractNo()I

    move-result v7

    const/4 v8, 0x1

    move-object v4, v9

    invoke-interface/range {v2 .. v8}, Lb0/a;->deleteCategory(Landroid/content/Context;Ljava/lang/String;JIZ)V

    :cond_0
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->h()Lb0/a;

    move-result-object v1

    iget-object v2, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Lb0/a;->deleteCategorySync(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const-string v0, "SyncOldNote$SyncCategory"

    const-string v1, "Finished to delete Local"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start to delete Server : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls2/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncOldNote$SyncCategory"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ls2/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/b;

    iget-object v3, p0, Ls2/a;->i:Lp2/a;

    invoke-interface {v3}, Lp2/a;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "Cancelled Category"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v2}, Ld1/b;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete Server Files - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->p()La2/d$e;

    move-result-object v4

    invoke-virtual {v2}, Ld1/b;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ls2/a$a;

    invoke-direct {v5, p0, v3}, Ls2/a$a;-><init>(Ls2/a;Ljava/lang/String;)V

    invoke-static {v4, v3, v2, v5}, La2/d;->a(La2/d$e;Ljava/lang/String;Ljava/lang/String;La2/d$f;)I
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Category : Failed to deleteFile - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "Finished to delete server"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 11

    const-string v0, "SyncOldNote$SyncCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to download : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls2/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ls2/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/b;

    invoke-virtual {v1}, Ld1/b;->e()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Ls2/a;->i:Lp2/a;

    invoke-interface {v2}, Lp2/a;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "SyncOldNote$SyncCategory"

    const-string v1, "Cancelled Category"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->h()Lb0/a;

    move-result-object v2

    iget-object v3, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Lb0/a;->getCategoryServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1}, Ld1/b;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "SyncOldNote$SyncCategory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download Files - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Ls2/a;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->p()La2/d$e;

    move-result-object v3

    iget-object v4, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4, v8, v2}, La2/d;->c(La2/d$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ld1/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->h()Lb0/a;

    move-result-object v3

    invoke-interface {v3}, Lb0/a;->synchronizeCategory()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->h()Lb0/a;

    move-result-object v3

    iget-object v4, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4, v8}, Lb0/a;->getCategoryServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1}, Ld1/b;->c()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SyncOldNote$SyncCategory"

    const-string v2, "failed to delete category completeFile"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    monitor-exit v10

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Ls2/a;->g(Ljava/lang/String;)Ld1/b;

    move-result-object v1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->h()Lb0/a;

    move-result-object v2

    iget-object v3, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Lb0/a;->isExistCategory(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->h()Lb0/a;

    move-result-object v2

    iget-object v3, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Ld1/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ld1/b;->a()I

    move-result v5

    invoke-interface {v2, v3, v8, v4, v5}, Lb0/a;->updateCategoryNameAndColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->h()Lb0/a;

    move-result-object v2

    iget-object v3, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Ld1/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ld1/b;->a()I

    move-result v6

    const/4 v7, 0x1

    move-object v4, v8

    invoke-interface/range {v2 .. v7}, Lb0/a;->addCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    :goto_1
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->h()Lb0/a;

    move-result-object v2

    invoke-interface {v2, v8}, Lb0/a;->getCategoryDeleted(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->m()Lb0/b;

    move-result-object v3

    invoke-interface {v3}, Lb0/b;->getSdocContractYes()I

    move-result v3

    if-ne v2, v3, :cond_6

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->h()Lb0/a;

    move-result-object v2

    iget-object v3, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Ld1/b;->c()J

    move-result-wide v5

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->m()Lb0/b;

    move-result-object v1

    invoke-interface {v1}, Lb0/b;->getSdocContractNo()I

    move-result v7

    move-object v4, v8

    invoke-interface/range {v2 .. v7}, Lb0/a;->recoveryCategory(Landroid/content/Context;Ljava/lang/String;JI)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->h()Lb0/a;

    move-result-object v2

    iget-object v3, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Ld1/b;->c()J

    move-result-wide v5

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->m()Lb0/b;

    move-result-object v1

    invoke-interface {v1}, Lb0/b;->getSdocContractNo()I

    move-result v7

    move-object v4, v8

    invoke-interface/range {v2 .. v7}, Lb0/a;->setTimestampAndDirty(Landroid/content/Context;Ljava/lang/String;JI)V

    :goto_2
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SyncOldNote$SyncCategory"

    const-string v2, "failed to delete completeFile"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ls0/c; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_7
    :try_start_3
    new-instance v0, Ls0/c;

    const/16 v1, 0x143

    const-string v2, "disk space is full. can not add category."

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_8
    new-instance v0, Ls0/c;

    const/16 v1, 0x133

    const-string v2, "There is no the completeFile."

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ls0/c; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "SyncOldNote$SyncCategory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to downloadFile -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v0, "SyncOldNote$SyncCategory"

    const-string v1, "Finished to download"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public g(Ljava/lang/String;)Ld1/b;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "color"

    const-string v9, "InputStream close - Exception = "

    const-string v10, "Failed to getCategoryJSON() - "

    const-string v11, "SyncOldNote$SyncCategory"

    const/16 v12, 0x130

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v13, p0

    :try_start_1
    iget-object v4, v13, Ls2/a;->j:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/app/notes/sync/utils/a;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v5

    invoke-virtual {v5}, Lx/e;->s()Lg0/b;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v4, v3, v6, v6}, Lg0/b;->unzip(Ljava/io/File;Ljava/io/File;ZZ)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v15}, Lcom/samsung/android/app/notes/sync/utils/a;->m(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "category_uuid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "categoryColor = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move v8, v1

    goto :goto_0

    :cond_0
    move v8, v5

    :goto_0
    const-string/jumbo v1, "timestamp"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v1, "deleted"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    new-instance v16, Ld1/b;

    move-object/from16 v1, v16

    move-object v2, v3

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v8}, Ld1/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJI)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "failed to delete unzipedFilePath"

    invoke-static {v11, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v16

    :cond_2
    :try_start_4
    const-string v0, "Failed to NoteServiceHelper.readIt"

    invoke-static {v11, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls0/c;

    invoke-direct {v1, v12, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v15

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v2, v15

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v15

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v15

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v13, p0

    :goto_2
    move-object v1, v0

    goto :goto_6

    :catch_7
    move-exception v0

    move-object/from16 v13, p0

    :goto_3
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls0/c;

    invoke-direct {v1, v12, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_8
    move-exception v0

    move-object/from16 v13, p0

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls0/c;

    const/16 v3, 0x138

    invoke-direct {v1, v3, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_9
    move-exception v0

    move-object/from16 v13, p0

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls0/c;

    const/16 v3, 0x13f

    invoke-direct {v1, v3, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_6
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_7

    :catch_a
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_7
    throw v1
.end method

.method public h(Ld1/b;Ljava/lang/String;)V
    .locals 7

    const-string v0, "Failed to makeCategoryJSON() - "

    const-string v1, "SyncOldNote$SyncCategory"

    const/16 v2, 0x138

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "category_uuid"

    invoke-virtual {p1}, Ld1/b;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "name"

    invoke-virtual {p1}, Ld1/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "color"

    invoke-virtual {p1}, Ld1/b;->a()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "timestamp"

    invoke-virtual {p1}, Ld1/b;->c()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "deleted"

    invoke-virtual {p1}, Ld1/b;->f()Z

    move-result p1

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".json"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "failed to delete makeCategoryJSON"

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->s()Lg0/b;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lg0/b;->zip(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v5, v6

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw p1

    :cond_2
    const-string p1, "Failed to create makeCategoryJSON"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ls0/c;

    invoke-direct {p2, v2, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ls0/c;

    invoke-direct {p2, v2, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ls0/c;

    const/16 v0, 0x130

    invoke-direct {p2, v0, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method public final i()Z
    .locals 8

    const-string v0, "SyncOldNote$SyncCategory"

    const-string v1, "Start to compare"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ls2/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/b;

    iget-object v3, p0, Ls2/a;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ld1/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld1/b;

    if-eqz v3, :cond_5

    iget-object v4, p0, Ls2/a;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Ld1/b;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ld1/b;->c()J

    move-result-wide v4

    invoke-virtual {v3}, Ld1/b;->c()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Ld1/b;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ls2/a;->c:Ljava/util/List;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Ls2/a;->b:Ljava/util/List;

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-gez v4, :cond_4

    invoke-virtual {v2}, Ld1/b;->f()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ld1/b;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ls2/a;->c:Ljava/util/List;

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v3, p0, Ls2/a;->d:Ljava/util/List;

    goto :goto_3

    :cond_3
    iget-object v3, p0, Ls2/a;->a:Ljava/util/List;

    :goto_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->h()Lb0/a;

    move-result-object v3

    iget-object v4, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Ld1/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v5

    invoke-virtual {v5}, Lx/e;->m()Lb0/b;

    move-result-object v5

    invoke-interface {v5}, Lb0/b;->getSdocContractNo()I

    move-result v5

    invoke-interface {v3, v4, v2, v5}, Lb0/a;->setCategoryDirty(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ld1/b;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toUploadList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls2/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,toDownloadList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls2/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toDeleteLocalList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ls2/a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,toDeleteServerList : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ls2/a;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Start to compare more"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ls2/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld1/b;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->h()Lb0/a;

    move-result-object v4

    iget-object v5, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v5}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Ld1/b;->e()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lb0/a;->getCategoryServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3}, Ld1/b;->c()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ld1/b;->f()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v4

    invoke-virtual {v4}, Lx/e;->h()Lb0/a;

    move-result-object v4

    iget-object v5, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v5}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Ld1/b;->e()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lb0/a;->isExistCategory(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Ls2/a;->c:Ljava/util/List;

    goto :goto_5

    :cond_8
    iget-object v4, p0, Ls2/a;->b:Ljava/util/List;

    :goto_5
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls2/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,toDownloadList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ls2/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public j()Z
    .locals 7

    iget-object v0, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v0}, Lx2/d;->d()J

    move-result-wide v0

    iget-object v2, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->A()J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nextSyncTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SyncOldNote$SyncCategory"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ls2/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ls2/a;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ls2/a;->c()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Ls2/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld1/b;

    iget-object v5, p0, Ls2/a;->g:Ljava/util/HashMap;

    invoke-virtual {v4}, Ld1/b;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ls2/a;->i:Lp2/a;

    invoke-interface {v2}, Lp2/a;->isCancelled()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string v0, "Cancelled Category"

    :goto_1
    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    invoke-virtual {p0}, Ls2/a;->i()Z

    move-result v2

    if-nez v2, :cond_2

    return v4

    :cond_2
    iget-object v2, p0, Ls2/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v5, p0, Ls2/a;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, p0, Ls2/a;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, p0, Ls2/a;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v2, v5

    if-lez v2, :cond_6

    iget-object v2, p0, Ls2/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ls2/a;->d()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Ls2/a;->i:Lp2/a;

    invoke-interface {v2}, Lp2/a;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "Cancelled before deleting category in a server!"

    goto :goto_1

    :cond_3
    iget-object v2, p0, Ls2/a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Ls2/a;->e()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Ls2/a;->i:Lp2/a;

    invoke-interface {v2}, Lp2/a;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "Cancelled before uploading category!"

    goto :goto_1

    :cond_4
    iget-object v2, p0, Ls2/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Ls2/a;->k()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Ls2/a;->i:Lp2/a;

    invoke-interface {v2}, Lp2/a;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "Cancelled before downloading category!"

    goto :goto_1

    :cond_5
    iget-object v2, p0, Ls2/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0}, Ls2/a;->f()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Ls2/a;->i:Lp2/a;

    invoke-interface {v2}, Lp2/a;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "Cancelled before finishing downloading category!"

    goto/16 :goto_1

    :cond_6
    const-string v2, "There is no category to sync"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->D()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->E()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v0, v1}, Lt2/a;->r(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update last syncTimeForCategory : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public final k()Z
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start to upload : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls2/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncOldNote$SyncCategory"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ls2/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/b;

    invoke-virtual {v2}, Ld1/b;->e()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upload Files - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Ls2/a;->i:Lp2/a;

    invoke-interface {v3}, Lp2/a;->isCancelled()Z

    move-result v3

    const/4 v10, 0x0

    if-eqz v3, :cond_0

    const-string v0, "Cancelled to upload category!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ld1/b;->h()Lorg/json/JSONObject;

    move-result-object v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ls2/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ld1/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Ls2/a;->h(Ld1/b;Ljava/lang/String;)V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->h()Lb0/a;

    move-result-object v3

    iget-object v4, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Lb0/a;->getCategoryServerTimestamp(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ld1/b;->g(J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uploadFile - uuid:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ld1/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->p()La2/d$e;

    move-result-object v3

    iget-object v4, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Ld1/b;->c()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ls2/a$b;

    invoke-direct {v9, p0, v6, v2, v5}, Ls2/a$b;-><init>(Ls2/a;Ljava/lang/String;Ld1/b;Ljava/lang/String;)V

    invoke-static/range {v3 .. v9}, La2/d;->m(La2/d$e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;La2/d$f;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to uploadFile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ls0/c;->a()I

    move-result v3

    const/16 v4, 0x138

    if-ne v3, v4, :cond_1

    iget-object v2, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v2, v10}, Lt2/b;->L(Z)V

    iget-object v2, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v2, v10}, Lx2/d;->o(Z)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v2}, Ls0/c;->a()I

    move-result v3

    const/16 v4, 0x1f5

    if-ne v3, v4, :cond_2

    iget-object v2, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v2, v10}, Lt2/b;->L(Z)V

    iget-object v2, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v2, v10}, Lx2/d;->o(Z)V

    const-string v2, "Recover the previous history for category"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "1464416139847"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lt2/a;->r(J)V

    iget-object v2, p0, Ls2/a;->h:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_2
    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to uploadFile -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls0/c;

    const/16 v2, 0x130

    invoke-direct {v1, v2, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "Finished upload"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
