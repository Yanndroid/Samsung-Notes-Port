.class public Lu2/g;
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

    iput-object p3, p0, Lu2/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)Le1/i;
    .locals 3

    new-instance v0, Le1/i;

    invoke-direct {v0}, Le1/i;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le1/i;->a(Ljava/lang/String;)Le1/i;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Le1/i;->b()Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->setIsExists(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lu2/f;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    :goto_0
    return-object v0
.end method

.method public c()Le1/i;
    .locals 1

    invoke-virtual {p0}, Lu2/g;->d()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu2/g;->b(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)Le1/i;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverResourceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu2/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncNote/SDocxNoteInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/samsungnotes/v1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/notes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu2/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/info"

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

    const-string v2, "getNoteInfo"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->v(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->l()Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->k()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    return-object v0
.end method
