.class abstract Lcom/google/common/hash/AbstractStreamingHasher;
.super Lcom/google/common/hash/AbstractHasher;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation

.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final bufferSize:I

.field private final chunkSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/google/common/hash/AbstractStreamingHasher;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Lcom/google/common/hash/AbstractHasher;-><init>()V

    rem-int v0, p2, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    add-int/lit8 v0, p2, 0x7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    iput p2, p0, Lcom/google/common/hash/AbstractStreamingHasher;->bufferSize:I

    iput p1, p0, Lcom/google/common/hash/AbstractStreamingHasher;->chunkSize:I

    return-void
.end method

.method private munch()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/hash/Java8Compatibility;->flip(Ljava/nio/Buffer;)V

    :goto_0
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/AbstractStreamingHasher;->chunkSize:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractStreamingHasher;->process(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method private munchIfFull()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munch()V

    :cond_0
    return-void
.end method

.method private putBytesInternal(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .locals 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munchIfFull()V

    return-object p0

    :cond_0
    iget v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->bufferSize:I

    iget-object v1, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munch()V

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/AbstractStreamingHasher;->chunkSize:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->process(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method


# virtual methods
.method public final hash()Lcom/google/common/hash/HashCode;
    .locals 2

    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munch()V

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/hash/Java8Compatibility;->flip(Ljava/nio/Buffer;)V

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractStreamingHasher;->processRemaining(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/hash/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->makeHash()Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public abstract makeHash()Lcom/google/common/hash/HashCode;
.end method

.method public abstract process(Ljava/nio/ByteBuffer;)V
.end method

.method public processRemaining(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/hash/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    iget v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->chunkSize:I

    add-int/lit8 v0, v0, 0x7

    invoke-static {p1, v0}, Lcom/google/common/hash/Java8Compatibility;->limit(Ljava/nio/Buffer;I)V

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/AbstractStreamingHasher;->chunkSize:I

    if-ge v0, v1, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lcom/google/common/hash/Java8Compatibility;->limit(Ljava/nio/Buffer;I)V

    invoke-static {p1}, Lcom/google/common/hash/Java8Compatibility;->flip(Ljava/nio/Buffer;)V

    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->process(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final putByte(B)Lcom/google/common/hash/Hasher;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munchIfFull()V

    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public final putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->putBytesInternal(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v1
.end method

.method public final putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 0

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->putBytesInternal(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractStreamingHasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public final putChar(C)Lcom/google/common/hash/Hasher;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munchIfFull()V

    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public final putInt(I)Lcom/google/common/hash/Hasher;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munchIfFull()V

    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public final putLong(J)Lcom/google/common/hash/Hasher;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munchIfFull()V

    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractStreamingHasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public final putShort(S)Lcom/google/common/hash/Hasher;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/AbstractStreamingHasher;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHasher;->munchIfFull()V

    return-object p0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractStreamingHasher;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method
