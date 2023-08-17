.class public Lw2/e;
.super Lw2/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lw2/a;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 3

    const-string v0, "deleteLocalNote_res"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perform() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SyncNote/SyncSDocxDeleteLocalNote"

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object p2

    const-string p3, "SyncSDocxDeleteLocalNote"

    invoke-virtual {p2, p3}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object p2

    iget-object p3, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object p2

    iget-object p3, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {p3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lc3/p$c;->m(Landroid/content/Context;)V

    :try_start_0
    iget-object p2, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {p2}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object p2

    iget-object p3, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/app/notes/sync/db/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {p1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lc3/p;->q(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {p2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lc3/p;->q(Landroid/content/Context;Ljava/lang/String;)V

    throw p1
.end method
