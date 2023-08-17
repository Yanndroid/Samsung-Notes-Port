.class final Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;
.super Lio/netty/handler/codec/http2/HpackHeaderField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/HpackEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeaderEntry"
.end annotation


# instance fields
.field public after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

.field public before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

.field public hash:I

.field public index:I

.field public next:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http2/HpackHeaderField;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput p4, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->index:I

    iput p1, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->hash:I

    iput-object p5, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    return-void
.end method

.method public static synthetic access$000(Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->addBefore(Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;)V

    return-void
.end method

.method public static synthetic access$100(Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->remove()V

    return-void
.end method

.method private addBefore(Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iget-object p1, p1, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput-object p1, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput-object p0, p1, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iget-object p1, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput-object p0, p1, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    return-void
.end method

.method private remove()V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput-object v1, v0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput-object v0, v1, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->before:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$HeaderEntry;

    return-void
.end method
