.class public Lu2/c;
.super Lu2/f;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lj0/a;

.field public e:Le1/n;


# direct methods
.method public constructor <init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;Lj0/a;Le1/n;La2/g$b;)V
    .locals 0
    .param p6    # La2/g$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lu2/f;-><init>(La2/g$a;Landroid/content/Context;)V

    iput-object p3, p0, Lu2/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lu2/c;->d:Lj0/a;

    iput-object p5, p0, Lu2/c;->e:Le1/n;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncNote/SDocxCompareForUpSync"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lu2/c;->e:Le1/n;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Le1/n;->g(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lu2/f;->b:Landroid/content/Context;

    invoke-static {v0, p1}, La2/g;->f(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    :goto_0
    return-void
.end method

.method public final b(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lu2/c;->e:Le1/n;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le1/n;->f(Ljava/lang/String;)Le1/n;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lu2/c;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "SyncNote/SDocxCompareForUpSync"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lu2/c;->d()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v1

    invoke-virtual {p0, v1}, Lu2/c;->b(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    const-string v1, "finished"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/samsungnotes/v1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/notes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu2/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/compareForUpsync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lh2/b;->b()Lh2/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v1

    const-string v2, "req"

    invoke-virtual {v1, v2}, Lc3/p$c;->d(Ljava/lang/String;)Lc3/p$c;

    move-result-object v1

    iget-object v2, p0, Lu2/c;->d:Lj0/a;

    invoke-virtual {v2}, Lj0/a;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc3/p$c;->n(Ljava/lang/String;)Lc3/p$c;

    move-result-object v1

    const-string v2, "compareForUpsync"

    invoke-virtual {v1, v2}, Lc3/p$c;->a(Ljava/lang/String;)Lc3/p$c;

    move-result-object v1

    const-string v3, "full"

    invoke-virtual {v1, v3}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v1

    iget-object v3, p0, Lu2/f;->b:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lc3/p$c;->m(Landroid/content/Context;)V

    iget-object v1, p0, Lu2/f;->a:La2/g$a;

    iget-object v3, p0, Lu2/f;->b:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->t(La2/g$a;Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->v(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    iget-object v1, p0, Lu2/c;->d:Lj0/a;

    iget-object v1, v1, Lj0/a;->e:Ll0/d;

    invoke-virtual {v1}, Ll0/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->e(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->l()Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->r()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    return-object v0
.end method
