.class public final enum Lio/netty/handler/codec/socks/SocksRequestType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/socks/SocksRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/socks/SocksRequestType;

.field public static final enum AUTH:Lio/netty/handler/codec/socks/SocksRequestType;

.field public static final enum CMD:Lio/netty/handler/codec/socks/SocksRequestType;

.field public static final enum INIT:Lio/netty/handler/codec/socks/SocksRequestType;

.field public static final enum UNKNOWN:Lio/netty/handler/codec/socks/SocksRequestType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lio/netty/handler/codec/socks/SocksRequestType;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/socks/SocksRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/socks/SocksRequestType;->INIT:Lio/netty/handler/codec/socks/SocksRequestType;

    new-instance v1, Lio/netty/handler/codec/socks/SocksRequestType;

    const-string v3, "AUTH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/socks/SocksRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/socks/SocksRequestType;->AUTH:Lio/netty/handler/codec/socks/SocksRequestType;

    new-instance v3, Lio/netty/handler/codec/socks/SocksRequestType;

    const-string v5, "CMD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/codec/socks/SocksRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/codec/socks/SocksRequestType;->CMD:Lio/netty/handler/codec/socks/SocksRequestType;

    new-instance v5, Lio/netty/handler/codec/socks/SocksRequestType;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/handler/codec/socks/SocksRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/handler/codec/socks/SocksRequestType;->UNKNOWN:Lio/netty/handler/codec/socks/SocksRequestType;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/netty/handler/codec/socks/SocksRequestType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lio/netty/handler/codec/socks/SocksRequestType;->$VALUES:[Lio/netty/handler/codec/socks/SocksRequestType;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/socks/SocksRequestType;
    .locals 1

    const-class v0, Lio/netty/handler/codec/socks/SocksRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/socks/SocksRequestType;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/socks/SocksRequestType;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/socks/SocksRequestType;->$VALUES:[Lio/netty/handler/codec/socks/SocksRequestType;

    invoke-virtual {v0}, [Lio/netty/handler/codec/socks/SocksRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/socks/SocksRequestType;

    return-object v0
.end method
