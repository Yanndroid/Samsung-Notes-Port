.class public Lcom/samsung/android/app/notes/sync/network/networkutils/g;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/InputStream;

.field public b:I

.field public c:[B

.field public d:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

.field public e:[B

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->g:I

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->c:[B

    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->c:[B

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->a:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->b:I

    sget-object v0, Ln0/k;->V:[B

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->e:[B

    sget v0, Ln0/k;->U:I

    iput v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public available()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->b:I

    return v0
.end method

.method public c(Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->d:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->c:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->c:[B

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iput-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->a:Ljava/io/InputStream;

    :cond_1
    return-void
.end method

.method public read()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->a()V

    iget v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->g:I

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->e:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-byte v0, v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->g:I

    return v0
.end method

.method public read([B)I
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->a()V

    iget v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->g:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->e:[B

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->e:[B

    aget-byte v2, v2, v1

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->e:[B

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->g:I

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->a:Ljava/io/InputStream;

    array-length v2, v0

    array-length v3, p1

    array-length v0, v0

    sub-int/2addr v3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->e:[B

    array-length v0, v0

    add-int/2addr p1, v0

    return p1

    :cond_1
    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->g:I

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method
