.class final Lio/netty/buffer/CompositeByteBuf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/buffer/CompositeByteBuf$ByteWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/CompositeByteBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic isEmpty(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf$1;->isEmpty([B)Z

    move-result p1

    return p1
.end method

.method public isEmpty([B)Z
    .locals 0

    array-length p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic wrap(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf$1;->wrap([B)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public wrap([B)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-static {p1}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method
