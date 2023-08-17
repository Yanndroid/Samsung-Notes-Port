.class public La3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La3/f;->f(J)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ls0/c;

    const/16 v0, 0x152

    const-string v1, "Out of memory"

    invoke-direct {p1, v0, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, La3/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La3/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lx2/c;->y(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 3

    iget-object v0, p0, La3/f;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lx2/c;->e(Ljava/lang/String;J)V

    new-instance p1, Lu0/h;

    iget-object v0, p0, La3/f;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Lu0/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu0/a;->b()V

    new-instance p1, Ls0/c;

    const/16 v0, 0x151

    const-string v1, "Out of memory"

    invoke-direct {p1, v0, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public d()V
    .locals 3

    new-instance v0, Ls0/c;

    const/16 v1, 0x151

    const-string v2, "Out of memory"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 4

    iget-object v0, p0, La3/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lx2/c;->n(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f(J)Z
    .locals 2

    iget-object v0, p0, La3/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lx2/c;->n(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
