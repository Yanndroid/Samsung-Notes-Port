.class final Lio/grpc/netty/GrpcHttp2OutboundHeaders;
.super Lio/grpc/netty/AbstractHttp2Headers;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;
    }
.end annotation


# static fields
.field private static final EMPTY:[Lio/netty/util/AsciiString;


# instance fields
.field private final normalHeaders:[Lio/netty/util/AsciiString;

.field private final preHeaders:[Lio/netty/util/AsciiString;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lio/netty/util/AsciiString;

    sput-object v0, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->EMPTY:[Lio/netty/util/AsciiString;

    return-void
.end method

.method private constructor <init>([Lio/netty/util/AsciiString;[[B)V
    .locals 5

    invoke-direct {p0}, Lio/grpc/netty/AbstractHttp2Headers;-><init>()V

    array-length v0, p2

    new-array v0, v0, [Lio/netty/util/AsciiString;

    iput-object v0, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->normalHeaders:[Lio/netty/util/AsciiString;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->normalHeaders:[Lio/netty/util/AsciiString;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lio/netty/util/AsciiString;

    aget-object v4, p2, v1

    invoke-direct {v3, v4, v0}, Lio/netty/util/AsciiString;-><init>([BZ)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->preHeaders:[Lio/netty/util/AsciiString;

    return-void
.end method

.method public static synthetic access$100(Lio/grpc/netty/GrpcHttp2OutboundHeaders;)[Lio/netty/util/AsciiString;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->preHeaders:[Lio/netty/util/AsciiString;

    return-object p0
.end method

.method public static synthetic access$200(Lio/grpc/netty/GrpcHttp2OutboundHeaders;)[Lio/netty/util/AsciiString;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->normalHeaders:[Lio/netty/util/AsciiString;

    return-object p0
.end method

.method public static clientRequestHeaders([[BLio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)Lio/grpc/netty/GrpcHttp2OutboundHeaders;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lio/netty/util/AsciiString;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->AUTHORITY:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    sget-object p1, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PATH:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    sget-object p1, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->METHOD:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    const/4 p1, 0x5

    aput-object p3, v0, p1

    sget-object p1, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->SCHEME:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v0, p2

    const/4 p1, 0x7

    aput-object p4, v0, p1

    sget-object p1, Lio/grpc/netty/Utils;->CONTENT_TYPE_HEADER:Lio/netty/util/AsciiString;

    const/16 p2, 0x8

    aput-object p1, v0, p2

    sget-object p1, Lio/grpc/netty/Utils;->CONTENT_TYPE_GRPC:Lio/netty/util/AsciiString;

    const/16 p2, 0x9

    aput-object p1, v0, p2

    sget-object p1, Lio/grpc/netty/Utils;->TE_HEADER:Lio/netty/util/AsciiString;

    const/16 p2, 0xa

    aput-object p1, v0, p2

    sget-object p1, Lio/grpc/netty/Utils;->TE_TRAILERS:Lio/netty/util/AsciiString;

    const/16 p2, 0xb

    aput-object p1, v0, p2

    sget-object p1, Lio/grpc/netty/Utils;->USER_AGENT:Lio/netty/util/AsciiString;

    const/16 p2, 0xc

    aput-object p1, v0, p2

    const/16 p1, 0xd

    aput-object p5, v0, p1

    new-instance p1, Lio/grpc/netty/GrpcHttp2OutboundHeaders;

    invoke-direct {p1, v0, p0}, Lio/grpc/netty/GrpcHttp2OutboundHeaders;-><init>([Lio/netty/util/AsciiString;[[B)V

    return-object p1
.end method

.method public static serverResponseHeaders([[B)Lio/grpc/netty/GrpcHttp2OutboundHeaders;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/netty/util/AsciiString;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->STATUS:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/netty/Utils;->STATUS_OK:Lio/netty/util/AsciiString;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/netty/Utils;->CONTENT_TYPE_HEADER:Lio/netty/util/AsciiString;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/grpc/netty/Utils;->CONTENT_TYPE_GRPC:Lio/netty/util/AsciiString;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lio/grpc/netty/GrpcHttp2OutboundHeaders;

    invoke-direct {v1, v0, p0}, Lio/grpc/netty/GrpcHttp2OutboundHeaders;-><init>([Lio/netty/util/AsciiString;[[B)V

    return-object v1
.end method

.method public static serverResponseTrailers([[B)Lio/grpc/netty/GrpcHttp2OutboundHeaders;
    .locals 2

    new-instance v0, Lio/grpc/netty/GrpcHttp2OutboundHeaders;

    sget-object v1, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->EMPTY:[Lio/netty/util/AsciiString;

    invoke-direct {v0, v1, p0}, Lio/grpc/netty/GrpcHttp2OutboundHeaders;-><init>([Lio/netty/util/AsciiString;[[B)V

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/GrpcHttp2OutboundHeaders$Itr;-><init>(Lio/grpc/netty/GrpcHttp2OutboundHeaders;Lio/grpc/netty/GrpcHttp2OutboundHeaders$1;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->normalHeaders:[Lio/netty/util/AsciiString;

    array-length v0, v0

    iget-object v1, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->preHeaders:[Lio/netty/util/AsciiString;

    array-length v1, v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public status()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->preHeaders:[Lio/netty/util/AsciiString;

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->STATUS:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->preHeaders:[Lio/netty/util/AsciiString;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lio/grpc/netty/GrpcHttp2OutboundHeaders;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/netty/GrpcHttp2OutboundHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
