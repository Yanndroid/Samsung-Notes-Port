.class public Lcom/samsung/android/app/notes/sync/network/networkutils/e;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:Z

.field public e:I

.field public f:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->c:I

    iput v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->e:I

    iput-boolean p2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->d:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p2

    invoke-virtual {p2}, Lx/e;->i()Ly/a;

    move-result-object p2

    invoke-interface {p2, p1}, Ly/a;->createSDocCipherInputStream(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->b:Ljava/lang/Object;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->i()Ly/a;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->b:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ly/a;->getReservedSize(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->a:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->c:I

    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->o()[B

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->f:[B

    iget-boolean p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->d:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->o()[B

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->f:[B

    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->o()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->w()[B

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->f:[B

    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->w()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->c:I

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->f:[B

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->c:I

    return-void
.end method


# virtual methods
.method public final a([B[BI)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v1, p1

    sub-int/2addr v1, p3

    array-length v2, p2

    if-lt v1, v2, :cond_2

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-byte v2, p2, v1

    add-int v3, v1, p3

    aget-byte v3, p1, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public available()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->c:I

    return v0
.end method

.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->i()Ly/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ly/a;->close(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_0
    return-void
.end method

.method public read()I
    .locals 5

    iget v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->e:I

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->f:[B

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    aget-byte v0, v1, v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->d:Z

    if-eqz v0, :cond_2

    new-array v0, v3, [B

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->i()Ly/a;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3}, Ly/a;->read(Ljava/lang/Object;[BI)I

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->e:I

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->f:[B

    array-length v4, v2

    if-lt v1, v4, :cond_3

    array-length v2, v2

    add-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_3

    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->s()[B

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->e:I

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->f:[B

    array-length v4, v4

    sub-int/2addr v2, v4

    aget-byte v1, v1, v2

    int-to-byte v2, v0

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "zip header is not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :cond_3
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->e:I

    return v0
.end method

.method public read([B)I
    .locals 5

    iget v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->e:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->f:[B

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->f:[B

    aget-byte v3, v3, v2

    aput-byte v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->f:[B

    array-length v2, v0

    array-length v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->e:I

    iget-boolean v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->d:Z

    if-eqz v2, :cond_2

    array-length v2, p1

    array-length v0, v0

    sub-int/2addr v2, v0

    new-array v0, v2, [B

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v3

    invoke-virtual {v3}, Lx/e;->i()Ly/a;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->b:Ljava/lang/Object;

    invoke-interface {v3, v4, v0, v2}, Ly/a;->read(Ljava/lang/Object;[BI)I

    move-result v2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->s()[B

    move-result-object v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->a([B[BI)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->f:[B

    array-length v3, v3

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->f:[B

    array-length p1, p1

    add-int/2addr v2, p1

    return v2

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ZipHeaderError"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->a:Ljava/io/InputStream;

    array-length v2, v0

    array-length v3, p1

    array-length v0, v0

    sub-int/2addr v3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->f:[B

    array-length v0, v0

    add-int/2addr p1, v0

    return p1

    :cond_3
    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->e:I

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->d:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->i()Ly/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->b:Ljava/lang/Object;

    array-length v2, p1

    invoke-interface {v0, v1, p1, v2}, Ly/a;->read(Ljava/lang/Object;[BI)I

    move-result p1

    return p1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/e;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method
