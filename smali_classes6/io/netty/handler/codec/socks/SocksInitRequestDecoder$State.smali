.class public final enum Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/socks/SocksInitRequestDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;

.field public static final enum CHECK_PROTOCOL_VERSION:Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;

.field public static final enum READ_AUTH_SCHEMES:Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;

    const-string v1, "CHECK_PROTOCOL_VERSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;->CHECK_PROTOCOL_VERSION:Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;

    new-instance v1, Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;

    const-string v3, "READ_AUTH_SCHEMES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;->READ_AUTH_SCHEMES:Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;->$VALUES:[Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;
    .locals 1

    const-class v0, Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;->$VALUES:[Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;

    invoke-virtual {v0}, [Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/socks/SocksInitRequestDecoder$State;

    return-object v0
.end method
