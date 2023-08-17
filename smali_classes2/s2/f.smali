.class public Ls2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lt2/b;


# direct methods
.method public constructor <init>(Lt2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/f;->a:Lt2/b;

    return-void
.end method

.method public static bridge synthetic a(Ls2/f;)Lt2/b;
    .locals 0

    iget-object p0, p0, Ls2/f;->a:Lt2/b;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v0

    iget-object v1, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lb0/a;->getUUIDListByCategory(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SyncOldNote$SyncMergedCategory"

    const-string/jumbo p2, "uuidList is null!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->h()Lb0/a;

    move-result-object v2

    iget-object v3, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {v3}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, v1, p2}, Lb0/a;->setNoteCategory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->v()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_3

    iget-object v0, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->v()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld1/h;

    invoke-virtual {v2}, Ld1/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p2}, Ld1/h;->s(Ljava/lang/String;)V

    iget-object v2, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {v2}, Lt2/b;->G()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {v2, v1}, Lt2/b;->T(Z)V

    goto :goto_1

    :cond_3
    return v1
.end method

.method public final c(Ljava/lang/String;Ljava/util/List;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p2

    invoke-virtual {p2}, Lx/e;->h()Lb0/a;

    move-result-object v0

    iget-object p2, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {p2}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p2

    invoke-virtual {p2}, Lx/e;->m()Lb0/b;

    move-result-object p2

    invoke-interface {p2}, Lb0/b;->getSdocContractYes()I

    move-result v5

    const/4 v6, 0x0

    move-object v2, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v6}, Lb0/a;->deleteCategory(Landroid/content/Context;Ljava/lang/String;JIZ)V

    return-void
.end method

.method public final d(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {v0}, Lt2/b;->p()La2/d$e;

    move-result-object v0

    new-instance v1, Ls2/f$a;

    invoke-direct {v1, p0, p3}, Ls2/f$a;-><init>(Ls2/f;Ljava/lang/String;)V

    invoke-static {v0, p3, p2, v1}, La2/d;->a(La2/d$e;Ljava/lang/String;Ljava/lang/String;La2/d$f;)I
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to deleteFile - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SyncOldNote$SyncMergedCategory"

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method public final e(Ljava/util/List;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)Z"
        }
    .end annotation

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v0

    iget-object v1, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lb0/a;->getCategoryUUIDListByDeleted(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    const-string v1, "SyncOldNote$SyncMergedCategory"

    if-nez v0, :cond_0

    const-string p1, "Failed to getCategoryUUIDListByDeleted"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->h()Lb0/a;

    move-result-object v3

    iget-object v4, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lb0/a;->getCategoryName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lc3/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "2"

    goto :goto_1

    :cond_2
    iget-object v4, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {v4}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lc3/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "1"

    :goto_1
    invoke-virtual {p0, v2, v3}, Ls2/f;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2, p1, p2, p3}, Ls2/f;->c(Ljava/lang/String;Ljava/util/List;J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleted2 - name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , uuid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final f(Ljava/util/List;J)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)Z"
        }
    .end annotation

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v0

    iget-object v1, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lb0/a;->getCategoryUUIDListByDeleted(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    const-string v1, "SyncOldNote$SyncMergedCategory"

    if-nez v0, :cond_0

    const-string p1, "Failed to getCategoryUUIDListByDeleted"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clist size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move v6, v4

    :goto_0
    if-ge v6, v3, :cond_4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v8

    invoke-virtual {v8}, Lx/e;->h()Lb0/a;

    move-result-object v8

    iget-object v9, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {v9}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Lb0/a;->getCategoryName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Ls2/f;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    if-le v9, v10, :cond_1

    goto :goto_1

    :cond_1
    move-object v11, v7

    move-object v7, v5

    move-object v5, v11

    :goto_1
    invoke-virtual {p0, v5, v7}, Ls2/f;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, v5, p1, p2, p3}, Ls2/f;->c(Ljava/lang/String;Ljava/util/List;J)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleted - name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " , uuid:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    return v4
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->h()Lb0/a;

    move-result-object v0

    iget-object v1, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lb0/a;->getCategoryName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h()Z
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ls2/f;->a:Lt2/b;

    invoke-virtual {v1}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Ls2/f;->f(Ljava/util/List;J)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    const-string v3, "SyncOldNote$SyncMergedCategory"

    const-string v5, "handle the predefines"

    invoke-static {v3, v5}, Lc3/p;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Ls2/f;->e(Ljava/util/List;J)Z

    move-result v5

    if-nez v5, :cond_1

    return v4

    :cond_1
    const-string v4, "delete category in server"

    invoke-static {v3, v4}, Lc3/p;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Ls2/f;->d(Ljava/util/List;J)V

    const/4 v0, 0x1

    return v0
.end method
