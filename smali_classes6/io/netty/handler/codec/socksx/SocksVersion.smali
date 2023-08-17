.class public final enum Lio/netty/handler/codec/socksx/SocksVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/socksx/SocksVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/socksx/SocksVersion;

.field public static final enum SOCKS4a:Lio/netty/handler/codec/socksx/SocksVersion;

.field public static final enum SOCKS5:Lio/netty/handler/codec/socksx/SocksVersion;

.field public static final enum UNKNOWN:Lio/netty/handler/codec/socksx/SocksVersion;


# instance fields
.field private final b:B


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lio/netty/handler/codec/socksx/SocksVersion;

    const-string v1, "SOCKS4a"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/socksx/SocksVersion;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/netty/handler/codec/socksx/SocksVersion;->SOCKS4a:Lio/netty/handler/codec/socksx/SocksVersion;

    new-instance v1, Lio/netty/handler/codec/socksx/SocksVersion;

    const-string v3, "SOCKS5"

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-direct {v1, v3, v4, v5}, Lio/netty/handler/codec/socksx/SocksVersion;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lio/netty/handler/codec/socksx/SocksVersion;->SOCKS5:Lio/netty/handler/codec/socksx/SocksVersion;

    new-instance v3, Lio/netty/handler/codec/socksx/SocksVersion;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lio/netty/handler/codec/socksx/SocksVersion;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lio/netty/handler/codec/socksx/SocksVersion;->UNKNOWN:Lio/netty/handler/codec/socksx/SocksVersion;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/netty/handler/codec/socksx/SocksVersion;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/netty/handler/codec/socksx/SocksVersion;->$VALUES:[Lio/netty/handler/codec/socksx/SocksVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lio/netty/handler/codec/socksx/SocksVersion;->b:B

    return-void
.end method

.method public static valueOf(B)Lio/netty/handler/codec/socksx/SocksVersion;
    .locals 2

    sget-object v0, Lio/netty/handler/codec/socksx/SocksVersion;->SOCKS4a:Lio/netty/handler/codec/socksx/SocksVersion;

    invoke-virtual {v0}, Lio/netty/handler/codec/socksx/SocksVersion;->byteValue()B

    move-result v1

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/socksx/SocksVersion;->SOCKS5:Lio/netty/handler/codec/socksx/SocksVersion;

    invoke-virtual {v0}, Lio/netty/handler/codec/socksx/SocksVersion;->byteValue()B

    move-result v1

    if-ne p0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object p0, Lio/netty/handler/codec/socksx/SocksVersion;->UNKNOWN:Lio/netty/handler/codec/socksx/SocksVersion;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/socksx/SocksVersion;
    .locals 1

    const-class v0, Lio/netty/handler/codec/socksx/SocksVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/socksx/SocksVersion;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/socksx/SocksVersion;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/socksx/SocksVersion;->$VALUES:[Lio/netty/handler/codec/socksx/SocksVersion;

    invoke-virtual {v0}, [Lio/netty/handler/codec/socksx/SocksVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/socksx/SocksVersion;

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    iget-byte v0, p0, Lio/netty/handler/codec/socksx/SocksVersion;->b:B

    return v0
.end method
