.class public Lw2/c;
.super Lw2/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lw2/i;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public f(Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perform() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncNote/SyncSDocxCreateServerNote"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v0

    const-string v2, "SyncSDocxCreateServerNote"

    invoke-virtual {v0, v2}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget-object v2, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    iget-object v2, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc3/p$c;->m(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;->c(Lcom/samsung/android/app/notes/sync/db/s;)V

    :try_start_0
    invoke-virtual {p0}, Lw2/h;->b()V

    invoke-virtual {p0, p1}, Lw2/i;->d(Lcom/samsung/android/app/notes/sync/db/s;)Lj0/a;

    move-result-object v0

    new-instance v7, Lw2/c$a;

    invoke-direct {v7, p0}, Lw2/c$a;-><init>(Lw2/c;)V

    iget-object v2, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/e;->p()La2/g$a;

    move-result-object v2

    const-string v3, "NU"

    invoke-virtual {v2, v3}, La2/g$a;->h(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v7}, Lw2/i;->e(Lj0/a;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V

    new-instance v8, Lu2/d;

    iget-object v2, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/e;->p()La2/g$a;

    move-result-object v3

    iget-object v2, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    move-object v2, v8

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lu2/d;-><init>(La2/g$a;Landroid/content/Context;Lj0/a;La2/g$b;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V

    invoke-virtual {v8}, Lu2/d;->d()Le1/a;

    move-result-object v2

    invoke-virtual {v2}, Le1/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v3

    iget-object v4, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v2}, Le1/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/notes/sync/db/t;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Le1/a;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "perform() : already created!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/q;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Le1/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object v1

    iget-object v3, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v2}, Le1/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/app/notes/sync/db/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform() : No commitId of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0, p1}, Lw2/i;->c(Lj0/a;Lcom/samsung/android/app/notes/sync/db/s;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perform() : No server id of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_1
    new-instance v0, La3/f;

    iget-object v1, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, La3/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, La3/f;->c(Lcom/samsung/android/app/notes/sync/db/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lw2/h;->a()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lw2/h;->a()V

    throw p1
.end method
