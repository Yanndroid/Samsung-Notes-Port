.class public Lcom/samsung/android/app/notes/sync/synchronization/managers/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lj0/a;)V
    .locals 8

    new-instance v0, Lcom/samsung/android/app/notes/sync/db/s;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;->a:Landroid/content/Context;

    iget-object v2, p1, Lj0/a;->q:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/db/s;->v()J

    move-result-wide v1

    new-instance v3, La3/a;

    iget-object v4, p1, Lj0/a;->q:Ljava/lang/String;

    invoke-direct {v3, v4}, La3/a;-><init>(Ljava/lang/String;)V

    new-instance v4, La3/b;

    iget-object v5, p1, Lj0/a;->q:Ljava/lang/String;

    invoke-direct {v4, v5}, La3/b;-><init>(Ljava/lang/String;)V

    new-instance v5, La3/d;

    iget-object v6, p1, Lj0/a;->q:Ljava/lang/String;

    invoke-direct {v5, v6}, La3/d;-><init>(Ljava/lang/String;)V

    iget-wide v6, p1, Lj0/a;->r:J

    cmp-long p1, v1, v6

    if-lez p1, :cond_1

    invoke-virtual {v3, v0}, La3/a;->h(Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v4, v0}, La3/b;->c(Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v5, v0}, La3/d;->e(Lcom/samsung/android/app/notes/sync/db/s;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ls0/c;

    const/16 v0, 0x15f

    const-string v1, "The local note is updated!"

    invoke-direct {p1, v0, v1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, La3/b;

    invoke-direct {v1, v0}, La3/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, La3/b;->b(Lcom/samsung/android/app/notes/sync/db/s;)V

    new-instance v1, La3/c;

    invoke-direct {v1, v0}, La3/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, La3/c;->c(Lcom/samsung/android/app/notes/sync/db/s;)V

    new-instance v1, La3/d;

    invoke-direct {v1, v0}, La3/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, La3/d;->c(Lcom/samsung/android/app/notes/sync/db/s;)V

    new-instance v1, La3/g;

    invoke-direct {v1, v0}, La3/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, La3/g;->c(Lcom/samsung/android/app/notes/sync/db/s;)V

    new-instance v1, La3/f;

    invoke-direct {v1, v0}, La3/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, La3/f;->b()V

    new-instance v1, La3/e;

    invoke-direct {v1, v0}, La3/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, La3/e;->c(Lcom/samsung/android/app/notes/sync/db/s;)V

    return-void
.end method

.method public c(Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, La3/b;

    invoke-direct {v1, v0}, La3/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, La3/b;->a(Lcom/samsung/android/app/notes/sync/db/s;)V

    new-instance v1, La3/c;

    invoke-direct {v1, v0}, La3/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, La3/c;->b(Lcom/samsung/android/app/notes/sync/db/s;)V

    new-instance v1, La3/d;

    invoke-direct {v1, v0}, La3/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, La3/d;->b(Lcom/samsung/android/app/notes/sync/db/s;)V

    new-instance v1, La3/g;

    invoke-direct {v1, v0}, La3/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, La3/g;->b(Lcom/samsung/android/app/notes/sync/db/s;)V

    new-instance v1, La3/f;

    invoke-direct {v1, v0}, La3/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, La3/f;->a(Lcom/samsung/android/app/notes/sync/db/s;)V

    new-instance v1, La3/e;

    invoke-direct {v1, v0}, La3/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, La3/e;->b(Lcom/samsung/android/app/notes/sync/db/s;)V

    return-void
.end method

.method public d(Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/db/s;->p()I

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/app/notes/sync/db/t;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;->a:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/samsung/android/app/notes/sync/db/t;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/notes/sync/db/t;->m(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
