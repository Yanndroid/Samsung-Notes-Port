.class public Lq2/b;
.super Lq2/a;
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

    invoke-direct {p0, p1, p2}, Lq2/a;-><init>(La2/g$a;Landroid/content/Context;)V

    iput-object p3, p0, Lq2/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)Le1/f;
    .locals 3

    new-instance v0, Le1/f;

    invoke-direct {v0}, Le1/f;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le1/f;->a(Ljava/lang/String;)Le1/f;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lq2/a;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    :goto_0
    return-object v0
.end method

.method public c()Le1/f;
    .locals 2

    iget-object v0, p0, Lq2/a;->a:La2/g$a;

    const-string v1, "FD"

    invoke-virtual {v0, v1}, La2/g$a;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lq2/b;->d()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    iget-object v1, p0, Lq2/a;->a:La2/g$a;

    invoke-virtual {v1}, La2/g$a;->a()V

    invoke-virtual {p0, v0}, Lq2/b;->b(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)Le1/f;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastChangePoint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq2/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncFolder/SDocxChanges"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/samsungnotes/v1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/folder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/changes"

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

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->v(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    iget-object v1, p0, Lq2/b;->c:Ljava/lang/String;

    const-string v2, "lastChangePoint"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    const-string v1, "getFolderChanges"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->l()Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->k()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    return-object v0
.end method
