.class public Lu2/b;
.super Lu2/f;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lj0/a;

.field public e:Le1/c;

.field public f:Lcom/samsung/android/app/notes/sync/network/networkutils/c;


# direct methods
.method public constructor <init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;Lj0/a;Le1/c;La2/g$b;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V
    .locals 0
    .param p6    # La2/g$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lu2/f;-><init>(La2/g$a;Landroid/content/Context;)V

    iput-object p3, p0, Lu2/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lu2/b;->d:Lj0/a;

    iput-object p5, p0, Lu2/b;->e:Le1/c;

    iput-object p7, p0, Lu2/b;->f:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    return-void
.end method

.method public static bridge synthetic b(Lu2/b;)Le1/c;
    .locals 0

    iget-object p0, p0, Lu2/b;->e:Le1/c;

    return-object p0
.end method


# virtual methods
.method public c(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompareForDownSync result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncNote/SDocxCompareForDownSync"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lu2/f;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lu2/b;->e()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu2/b;->c(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    return-void
.end method

.method public e()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/samsungnotes/v1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/notes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu2/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/compareForDownsync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lh2/b;->b()Lh2/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lu2/b;->d:Lj0/a;

    if-nez v1, :cond_0

    invoke-static {}, Ll0/d;->l()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lj0/a;->e:Ll0/d;

    invoke-virtual {v1}, Ll0/d;->k()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v2

    const-string v3, "req"

    invoke-virtual {v2, v3}, Lc3/p$c;->d(Ljava/lang/String;)Lc3/p$c;

    move-result-object v2

    iget-object v3, p0, Lu2/b;->d:Lj0/a;

    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lj0/a;->B()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Lc3/p$c;->n(Ljava/lang/String;)Lc3/p$c;

    move-result-object v2

    const-string v3, "compareForDownsync"

    invoke-virtual {v2, v3}, Lc3/p$c;->a(Ljava/lang/String;)Lc3/p$c;

    move-result-object v2

    const-string v4, "full"

    invoke-virtual {v2, v4}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v2

    iget-object v4, p0, Lu2/f;->b:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lc3/p$c;->m(Landroid/content/Context;)V

    iget-object v2, p0, Lu2/f;->a:La2/g$a;

    iget-object v4, p0, Lu2/f;->b:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->t(La2/g$a;Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->v(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->e(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    const-string v1, "multipart/form-data"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->a(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    iget-object v1, p0, Lu2/b;->f:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->u(Lcom/samsung/android/app/notes/sync/network/networkutils/c;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->l()Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    new-instance v1, Lu2/b$a;

    invoke-direct {v1, p0}, Lu2/b$a;-><init>(Lu2/b;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->p(Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->r()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    return-object v0
.end method
