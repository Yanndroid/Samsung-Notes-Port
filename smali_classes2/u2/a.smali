.class public Lu2/a;
.super Lu2/f;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;La2/g$b;)V
    .locals 0
    .param p4    # La2/g$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lu2/f;-><init>(La2/g$a;Landroid/content/Context;)V

    iput-object p3, p0, Lu2/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)Le1/g;
    .locals 3

    new-instance v0, Le1/g;

    invoke-direct {v0}, Le1/g;-><init>()V

    iget-object v1, p0, Lu2/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le1/g;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le1/g;->a(Ljava/lang/String;)Le1/g;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lu2/f;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    :goto_0
    return-object v0
.end method

.method public c()Le1/g;
    .locals 1

    invoke-virtual {p0}, Lu2/a;->d()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu2/a;->b(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)Le1/g;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastChangePoint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu2/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncNote/SDocxChanges"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/samsungnotes/v1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/notes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/changes"

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

    const-string v2, "getNoteChanges"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->v(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->l()Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    iget-object v1, p0, Lu2/a;->c:Ljava/lang/String;

    const-string v2, "lastChangePoint"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->k()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    return-object v0
.end method
