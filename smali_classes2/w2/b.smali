.class public Lw2/b;
.super Lw2/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;Lx2/a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lw2/g;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;Lx2/a;)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perform() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , serverId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , deviceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SyncNote/SyncSDocxCreateLocalNote"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object p2

    const-string v0, "SyncSDocxCreateLocalNote"

    invoke-virtual {p2, v0}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object p2

    iget-object v0, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object p2

    iget-object v0, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lc3/p$c;->m(Landroid/content/Context;)V

    new-instance p2, Le1/c;

    iget-object v0, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Le1/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v8, Lw2/b$a;

    invoke-direct {v8, p0}, Lw2/b$a;-><init>(Lw2/b;)V

    :try_start_0
    invoke-virtual {p0}, Lw2/h;->b()V

    new-instance v0, Lu2/b;

    iget-object v1, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/e;->p()La2/g$a;

    move-result-object v2

    iget-object v1, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lu2/b;-><init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;Lj0/a;Le1/c;La2/g$b;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V

    invoke-virtual {v0}, Lu2/b;->d()V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lw2/g;->e(Le1/c;Z)Z

    invoke-virtual {p0, p2}, Lw2/g;->d(Le1/c;)V

    invoke-virtual {p2}, Le1/c;->c()Lj0/a;

    move-result-object p2

    invoke-virtual {p0, p2, p1, v0}, Lw2/g;->f(Lj0/a;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    new-instance p1, La3/f;

    iget-object p2, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-direct {p1, p2}, La3/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, La3/f;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lw2/h;->a()V

    return-void

    :goto_1
    invoke-virtual {p0}, Lw2/h;->a()V

    throw p1
.end method
