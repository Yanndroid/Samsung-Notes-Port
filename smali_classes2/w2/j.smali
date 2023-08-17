.class public Lw2/j;
.super Lw2/g;
.source "SourceFile"


# instance fields
.field public g:J

.field public h:J

.field public i:J

.field public j:J


# direct methods
.method public constructor <init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;Lx2/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lw2/g;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;Lx2/a;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lw2/j;->g:J

    iput-wide p1, p0, Lw2/j;->h:J

    iput-wide p1, p0, Lw2/j;->i:J

    iput-wide p1, p0, Lw2/j;->j:J

    return-void
.end method


# virtual methods
.method public final h(ZLa3/a;Lcom/samsung/android/app/notes/sync/db/s;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2, p3}, La3/a;->h(Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    iget-wide p1, p0, Lw2/j;->g:J

    iget-wide v1, p0, Lw2/j;->h:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_3

    invoke-virtual {p3}, Lcom/samsung/android/app/notes/sync/db/s;->p()I

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/app/notes/sync/db/s;->o()I

    move-result p1

    if-ne p1, v0, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/s;Z)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "perform() : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " of "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", isRecovery = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "SyncNote/SyncSDocxUpdateLocalNote"

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v0

    const-string v7, "SyncSDocxUpdateLocalNote"

    invoke-virtual {v0, v7}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget-object v7, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget-object v7, v1, Lw2/a;->a:Lx2/e;

    invoke-virtual {v7}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0, v7}, Lc3/p$c;->m(Landroid/content/Context;)V

    new-instance v7, La3/a;

    iget-object v0, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-direct {v7, v0}, La3/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v7, v3}, Lw2/j;->h(ZLa3/a;Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/app/notes/sync/db/s;->d()I

    move-result v0

    const/4 v8, 0x2

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/app/notes/sync/db/s;->x()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conflict a max object note!"

    :goto_0
    invoke-virtual {v7, v2, v0}, La3/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v7, v3}, La3/a;->g(Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7, v3}, La3/a;->a(Lcom/samsung/android/app/notes/sync/db/s;)V

    const-wide/16 v8, 0x1f4

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, "a max object note was not uploaded and conflicted again!"

    goto :goto_0

    :cond_1
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/app/notes/sync/db/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v7, v3, v2}, La3/a;->c(Lcom/samsung/android/app/notes/sync/db/s;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is conflicted and not downloaded!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Le1/c;

    iget-object v8, v1, Lw2/a;->a:Lx2/e;

    invoke-virtual {v8}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-direct {v0, v8, v9}, Le1/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v15, Lw2/j$a;

    invoke-direct {v15, v1}, Lw2/j$a;-><init>(Lw2/j;)V

    const/4 v8, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/app/notes/sync/db/s;->o()I

    move-result v9

    const/4 v14, 0x1

    if-ne v9, v14, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is deleted"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v13, v8

    goto :goto_4

    :cond_3
    iget-object v8, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lw2/j;->j(Ljava/lang/String;)Lj0/a;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lj0/a;->h()Lj0/a;

    move-result-object v9

    invoke-virtual {v0, v9}, Le1/c;->f(Lj0/a;)V

    goto :goto_3

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wDocData of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is null!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lw2/h;->b()V

    new-instance v16, Lu2/b;

    iget-object v8, v1, Lw2/a;->a:Lx2/e;

    invoke-virtual {v8}, Lx2/e;->p()La2/g$a;

    move-result-object v9

    iget-object v8, v1, Lw2/a;->a:Lx2/e;

    invoke-virtual {v8}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v10

    const/16 v17, 0x0

    move-object/from16 v8, v16

    move-object/from16 v11, p1

    move-object v12, v13

    move-object/from16 v18, v13

    move-object v13, v0

    move v2, v14

    move-object/from16 v14, v17

    invoke-direct/range {v8 .. v15}, Lu2/b;-><init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;Lj0/a;Le1/c;La2/g$b;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V

    invoke-virtual/range {v16 .. v16}, Lu2/b;->d()V

    invoke-virtual {v0}, Le1/c;->c()Lj0/a;

    move-result-object v8

    invoke-virtual {v8}, Lj0/a;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Le1/c;->c()Lj0/a;

    move-result-object v9

    invoke-virtual {v9}, Lj0/a;->i()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "After compareForDownSync : serverCommitId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v9

    iput-wide v9, v1, Lw2/j;->g:J

    invoke-virtual {v0}, Le1/c;->c()Lj0/a;

    move-result-object v5

    invoke-virtual {v5}, Lj0/a;->m()J

    move-result-wide v9

    iput-wide v9, v1, Lw2/j;->h:J

    invoke-virtual {v1, v4, v7, v3}, Lw2/j;->h(ZLa3/a;Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/app/notes/sync/db/s;->p()I

    move-result v5

    if-ne v5, v2, :cond_7

    iget-wide v9, v1, Lw2/j;->i:J

    iget-wide v11, v1, Lw2/j;->j:J

    cmp-long v2, v9, v11

    if-eqz v2, :cond_5

    move-object/from16 v2, p2

    invoke-virtual {v7, v3, v2}, La3/a;->c(Lcom/samsung/android/app/notes/sync/db/s;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is conflicted and not downloaded!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lw2/h;->a()V

    return-void

    :cond_5
    move-object/from16 v2, v18

    if-eqz v2, :cond_6

    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/app/notes/sync/db/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v8}, La3/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, La3/a;->a(Lcom/samsung/android/app/notes/sync/db/s;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;-><init>()V

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;->b(Lcom/samsung/android/app/notes/sync/db/s;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;->d(Lcom/samsung/android/app/notes/sync/db/s;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " maybe conflicted but cleared!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lw2/h;->a()V

    return-void

    :cond_6
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is same as the server note but corrupted!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move-object/from16 v2, v18

    :goto_5
    if-eqz v2, :cond_8

    invoke-virtual {v0}, Le1/c;->c()Lj0/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj0/a;->C(Lj0/a;)V

    move-object v13, v2

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Le1/c;->c()Lj0/a;

    move-result-object v13

    :goto_6
    invoke-virtual {v1, v0, v4}, Lw2/g;->e(Le1/c;Z)Z

    invoke-virtual {v1, v0}, Lw2/g;->d(Le1/c;)V

    move-object/from16 v2, p1

    invoke-virtual {v1, v13, v2, v4}, Lw2/g;->f(Lj0/a;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_1
    :try_start_4
    new-instance v0, La3/f;

    iget-object v2, v1, Lw2/a;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, La3/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, La3/f;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lw2/h;->a()V

    return-void

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lw2/h;->a()V

    throw v0
.end method

.method public final j(Ljava/lang/String;)Lj0/a;
    .locals 3

    const-string v0, "SyncNote/SyncSDocxUpdateLocalNote"

    :try_start_0
    iget-object v1, p0, Lw2/a;->b:Lx2/g;

    invoke-virtual {v1, p1}, Lx2/g;->r(Ljava/lang/String;)Lj0/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readLocalNoteForDownSync() : fail to readWDocByUuid , OutOfMemoryError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readLocalNoteForDownSync() : fail to readWDocByUuid , Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
