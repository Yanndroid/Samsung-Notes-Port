.class public Lb2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb2/c$a;,
        Lb2/c$b;,
        Lb2/c$c;
    }
.end annotation


# static fields
.field public static final k:[B

.field public static final l:[B

.field public static final m:[B

.field public static final n:[B


# instance fields
.field public final a:Ljava/io/InputStream;

.field public b:I

.field public final c:I

.field public final d:[B

.field public final e:[I

.field public final f:I

.field public final g:[B

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lb2/c;->k:[B

    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    sput-object v2, Lb2/c;->l:[B

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    sput-object v1, Lb2/c;->m:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lb2/c;->n:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data

    nop

    :array_3
    .array-data 1
        0xdt
        0xat
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lb2/c;-><init>(Ljava/io/InputStream;[BILb2/c$c;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BILb2/c$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    array-length p4, p2

    sget-object v0, Lb2/c;->n:[B

    array-length v1, v0

    add-int/2addr p4, v1

    iput p4, p0, Lb2/c;->b:I

    add-int/lit8 v1, p4, 0x1

    if-lt p3, v1, :cond_0

    iput-object p1, p0, Lb2/c;->a:Ljava/io/InputStream;

    mul-int/lit8 p4, p4, 0x2

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lb2/c;->f:I

    new-array p1, p1, [B

    iput-object p1, p0, Lb2/c;->g:[B

    iget p1, p0, Lb2/c;->b:I

    new-array p3, p1, [B

    iput-object p3, p0, Lb2/c;->d:[B

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lb2/c;->e:[I

    array-length p1, p3

    iput p1, p0, Lb2/c;->c:I

    array-length p1, v0

    const/4 p4, 0x0

    invoke-static {v0, p4, p3, p4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v0

    array-length v0, p2

    invoke-static {p2, p4, p3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lb2/c;->k()V

    iput p4, p0, Lb2/c;->h:I

    iput p4, p0, Lb2/c;->i:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The buffer size specified for the MultipartStream is too small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "boundary may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static bridge synthetic a(Lb2/c;)I
    .locals 0

    iget p0, p0, Lb2/c;->f:I

    return p0
.end method

.method public static bridge synthetic b(Lb2/c;)[B
    .locals 0

    iget-object p0, p0, Lb2/c;->g:[B

    return-object p0
.end method

.method public static bridge synthetic c(Lb2/c;)I
    .locals 0

    iget p0, p0, Lb2/c;->h:I

    return p0
.end method

.method public static bridge synthetic d(Lb2/c;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lb2/c;->a:Ljava/io/InputStream;

    return-object p0
.end method

.method public static bridge synthetic e(Lb2/c;)I
    .locals 0

    iget p0, p0, Lb2/c;->c:I

    return p0
.end method

.method public static bridge synthetic f(Lb2/c;)Lb2/c$c;
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic g(Lb2/c;)I
    .locals 0

    iget p0, p0, Lb2/c;->i:I

    return p0
.end method

.method public static bridge synthetic h(Lb2/c;I)V
    .locals 0

    iput p1, p0, Lb2/c;->h:I

    return-void
.end method

.method public static bridge synthetic i(Lb2/c;I)V
    .locals 0

    iput p1, p0, Lb2/c;->i:I

    return-void
.end method

.method public static j([B[BI)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final k()V
    .locals 5

    iget-object v0, p0, Lb2/c;->e:[I

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v0, 0x2

    move v1, v2

    :goto_0
    iget v3, p0, Lb2/c;->b:I

    if-gt v0, v3, :cond_2

    iget-object v3, p0, Lb2/c;->d:[B

    add-int/lit8 v4, v0, -0x1

    aget-byte v4, v3, v4

    aget-byte v3, v3, v1

    if-ne v4, v3, :cond_0

    iget-object v3, p0, Lb2/c;->e:[I

    add-int/lit8 v1, v1, 0x1

    aput v1, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lb2/c;->e:[I

    if-lez v1, :cond_1

    aget v1, v3, v1

    goto :goto_0

    :cond_1
    aput v2, v3, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb2/c;->o(Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 4

    iget v0, p0, Lb2/c;->h:I

    const/4 v1, 0x0

    :cond_0
    iget v2, p0, Lb2/c;->i:I

    if-ge v0, v2, :cond_2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lb2/c;->g:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lb2/c;->d:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lb2/c;->e:[I

    aget v1, v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lb2/c;->b:I

    if-ne v1, v2, :cond_0

    sub-int/2addr v0, v2

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public n()Lb2/c$a;
    .locals 1

    new-instance v0, Lb2/c$a;

    invoke-direct {v0, p0}, Lb2/c$a;-><init>(Lb2/c;)V

    return-object v0
.end method

.method public o(Ljava/io/OutputStream;)I
    .locals 2

    invoke-virtual {p0}, Lb2/c;->n()Lb2/c$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lb2/d;->d(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public p()Z
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [B

    iget v2, p0, Lb2/c;->h:I

    iget v3, p0, Lb2/c;->b:I

    add-int/2addr v2, v3

    iput v2, p0, Lb2/c;->h:I

    :try_start_0
    invoke-virtual {p0}, Lb2/c;->q()B

    move-result v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    aget-byte v2, v1, v3

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    return v5

    :cond_0
    invoke-virtual {p0}, Lb2/c;->q()B

    move-result v2

    aput-byte v2, v1, v5

    sget-object v2, Lb2/c;->m:[B

    invoke-static {v1, v2, v0}, Lb2/c;->j([B[BI)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lb2/c;->l:[B

    invoke-static {v1, v2, v0}, Lb2/c;->j([B[BI)Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v5

    :goto_0
    return v3

    :cond_2
    new-instance v0, Lb2/c$b;

    const-string v1, "Unexpected characters follow a boundary"

    invoke-direct {v0, v1}, Lb2/c$b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lb2/c$b;

    const-string v1, "Stream ended unexpectedly"

    invoke-direct {v0, v1}, Lb2/c$b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()B
    .locals 4

    iget v0, p0, Lb2/c;->h:I

    iget v1, p0, Lb2/c;->i:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lb2/c;->h:I

    iget-object v1, p0, Lb2/c;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lb2/c;->g:[B

    iget v3, p0, Lb2/c;->f:I

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lb2/c;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No more data is available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lb2/c;->g:[B

    iget v1, p0, Lb2/c;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb2/c;->h:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    sget-object v4, Lb2/c;->k:[B

    array-length v5, v4

    if-ge v2, v5, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lb2/c;->q()B

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    add-int/2addr v3, v6

    const/16 v7, 0x2800

    if-gt v3, v7, :cond_1

    aget-byte v4, v4, v2

    if-ne v5, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lb2/c$b;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Header section has more than %s bytes (maybe it is not properly terminated)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb2/c$b;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance v0, Lb2/c$b;

    const-string v1, "Stream ended unexpectedly"

    invoke-direct {v0, v1}, Lb2/c$b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lb2/c;->j:Ljava/lang/String;

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :cond_3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public s()Z
    .locals 8

    iget-object v0, p0, Lb2/c;->d:[B

    array-length v1, v0

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lb2/c;->d:[B

    array-length v0, v0

    sub-int/2addr v0, v2

    iput v0, p0, Lb2/c;->b:I

    invoke-virtual {p0}, Lb2/c;->k()V

    const/16 v0, 0xa

    const/4 v1, 0x1

    const/16 v4, 0xd

    :try_start_0
    invoke-virtual {p0}, Lb2/c;->l()I

    invoke-virtual {p0}, Lb2/c;->p()Z

    move-result v5
    :try_end_0
    .catch Lb2/c$b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Lb2/c;->d:[B

    array-length v7, v6

    sub-int/2addr v7, v2

    invoke-static {v6, v3, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lb2/c;->d:[B

    array-length v6, v2

    iput v6, p0, Lb2/c;->b:I

    aput-byte v4, v2, v3

    aput-byte v0, v2, v1

    invoke-virtual {p0}, Lb2/c;->k()V

    return v5

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lb2/c;->d:[B

    array-length v7, v6

    sub-int/2addr v7, v2

    invoke-static {v6, v3, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lb2/c;->d:[B

    array-length v6, v2

    iput v6, p0, Lb2/c;->b:I

    aput-byte v4, v2, v3

    aput-byte v0, v2, v1

    invoke-virtual {p0}, Lb2/c;->k()V

    throw v5

    :catch_0
    iget-object v5, p0, Lb2/c;->d:[B

    array-length v6, v5

    sub-int/2addr v6, v2

    invoke-static {v5, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lb2/c;->d:[B

    array-length v5, v2

    iput v5, p0, Lb2/c;->b:I

    aput-byte v4, v2, v3

    aput-byte v0, v2, v1

    invoke-virtual {p0}, Lb2/c;->k()V

    return v3
.end method
