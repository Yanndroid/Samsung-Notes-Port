.class public Lu2/e;
.super Lu2/f;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:J


# direct methods
.method public constructor <init>(La2/g$a;Landroid/content/Context;Ljava/lang/String;JLa2/g$b;)V
    .locals 0
    .param p6    # La2/g$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lu2/f;-><init>(La2/g$a;Landroid/content/Context;)V

    iput-object p3, p0, Lu2/e;->c:Ljava/lang/String;

    iput-wide p4, p0, Lu2/e;->d:J

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v0

    const-string v1, "SyncNote/SDocxDeleteNote"

    const/16 v2, 0x194

    if-ne v0, v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resource note found, serverResourceId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lu2/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v0

    const/16 v2, 0x199

    if-ne v0, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Latest resource note exist, serverResourceId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lu2/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
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

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lu2/e;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "SyncNote/SDocxDeleteNote"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lu2/e;->d()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v1

    invoke-virtual {p0, v1}, Lu2/e;->b(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    const-string v1, "finish"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/samsungnotes/v1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/notes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu2/e;->c:Ljava/lang/String;

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

    const-string v2, "deleteNote"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->v(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    iget-wide v1, p0, Lu2/e;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "syncModifiedTime"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->h()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    return-object v0
.end method
