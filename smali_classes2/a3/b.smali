.class public La3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 2

    invoke-virtual {p0, p1}, La3/b;->c(Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La3/b;->d(J)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ls0/c;

    const/16 v0, 0x152

    const-string v1, "Corrupted Note!"

    invoke-direct {p1, v0, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 0

    invoke-virtual {p0, p1}, La3/b;->e(Lcom/samsung/android/app/notes/sync/db/s;)V

    iget-object p1, p0, La3/b;->a:Ljava/lang/String;

    invoke-static {p1}, Lx2/c;->u(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/samsung/android/app/notes/sync/db/s;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->d()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, La3/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lx2/c;->i(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCorruptedDbState() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La3/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " wont be uploaded!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CorruptedNote"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La3/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lx2/c;->a(Ljava/lang/String;J)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d(J)Z
    .locals 2

    iget-object v0, p0, La3/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lx2/c;->i(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public e(Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 3

    invoke-virtual {p0, p1}, La3/b;->c(Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/t;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, La3/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->d()I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/notes/sync/db/t;->d(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
