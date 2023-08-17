.class public Lu2/d;
.super Lu2/f;
.source "SourceFile"


# instance fields
.field public c:Lj0/a;

.field public d:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

.field public e:Le1/h;

.field public f:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(La2/g$a;Landroid/content/Context;Lj0/a;La2/g$b;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V
    .locals 0
    .param p4    # La2/g$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lu2/f;-><init>(La2/g$a;Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lu2/d;->f:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lu2/d;->c:Lj0/a;

    iput-object p5, p0, Lu2/d;->d:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    new-instance p1, Le1/h;

    invoke-direct {p1}, Le1/h;-><init>()V

    iput-object p1, p0, Lu2/d;->e:Le1/h;

    return-void
.end method


# virtual methods
.method public b(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Le1/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createNote() response body = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncNote/SDocxCreateNote"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lu2/d;->e:Le1/h;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le1/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lu2/d;->e:Le1/h;

    invoke-virtual {p2, p1}, Le1/a;->e(Le1/h;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result p2

    const/16 v0, 0x1a6

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lu2/d;->c:Lj0/a;

    invoke-virtual {p2}, Lj0/a;->u()V

    iget-object p2, p0, Lu2/f;->b:Landroid/content/Context;

    invoke-static {p2, p1}, La2/g;->f(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    :goto_0
    return-void

    :cond_1
    new-instance p2, Ls0/c;

    const/16 v0, 0x14f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to SDocxCreateNote : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method public final c(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)Le1/a;
    .locals 3

    new-instance v0, Le1/a;

    invoke-direct {v0}, Le1/a;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le1/a;->a(Ljava/lang/String;)Le1/a;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v1

    const/16 v2, 0xca

    if-ne v1, v2, :cond_1

    const-string p1, "SyncNote/SDocxCreateNote"

    const-string v1, "createNote() status code = HTTP_RESOURCE_ACCEPTED"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lu2/d;->b(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Le1/a;)V

    :goto_0
    iget-object p1, p0, Lu2/f;->b:Landroid/content/Context;

    invoke-static {p1}, Lc3/p;->k(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object p1

    const-string/jumbo v1, "upSyncedStrokeResources"

    invoke-virtual {p1, v1}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object p1

    iget-object v1, p0, Lu2/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object p1

    iget-object v1, p0, Lu2/f;->b:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lc3/p$c;->m(Landroid/content/Context;)V

    :cond_2
    return-object v0
.end method

.method public d()Le1/a;
    .locals 1

    invoke-virtual {p0}, Lu2/d;->e()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu2/d;->c(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)Le1/a;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 10

    iget-object v0, p0, Lu2/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lc3/p;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lu2/d;->f:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upSyncedStrokeResources\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/samsungnotes/v1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/notes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lh2/b;->b()Lh2/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lu2/f;->a:La2/g$a;

    iget-object v2, p0, Lu2/f;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->t(La2/g$a;Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v1

    const-string v2, "createNote"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->v(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    iget-object v1, p0, Lu2/d;->d:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->u(Lcom/samsung/android/app/notes/sync/network/networkutils/c;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    iget-object v1, p0, Lu2/d;->c:Lj0/a;

    invoke-virtual {v1}, Lj0/a;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "noteResource"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->l()Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    iget-object v1, p0, Lu2/d;->c:Lj0/a;

    iget-object v1, v1, Lj0/a;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "SyncNote/SDocxCreateNote"

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll0/e;

    invoke-virtual {v4}, Ll0/e;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll0/b;

    invoke-virtual {v6}, Ll0/b;->i()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln0/a;

    instance-of v8, v7, Ln0/k;

    if-eqz v8, :cond_3

    check-cast v7, Ln0/k;

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->b(Ln0/k;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    iget-object v8, p0, Lu2/f;->b:Landroid/content/Context;

    invoke-static {v8}, Lc3/p;->k(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lu2/d;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ln0/a;->q()Lo0/t;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    rem-int/lit16 v7, v3, 0x3e8

    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "upload stroke "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "upload total stroke "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->r()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lu2/d;->c:Lj0/a;

    invoke-virtual {v1}, Lj0/a;->a()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNote response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lu2/d;->c:Lj0/a;

    invoke-virtual {v1}, Lj0/a;->a()V

    throw v0
.end method
