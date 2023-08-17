.class final Lio/netty/buffer/FixedCompositeByteBuf$Component;
.super Lio/netty/buffer/WrappedByteBuf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/FixedCompositeByteBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Component"
.end annotation


# instance fields
.field private final endOffset:I

.field private final index:I

.field private final offset:I


# direct methods
.method public constructor <init>(IILio/netty/buffer/ByteBuf;)V
    .locals 0

    invoke-direct {p0, p3}, Lio/netty/buffer/WrappedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    iput p1, p0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->index:I

    iput p2, p0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->offset:I

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->endOffset:I

    return-void
.end method

.method public static synthetic access$000(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I
    .locals 0

    iget p0, p0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->offset:I

    return p0
.end method

.method public static synthetic access$100(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I
    .locals 0

    iget p0, p0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->endOffset:I

    return p0
.end method

.method public static synthetic access$200(Lio/netty/buffer/FixedCompositeByteBuf$Component;)I
    .locals 0

    iget p0, p0, Lio/netty/buffer/FixedCompositeByteBuf$Component;->index:I

    return p0
.end method
