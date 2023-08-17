.class public Lq2/c;
.super Lq2/a;
.source "SourceFile"


# instance fields
.field public c:Le1/l;


# direct methods
.method public constructor <init>(La2/g$a;Landroid/content/Context;Le1/l;La2/g$b;)V
    .locals 0
    .param p4    # La2/g$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lq2/a;-><init>(La2/g$a;Landroid/content/Context;)V

    iput-object p3, p0, Lq2/c;->c:Le1/l;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v0

    const/16 v1, 0x193

    if-eq v0, v1, :cond_1

    const/16 v1, 0x199

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ls0/b;->c(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lq2/c;->b(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    :goto_0
    iget-object v0, p0, Lq2/a;->b:Landroid/content/Context;

    invoke-static {v0, p1}, La2/g;->f(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V
    .locals 1

    new-instance v0, Le1/h;

    invoke-direct {v0}, Le1/h;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le1/h;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Le1/h;->c()I

    move-result p1

    const v0, 0x1f599

    if-ne p1, v0, :cond_0

    const-string p1, "SyncFolder/SDocxUpdateFolder"

    const-string v0, "checkAndHandleFutureTimeError() : Future time error!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lq2/c;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lq2/a;->a:La2/g$a;

    const-string v1, "FU"

    invoke-virtual {v0, v1}, La2/g$a;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lq2/c;->e()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    iget-object v1, p0, Lq2/a;->a:La2/g$a;

    invoke-virtual {v1}, La2/g$a;->a()V

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lq2/c;->c(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    :cond_0
    return-void
.end method

.method public e()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 3

    iget-object v0, p0, Lq2/c;->c:Le1/l;

    invoke-virtual {v0}, Le1/l;->b()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "SyncFolder/SDocxUpdateFolder"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq2/c;->c:Le1/l;

    invoke-virtual {v0}, Le1/l;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRequest() start : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lq2/c;->c:Le1/l;

    invoke-virtual {v2}, Le1/l;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/samsungnotes/v1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/folder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lh2/b;->b()Lh2/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lq2/a;->a:La2/g$a;

    iget-object v2, p0, Lq2/a;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->t(La2/g$a;Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v1

    const-string/jumbo v2, "updateFolders"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->v(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    iget-object v1, p0, Lq2/c;->c:Le1/l;

    invoke-virtual {v1}, Le1/l;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->e(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->l()Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->q()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "sendRequest() : No node!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
