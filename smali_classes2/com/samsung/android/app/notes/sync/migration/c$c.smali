.class public Lcom/samsung/android/app/notes/sync/migration/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/migration/restore/RestoreTask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/migration/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/migration/c;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v0, p5

    move/from16 v1, p6

    move-object/from16 v10, p8

    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/c$d;->a()Lcom/samsung/android/app/notes/sync/migration/c;

    move-result-object v11

    monitor-enter v11

    :try_start_0
    iget-object v2, v9, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/app/notes/sync/migration/c;->d(Lcom/samsung/android/app/notes/sync/migration/c;Ljava/lang/Class;)V

    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRestoreFinished mask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", fromSmartSwitch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_0

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, "null list"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v0, v9, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/c;->T()V

    monitor-exit v11

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v10, :cond_7

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v13

    move v5, v4

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld1/d;

    invoke-virtual {v6}, Ld1/d;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ld1/d;->D()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtensionUtils;->isSdoc(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v4, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore sdoc : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;

    invoke-direct {v4, v6, v3}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v12

    goto :goto_1

    :cond_3
    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentExtensionUtils;->isSdocx(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v5, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore sdocx : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;

    invoke-direct {v5, v6, v3}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/data/ImportDocument;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v12

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    if-eqz v5, :cond_7

    :cond_5
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2, v12}, Lc3/n;->T(Z)V

    if-eqz v4, :cond_6

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, "categoryOder.list"

    invoke-static {v2, v3}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "categoryOrderDbJsonPath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    :cond_6
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v2

    invoke-virtual {v2}, Lc3/n;->m()Ljava/lang/String;

    move-result-object v2

    const-string v4, "category.list"

    invoke-static {v2, v4}, Lcom/samsung/android/app/notes/sync/utils/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto :goto_2

    :cond_7
    move-object v2, v3

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v10, :cond_8

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    const-string v2, "onRestoreFinished empty import list"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x40

    if-ne v0, v1, :cond_9

    iget-object v0, v9, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/migration/c;->g(Lcom/samsung/android/app/notes/sync/migration/c;)V

    :cond_9
    iget-object v0, v9, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    const/16 v1, 0x64

    move-object/from16 v6, p1

    invoke-static {v0, v6, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->l(Lcom/samsung/android/app/notes/sync/migration/c;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;I)V

    iget-object v2, v9, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/notes/sync/migration/c;->m(Lcom/samsung/android/app/notes/sync/migration/c;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v0, v9, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/c;->T()V

    goto :goto_5

    :cond_a
    :goto_3
    move-object/from16 v6, p1

    new-instance v0, Lt1/a;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v7

    invoke-virtual {v7}, Lx/e;->a()Lx/a;

    move-result-object v7

    invoke-interface {v7}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "CALLER_MIGRATION"

    invoke-direct {v0, v7, v1, v8}, Lt1/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lt1/a;->n(Ljava/lang/String;)Lt1/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lt1/a;->o(Ljava/lang/String;)Lt1/a;

    move-result-object v0

    invoke-virtual {v0, v10}, Lt1/a;->M(Ljava/util/List;)Lt1/a;

    move-result-object v0

    new-instance v14, Lcom/samsung/android/app/notes/sync/migration/c$c$a;

    move-object v1, v14

    move-object/from16 v2, p0

    move v3, v4

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/notes/sync/migration/c$c$a;-><init>(Lcom/samsung/android/app/notes/sync/migration/c$c;ILcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lt1/a;->N(Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;)Lt1/a;

    move-result-object v0

    invoke-virtual {v0, v12}, Lt1/a;->t(Z)V

    iget-object v0, v9, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/migration/c;->b(Lcom/samsung/android/app/notes/sync/migration/c;)I

    move-result v1

    if-nez v10, :cond_b

    goto :goto_4

    :cond_b
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v13

    :goto_4
    add-int/2addr v1, v13

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->f(Lcom/samsung/android/app/notes/sync/migration/c;I)V

    iget-object v0, v9, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/migration/c;->b(Lcom/samsung/android/app/notes/sync/migration/c;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->k(Lcom/samsung/android/app/notes/sync/migration/c;I)V

    :goto_5
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRestoreStarted mask "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    const/4 p2, 0x1

    invoke-static {p1, p3, p2}, Lcom/samsung/android/app/notes/sync/migration/c;->n(Lcom/samsung/android/app/notes/sync/migration/c;IZ)V

    invoke-static {}, Lx1/e;->d()I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {p1}, Lx1/e;->h(I)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 8

    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/c$d;->a()Lcom/samsung/android/app/notes/sync/migration/c;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInstantSnapShotFinished mask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fromSmartSwitch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v1, p6}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/c;->T()V

    monitor-exit v0

    return-void

    :cond_0
    const/16 p6, 0x800

    if-ne p4, p6, :cond_1

    iget-object p4, p0, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-static {p4}, Lcom/samsung/android/app/notes/sync/migration/c;->g(Lcom/samsung/android/app/notes/sync/migration/c;)V

    :cond_1
    iget-object p4, p0, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    sget-object v2, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;->INSTANT:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    const/16 p6, 0x64

    invoke-static {p4, v2, p6}, Lcom/samsung/android/app/notes/sync/migration/c;->l(Lcom/samsung/android/app/notes/sync/migration/c;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/notes/sync/migration/c;->m(Lcom/samsung/android/app/notes/sync/migration/c;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lc3/n;->T(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/migration/c;->T()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    sget-object p1, Lcom/samsung/android/app/notes/sync/migration/c;->j:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInstantSnapshotStarted mask "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    const/4 p2, 0x1

    invoke-static {p1, p3, p2}, Lcom/samsung/android/app/notes/sync/migration/c;->n(Lcom/samsung/android/app/notes/sync/migration/c;IZ)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c$c;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    sget-object p2, Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;->INSTANT:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    const/4 p3, 0x2

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/notes/sync/migration/c;->l(Lcom/samsung/android/app/notes/sync/migration/c;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;I)V

    return-void
.end method
