.class public Lb2/c$a;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lb2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:I

.field public d:Z

.field public final synthetic e:Lb2/c;


# direct methods
.method public constructor <init>(Lb2/c;)V
    .locals 0

    iput-object p1, p0, Lb2/c$a;->e:Lb2/c;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-virtual {p0}, Lb2/c$a;->b()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    iget-boolean v0, p0, Lb2/c$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lb2/c$a;->d:Z

    iget-object p1, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {p1}, Lb2/c;->d(Lb2/c;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lb2/c$a;->available()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lb2/c$a;->c()I

    move-result p1

    if-nez p1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lb2/c$a;->d:Z

    return-void

    :cond_2
    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lb2/c$a;->skip(J)J

    goto :goto_0
.end method

.method public available()I
    .locals 2

    iget v0, p0, Lb2/c$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v0}, Lb2/c;->g(Lb2/c;)I

    move-result v0

    iget-object v1, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v1}, Lb2/c;->c(Lb2/c;)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lb2/c$a;->b:I

    :goto_0
    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v1, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v1}, Lb2/c;->c(Lb2/c;)I

    move-result v1

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lb2/c$a;->e:Lb2/c;

    invoke-virtual {v0}, Lb2/c;->m()I

    move-result v0

    iput v0, p0, Lb2/c$a;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v0}, Lb2/c;->g(Lb2/c;)I

    move-result v0

    iget-object v1, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v1}, Lb2/c;->c(Lb2/c;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v1}, Lb2/c;->e(Lb2/c;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v0}, Lb2/c;->e(Lb2/c;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v0}, Lb2/c;->g(Lb2/c;)I

    move-result v0

    iget-object v1, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v1}, Lb2/c;->c(Lb2/c;)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lb2/c$a;->b:I

    :cond_1
    return-void
.end method

.method public final c()I
    .locals 7

    iget v0, p0, Lb2/c$a;->c:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-wide v3, p0, Lb2/c$a;->a:J

    iget-object v0, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v0}, Lb2/c;->g(Lb2/c;)I

    move-result v0

    iget-object v5, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v5}, Lb2/c;->c(Lb2/c;)I

    move-result v5

    sub-int/2addr v0, v5

    iget v5, p0, Lb2/c$a;->b:I

    sub-int/2addr v0, v5

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lb2/c$a;->a:J

    iget-object v0, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v0}, Lb2/c;->b(Lb2/c;)[B

    move-result-object v0

    iget-object v3, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v3}, Lb2/c;->g(Lb2/c;)I

    move-result v3

    iget v4, p0, Lb2/c$a;->b:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v4}, Lb2/c;->b(Lb2/c;)[B

    move-result-object v4

    iget v5, p0, Lb2/c$a;->b:I

    invoke-static {v0, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v0, v1}, Lb2/c;->h(Lb2/c;I)V

    iget-object v0, p0, Lb2/c$a;->e:Lb2/c;

    iget v1, p0, Lb2/c$a;->b:I

    invoke-static {v0, v1}, Lb2/c;->i(Lb2/c;I)V

    :cond_1
    iget-object v0, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v0}, Lb2/c;->d(Lb2/c;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v1}, Lb2/c;->b(Lb2/c;)[B

    move-result-object v1

    iget-object v3, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v3}, Lb2/c;->g(Lb2/c;)I

    move-result v3

    iget-object v4, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v4}, Lb2/c;->a(Lb2/c;)I

    move-result v4

    iget-object v5, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v5}, Lb2/c;->g(Lb2/c;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v1, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v1}, Lb2/c;->f(Lb2/c;)Lb2/c$c;

    iget-object v1, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v1}, Lb2/c;->g(Lb2/c;)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v1, v3}, Lb2/c;->i(Lb2/c;I)V

    invoke-virtual {p0}, Lb2/c$a;->b()V

    invoke-virtual {p0}, Lb2/c$a;->available()I

    move-result v0

    if-gtz v0, :cond_2

    iget v1, p0, Lb2/c$a;->c:I

    if-eq v1, v2, :cond_1

    :cond_2
    return v0

    :cond_3
    new-instance v0, Lb2/c$b;

    const-string v1, "Stream ended unexpectedly"

    invoke-direct {v0, v1}, Lb2/c$b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb2/c$a;->a(Z)V

    return-void
.end method

.method public read()I
    .locals 4

    iget-boolean v0, p0, Lb2/c$a;->d:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lb2/c$a;->available()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb2/c$a;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-wide v0, p0, Lb2/c$a;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lb2/c$a;->a:J

    iget-object v0, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v0}, Lb2/c;->b(Lb2/c;)[B

    move-result-object v0

    iget-object v1, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v1}, Lb2/c;->c(Lb2/c;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Lb2/c;->h(Lb2/c;I)V

    aget-byte v0, v0, v2

    if-ltz v0, :cond_1

    return v0

    :cond_1
    add-int/lit16 v0, v0, 0x100

    return v0

    :cond_2
    new-instance v0, Lb2/b;

    invoke-direct {v0}, Lb2/b;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .locals 2

    iget-boolean v0, p0, Lb2/c$a;->d:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lb2/c$a;->available()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lb2/c$a;->c()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v0}, Lb2/c;->b(Lb2/c;)[B

    move-result-object v0

    iget-object v1, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v1}, Lb2/c;->c(Lb2/c;)I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {p1}, Lb2/c;->c(Lb2/c;)I

    move-result p2

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lb2/c;->h(Lb2/c;I)V

    iget-wide p1, p0, Lb2/c$a;->a:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lb2/c$a;->a:J

    return p3

    :cond_2
    new-instance p1, Lb2/b;

    invoke-direct {p1}, Lb2/b;-><init>()V

    throw p1
.end method

.method public skip(J)J
    .locals 3

    iget-boolean v0, p0, Lb2/c$a;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lb2/c$a;->available()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb2/c$a;->c()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-object v0, p0, Lb2/c$a;->e:Lb2/c;

    invoke-static {v0}, Lb2/c;->c(Lb2/c;)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v0, v1}, Lb2/c;->h(Lb2/c;I)V

    return-wide p1

    :cond_1
    new-instance p1, Lb2/b;

    invoke-direct {p1}, Lb2/b;-><init>()V

    throw p1
.end method
