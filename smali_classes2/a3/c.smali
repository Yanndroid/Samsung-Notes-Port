.class public La3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 3

    invoke-virtual {p0, p1}, La3/c;->e(Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/t;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, La3/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->d()I

    move-result p1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/notes/sync/db/t;->a(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 2

    invoke-virtual {p0, p1}, La3/c;->e(Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La3/c;->f(J)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ls0/c;

    const/16 v0, 0x152

    const-string v1, "Too many objects"

    invoke-direct {p1, v0, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 0

    invoke-virtual {p0, p1}, La3/c;->g(Lcom/samsung/android/app/notes/sync/db/s;)V

    iget-object p1, p0, La3/c;->a:Ljava/lang/String;

    invoke-static {p1}, Lx2/c;->v(Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 3

    invoke-virtual {p0, p1}, La3/c;->a(Lcom/samsung/android/app/notes/sync/db/s;)V

    iget-object v0, p0, La3/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lx2/c;->b(Ljava/lang/String;J)V

    new-instance p1, Lu0/m;

    invoke-direct {p1}, Lu0/m;-><init>()V

    invoke-virtual {p1}, Lu0/a;->b()V

    new-instance p1, Ls0/c;

    const/16 v0, 0x151

    const-string v1, "Too many objects"

    invoke-direct {p1, v0, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public e(Lcom/samsung/android/app/notes/sync/db/s;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->d()I

    move-result p1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public f(J)Z
    .locals 2

    iget-object v0, p0, La3/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lx2/c;->j(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public g(Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 3

    invoke-virtual {p0, p1}, La3/c;->e(Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/t;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, La3/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->d()I

    move-result p1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/notes/sync/db/t;->d(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
