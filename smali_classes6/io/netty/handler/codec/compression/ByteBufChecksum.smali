.class abstract Lio/netty/handler/codec/compression/ByteBufChecksum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/zip/Checksum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/ByteBufChecksum$SlowByteBufChecksum;,
        Lio/netty/handler/codec/compression/ByteBufChecksum$ReflectiveByteBufChecksum;
    }
.end annotation


# static fields
.field private static final ADLER32_UPDATE_METHOD:Ljava/lang/reflect/Method;

.field private static final CRC32_UPDATE_METHOD:Ljava/lang/reflect/Method;


# instance fields
.field private final updateProcessor:Lio/netty/util/ByteProcessor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    invoke-static {v0}, Lio/netty/handler/codec/compression/ByteBufChecksum;->updateByteBuffer(Ljava/util/zip/Checksum;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/compression/ByteBufChecksum;->ADLER32_UPDATE_METHOD:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-static {v0}, Lio/netty/handler/codec/compression/ByteBufChecksum;->updateByteBuffer(Ljava/util/zip/Checksum;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/compression/ByteBufChecksum;->CRC32_UPDATE_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/netty/handler/codec/compression/ByteBufChecksum$1;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/compression/ByteBufChecksum$1;-><init>(Lio/netty/handler/codec/compression/ByteBufChecksum;)V

    iput-object v0, p0, Lio/netty/handler/codec/compression/ByteBufChecksum;->updateProcessor:Lio/netty/util/ByteProcessor;

    return-void
.end method

.method private static updateByteBuffer(Ljava/util/zip/Checksum;)Ljava/lang/reflect/Method;
    .locals 7

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "update"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    return-object v1
.end method

.method public static wrapChecksum(Ljava/util/zip/Checksum;)Lio/netty/handler/codec/compression/ByteBufChecksum;
    .locals 2

    const-string v0, "checksum"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lio/netty/handler/codec/compression/ByteBufChecksum;

    if-eqz v0, :cond_0

    check-cast p0, Lio/netty/handler/codec/compression/ByteBufChecksum;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/util/zip/Adler32;

    if-eqz v0, :cond_1

    sget-object v0, Lio/netty/handler/codec/compression/ByteBufChecksum;->ADLER32_UPDATE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    new-instance v1, Lio/netty/handler/codec/compression/ByteBufChecksum$ReflectiveByteBufChecksum;

    invoke-direct {v1, p0, v0}, Lio/netty/handler/codec/compression/ByteBufChecksum$ReflectiveByteBufChecksum;-><init>(Ljava/util/zip/Checksum;Ljava/lang/reflect/Method;)V

    return-object v1

    :cond_1
    instance-of v0, p0, Ljava/util/zip/CRC32;

    if-eqz v0, :cond_2

    sget-object v0, Lio/netty/handler/codec/compression/ByteBufChecksum;->CRC32_UPDATE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    new-instance v1, Lio/netty/handler/codec/compression/ByteBufChecksum$ReflectiveByteBufChecksum;

    invoke-direct {v1, p0, v0}, Lio/netty/handler/codec/compression/ByteBufChecksum$ReflectiveByteBufChecksum;-><init>(Ljava/util/zip/Checksum;Ljava/lang/reflect/Method;)V

    return-object v1

    :cond_2
    new-instance v0, Lio/netty/handler/codec/compression/ByteBufChecksum$SlowByteBufChecksum;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/compression/ByteBufChecksum$SlowByteBufChecksum;-><init>(Ljava/util/zip/Checksum;)V

    return-object v0
.end method


# virtual methods
.method public update(Lio/netty/buffer/ByteBuf;II)V
    .locals 1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result p1

    add-int/2addr p1, p2

    invoke-interface {p0, v0, p1, p3}, Ljava/util/zip/Checksum;->update([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/compression/ByteBufChecksum;->updateProcessor:Lio/netty/util/ByteProcessor;

    invoke-virtual {p1, p2, p3, v0}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    :goto_0
    return-void
.end method
