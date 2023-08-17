.class final Lio/netty/buffer/CompositeByteBuf$Component;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/CompositeByteBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Component"
.end annotation


# instance fields
.field public adjustment:I

.field public final buf:Lio/netty/buffer/ByteBuf;

.field public endOffset:I

.field public offset:I

.field private slice:Lio/netty/buffer/ByteBuf;

.field public srcAdjustment:I

.field public final srcBuf:Lio/netty/buffer/ByteBuf;


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;IIILio/netty/buffer/ByteBuf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcBuf:Lio/netty/buffer/ByteBuf;

    sub-int/2addr p2, p5

    iput p2, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcAdjustment:I

    iput-object p3, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    sub-int/2addr p4, p5

    iput p4, p0, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    iput p5, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    add-int/2addr p5, p6

    iput p5, p0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    iput-object p7, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public static synthetic access$100(Lio/netty/buffer/CompositeByteBuf$Component;)Lio/netty/buffer/ByteBuf;
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public static synthetic access$102(Lio/netty/buffer/CompositeByteBuf$Component;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    return-object p1
.end method


# virtual methods
.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcBuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public free()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcBuf:Lio/netty/buffer/ByteBuf;

    invoke-interface {v0}, Lio/netty/util/ReferenceCounted;->release()Z

    return-void
.end method

.method public idx(I)I
    .locals 1

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    add-int/2addr p1, v0

    return p1
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcBuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->srcIdx(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .locals 2

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public reposition(I)V
    .locals 2

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v0, p1, v0

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcAdjustment:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcAdjustment:I

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    iput p1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    return-void
.end method

.method public slice()Lio/netty/buffer/ByteBuf;
    .locals 3

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcBuf:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    invoke-virtual {p0, v1}, Lio/netty/buffer/CompositeByteBuf$Component;->srcIdx(I)I

    move-result v1

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->slice:Lio/netty/buffer/ByteBuf;

    :cond_0
    return-object v0
.end method

.method public srcIdx(I)I
    .locals 1

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->srcAdjustment:I

    add-int/2addr p1, v0

    return p1
.end method

.method public transferTo(Lio/netty/buffer/ByteBuf;)V
    .locals 3

    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    invoke-virtual {p0, v1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v1

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    return-void
.end method
