.class final Lio/netty/handler/codec/socks/SocksCommonUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final UNKNOWN_SOCKS_REQUEST:Lio/netty/handler/codec/socks/SocksRequest;

.field public static final UNKNOWN_SOCKS_RESPONSE:Lio/netty/handler/codec/socks/SocksResponse;

.field private static final ipv6hextetSeparator:C = ':'


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/socks/UnknownSocksRequest;

    invoke-direct {v0}, Lio/netty/handler/codec/socks/UnknownSocksRequest;-><init>()V

    sput-object v0, Lio/netty/handler/codec/socks/SocksCommonUtils;->UNKNOWN_SOCKS_REQUEST:Lio/netty/handler/codec/socks/SocksRequest;

    new-instance v0, Lio/netty/handler/codec/socks/UnknownSocksResponse;

    invoke-direct {v0}, Lio/netty/handler/codec/socks/UnknownSocksResponse;-><init>()V

    sput-object v0, Lio/netty/handler/codec/socks/SocksCommonUtils;->UNKNOWN_SOCKS_RESPONSE:Lio/netty/handler/codec/socks/SocksResponse;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHextet(Ljava/lang/StringBuilder;[BI)V
    .locals 1

    shl-int/lit8 p2, p2, 0x1

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lio/netty/util/internal/StringUtil;->toHexString(Ljava/lang/Appendable;[BII)Ljava/lang/Appendable;

    return-void
.end method

.method public static ipv6toStr([B)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, p0, v1, v2}, Lio/netty/handler/codec/socks/SocksCommonUtils;->ipv6toStr(Ljava/lang/StringBuilder;[BII)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static ipv6toStr(Ljava/lang/StringBuilder;[BII)V
    .locals 1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/socks/SocksCommonUtils;->appendHextet(Ljava/lang/StringBuilder;[BI)V

    if-ge p2, p3, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static readUsAscii(Lio/netty/buffer/ByteBuf;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    sget-object v1, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, p1, v1}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return-object v0
.end method
