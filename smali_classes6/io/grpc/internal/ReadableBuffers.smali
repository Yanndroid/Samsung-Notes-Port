.class public final Lio/grpc/internal/ReadableBuffers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ReadableBuffers$BufferInputStream;,
        Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;,
        Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;
    }
.end annotation


# static fields
.field private static final EMPTY_BUFFER:Lio/grpc/internal/ReadableBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;-><init>([B)V

    sput-object v0, Lio/grpc/internal/ReadableBuffers;->EMPTY_BUFFER:Lio/grpc/internal/ReadableBuffer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static empty()Lio/grpc/internal/ReadableBuffer;
    .locals 1

    sget-object v0, Lio/grpc/internal/ReadableBuffers;->EMPTY_BUFFER:Lio/grpc/internal/ReadableBuffer;

    return-object v0
.end method

.method public static ignoreClose(Lio/grpc/internal/ReadableBuffer;)Lio/grpc/internal/ReadableBuffer;
    .locals 1

    new-instance v0, Lio/grpc/internal/ReadableBuffers$1;

    invoke-direct {v0, p0}, Lio/grpc/internal/ReadableBuffers$1;-><init>(Lio/grpc/internal/ReadableBuffer;)V

    return-object v0
.end method

.method public static openStream(Lio/grpc/internal/ReadableBuffer;Z)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/grpc/internal/ReadableBuffers;->ignoreClose(Lio/grpc/internal/ReadableBuffer;)Lio/grpc/internal/ReadableBuffer;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lio/grpc/internal/ReadableBuffers$BufferInputStream;-><init>(Lio/grpc/internal/ReadableBuffer;)V

    return-object v0
.end method

.method public static readArray(Lio/grpc/internal/ReadableBuffer;)[B
    .locals 3

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lio/grpc/internal/ReadableBuffer;->readBytes([BII)V

    return-object v1
.end method

.method public static readAsString(Lio/grpc/internal/ReadableBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    const-string v0, "charset"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lio/grpc/internal/ReadableBuffers;->readArray(Lio/grpc/internal/ReadableBuffer;)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static readAsStringUtf8(Lio/grpc/internal/ReadableBuffer;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lio/grpc/internal/ReadableBuffers;->readAsString(Lio/grpc/internal/ReadableBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Lio/grpc/internal/ReadableBuffer;
    .locals 1

    new-instance v0, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;

    invoke-direct {v0, p0}, Lio/grpc/internal/ReadableBuffers$ByteReadableBufferWrapper;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static wrap([B)Lio/grpc/internal/ReadableBuffer;
    .locals 3

    new-instance v0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;-><init>([BII)V

    return-object v0
.end method

.method public static wrap([BII)Lio/grpc/internal/ReadableBuffer;
    .locals 1

    new-instance v0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;-><init>([BII)V

    return-object v0
.end method
