.class final Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/MessageSizeEstimator$Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/DefaultMessageSizeEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandleImpl"
.end annotation


# instance fields
.field private final unknownSize:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;->unknownSize:I

    return-void
.end method

.method public synthetic constructor <init>(ILio/netty/channel/DefaultMessageSizeEstimator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;-><init>(I)V

    return-void
.end method


# virtual methods
.method public size(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/buffer/ByteBuf;

    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_1

    check-cast p1, Lio/netty/buffer/ByteBufHolder;

    invoke-interface {p1}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lio/netty/channel/FileRegion;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget p1, p0, Lio/netty/channel/DefaultMessageSizeEstimator$HandleImpl;->unknownSize:I

    return p1
.end method
