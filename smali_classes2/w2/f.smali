.class public Lw2/f;
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
    .locals 11

    const-string v0, "deleteServerNote_res"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perform() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " by Local"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyncNote/SyncSDocxDeleteServerNote"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v1

    const-string v3, "SyncSDocxDeleteServerNote"

    invoke-virtual {v1, v3}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v1

    iget-object v3, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object v1

    iget-object v3, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lc3/p$c;->m(Landroid/content/Context;)V

    new-instance v1, Lu2/e;

    iget-object v3, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/e;->p()La2/g$a;

    move-result-object v5

    iget-object v3, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v6

    const/4 v10, 0x0

    move-object v4, v1

    move-object v7, p1

    move-wide v8, p2

    invoke-direct/range {v4 .. v10}, Lu2/e;-><init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;JLa2/g$b;)V

    invoke-virtual {v1}, Lu2/e;->c()V

    :try_start_0
    iget-object p1, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {p1}, Lx2/e;->w()Lcom/samsung/android/app/notes/sync/db/t;

    move-result-object p1

    iget-object p2, p0, Lw2/a;->d:Ljava/lang/String;

    const-string p3, "Local"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/notes/sync/db/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "perform() : succeed to delete "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
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
