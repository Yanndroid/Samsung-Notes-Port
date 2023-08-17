.class public Lw2/k;
.super Lw2/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lw2/i;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perform() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncNote/SyncSDocxUpdateServerNote"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v0

    const-string v2, "SyncSDocxUpdateServerNote"

    invoke-virtual {v0, v2}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget-object v2, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget-object v2, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc3/p$c;->m(Landroid/content/Context;)V

    new-instance v0, La3/a;

    iget-object v2, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, La3/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, La3/a;->f(Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is conflicted and not uploaded!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;

    invoke-direct {v2}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;-><init>()V

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;->c(Lcom/samsung/android/app/notes/sync/db/s;)V

    :try_start_0
    invoke-virtual {p0}, Lw2/h;->b()V

    invoke-virtual {p0, p2}, Lw2/i;->d(Lcom/samsung/android/app/notes/sync/db/s;)Lj0/a;

    move-result-object v2

    new-instance v10, Lw2/k$a;

    invoke-direct {v10, p0}, Lw2/k$a;-><init>(Lw2/k;)V

    new-instance v11, Le1/n;

    invoke-direct {v11}, Le1/n;-><init>()V

    iget-object v3, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/e;->p()La2/g$a;

    move-result-object v3

    const-string v4, "NU"

    invoke-virtual {v3, v4}, La2/g$a;->h(Ljava/lang/String;)V

    new-instance v12, Lu2/c;

    iget-object v3, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/e;->p()La2/g$a;

    move-result-object v4

    iget-object v3, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v5

    const/4 v9, 0x0

    move-object v3, v12

    move-object v6, p1

    move-object v7, v2

    move-object v8, v11

    invoke-direct/range {v3 .. v9}, Lu2/c;-><init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;Lj0/a;Le1/n;La2/g$b;)V

    invoke-virtual {v12}, Lu2/c;->c()V

    invoke-virtual {v11}, Le1/n;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "perform() : The note is already deleted on the server side!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {p1}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object p1

    iget-object v0, p0, Lw2/a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/notes/sync/db/t;->r(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lw2/c;

    iget-object v0, p0, Lw2/a;->a:Lx2/e;

    iget-object v1, p0, Lw2/a;->b:Lx2/g;

    iget-object v2, p0, Lw2/a;->c:Lp2/a;

    iget-object v3, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, v3}, Lw2/c;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lw2/c;->f(Lcom/samsung/android/app/notes/sync/db/s;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lw2/h;->a()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v11}, Le1/n;->b()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v11}, Le1/n;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Le1/n;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "After compareForUpsync : serverCommitId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v3, v4}, La3/a;->d(Lcom/samsung/android/app/notes/sync/db/s;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " may be conflicted and not uploaded!!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lw2/h;->a()V

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v11}, Le1/n;->d()Ll0/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj0/a;->x(Ll0/d;)Lj0/a;

    invoke-virtual {p0, v2, v10}, Lw2/i;->e(Lj0/a;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V

    iget-object v3, p0, Lw2/a;->b:Lx2/g;

    iget-object v4, p0, Lw2/a;->c:Lp2/a;

    const-string v5, "SyncSDocxUpdateServerNote!"

    invoke-virtual {v3, v4, v5}, Lx2/g;->h(Lp2/a;Ljava/lang/String;)V

    new-instance v11, Lu2/h;

    iget-object v3, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/e;->p()La2/g$a;

    move-result-object v4

    iget-object v3, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v5

    const/4 v8, 0x0

    move-object v3, v11

    move-object v6, p1

    move-object v7, v2

    move-object v9, v10

    invoke-direct/range {v3 .. v9}, Lu2/h;-><init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;Lj0/a;La2/g$b;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V

    invoke-virtual {v11}, Lu2/h;->d()Le1/m;

    move-result-object p1

    if-nez p1, :cond_3

    const-string/jumbo p1, "updateServerNote() : updateNoteItem is null!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Le1/m;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p1, "Unknown"

    const-string v1, "Fail to updateNote due to the conflication!"

    invoke-virtual {v0, p1, v1}, La3/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Le1/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v1

    iget-object v3, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Le1/m;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/samsung/android/app/notes/sync/db/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, La3/a;->a(Lcom/samsung/android/app/notes/sync/db/s;)V

    invoke-virtual {p0, v2, p2}, Lw2/i;->c(Lj0/a;Lcom/samsung/android/app/notes/sync/db/s;)V

    goto :goto_0

    :cond_5
    const-string/jumbo p1, "updateServerNote() : No commitId!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_3
    new-instance p1, La3/f;

    iget-object v0, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-direct {p1, v0}, La3/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, La3/f;->c(Lcom/samsung/android/app/notes/sync/db/s;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lw2/h;->a()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lw2/h;->a()V

    throw p1
.end method
