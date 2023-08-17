.class public final enum Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/socks/SocksCmdResponseDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

.field public static final enum CHECK_PROTOCOL_VERSION:Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

.field public static final enum READ_CMD_ADDRESS:Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

.field public static final enum READ_CMD_HEADER:Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    const-string v1, "CHECK_PROTOCOL_VERSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;->CHECK_PROTOCOL_VERSION:Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    new-instance v1, Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    const-string v3, "READ_CMD_HEADER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;->READ_CMD_HEADER:Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    new-instance v3, Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    const-string v5, "READ_CMD_ADDRESS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;->READ_CMD_ADDRESS:Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;->$VALUES:[Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;
    .locals 1

    const-class v0, Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;->$VALUES:[Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    invoke-virtual {v0}, [Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/socks/SocksCmdResponseDecoder$State;

    return-object v0
.end method
