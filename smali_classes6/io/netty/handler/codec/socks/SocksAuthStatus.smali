.class public final enum Lio/netty/handler/codec/socks/SocksAuthStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/socks/SocksAuthStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/socks/SocksAuthStatus;

.field public static final enum FAILURE:Lio/netty/handler/codec/socks/SocksAuthStatus;

.field public static final enum SUCCESS:Lio/netty/handler/codec/socks/SocksAuthStatus;


# instance fields
.field private final b:B


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lio/netty/handler/codec/socks/SocksAuthStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/netty/handler/codec/socks/SocksAuthStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lio/netty/handler/codec/socks/SocksAuthStatus;->SUCCESS:Lio/netty/handler/codec/socks/SocksAuthStatus;

    new-instance v1, Lio/netty/handler/codec/socks/SocksAuthStatus;

    const-string v3, "FAILURE"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Lio/netty/handler/codec/socks/SocksAuthStatus;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lio/netty/handler/codec/socks/SocksAuthStatus;->FAILURE:Lio/netty/handler/codec/socks/SocksAuthStatus;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/netty/handler/codec/socks/SocksAuthStatus;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lio/netty/handler/codec/socks/SocksAuthStatus;->$VALUES:[Lio/netty/handler/codec/socks/SocksAuthStatus;

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

    iput-byte p3, p0, Lio/netty/handler/codec/socks/SocksAuthStatus;->b:B

    return-void
.end method

.method public static fromByte(B)Lio/netty/handler/codec/socks/SocksAuthStatus;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lio/netty/handler/codec/socks/SocksAuthStatus;->valueOf(B)Lio/netty/handler/codec/socks/SocksAuthStatus;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(B)Lio/netty/handler/codec/socks/SocksAuthStatus;
    .locals 5

    invoke-static {}, Lio/netty/handler/codec/socks/SocksAuthStatus;->values()[Lio/netty/handler/codec/socks/SocksAuthStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-byte v4, v3, Lio/netty/handler/codec/socks/SocksAuthStatus;->b:B

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lio/netty/handler/codec/socks/SocksAuthStatus;->FAILURE:Lio/netty/handler/codec/socks/SocksAuthStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/socks/SocksAuthStatus;
    .locals 1

    const-class v0, Lio/netty/handler/codec/socks/SocksAuthStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/socks/SocksAuthStatus;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/socks/SocksAuthStatus;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/socks/SocksAuthStatus;->$VALUES:[Lio/netty/handler/codec/socks/SocksAuthStatus;

    invoke-virtual {v0}, [Lio/netty/handler/codec/socks/SocksAuthStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/socks/SocksAuthStatus;

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    iget-byte v0, p0, Lio/netty/handler/codec/socks/SocksAuthStatus;->b:B

    return v0
.end method
