.class public final Lio/netty/handler/codec/Delimiters;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lineDelimiter()[Lio/netty/buffer/ByteBuf;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lio/netty/buffer/ByteBuf;

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    new-array v3, v0, [B

    const/16 v4, 0xa

    aput-byte v4, v3, v2

    invoke-static {v3}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    aput-object v2, v1, v0

    return-object v1

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public static nulDelimiter()[Lio/netty/buffer/ByteBuf;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Lio/netty/buffer/ByteBuf;

    new-array v0, v0, [B

    const/4 v2, 0x0

    aput-byte v2, v0, v2

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1
.end method
