.class public Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;
.super Ljava/io/BufferedInputStream;
.source "SourceFile"


# instance fields
.field private mAvailable:I

.field private mTotalSize:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;->mTotalSize:I

    iput v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;->mAvailable:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;->mTotalSize:I

    iput p1, p0, Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;->mAvailable:I

    rem-int/lit8 p1, p2, 0x10

    rsub-int/lit8 p1, p1, 0x10

    add-int/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;->mAvailable:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;->mTotalSize:I

    iget v1, p0, Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;->mAvailable:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;->mTotalSize:I

    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;->mTotalSize:I

    add-int v1, v0, p3

    iget v2, p0, Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;->mAvailable:I

    if-le v1, v2, :cond_0

    sub-int p3, v2, v0

    if-gtz p3, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1

    iget p2, p0, Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;->mTotalSize:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/support/senl/document/SDocCipherBlockInputStream;->mTotalSize:I

    return p1
.end method
