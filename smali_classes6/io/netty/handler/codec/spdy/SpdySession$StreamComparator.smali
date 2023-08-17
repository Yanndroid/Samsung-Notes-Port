.class final Lio/netty/handler/codec/spdy/SpdySession$StreamComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/spdy/SpdySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StreamComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/spdy/SpdySession;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdySession;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamComparator;->this$0:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamComparator;->this$0:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-static {v0}, Lio/netty/handler/codec/spdy/SpdySession;->access$000(Lio/netty/handler/codec/spdy/SpdySession;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/SpdySession$StreamState;

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdySession$StreamComparator;->this$0:Lio/netty/handler/codec/spdy/SpdySession;

    invoke-static {v1}, Lio/netty/handler/codec/spdy/SpdySession;->access$000(Lio/netty/handler/codec/spdy/SpdySession;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/spdy/SpdySession$StreamState;

    invoke-virtual {v0}, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->getPriority()B

    move-result v0

    invoke-virtual {v1}, Lio/netty/handler/codec/spdy/SpdySession$StreamState;->getPriority()B

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/spdy/SpdySession$StreamComparator;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
