.class public final enum Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

.field public static final enum FAILURE:Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

.field public static final enum READ_DOMAIN:Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

.field public static final enum READ_USERID:Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

.field public static final enum START:Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

.field public static final enum SUCCESS:Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;->START:Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    new-instance v1, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    const-string v3, "READ_USERID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;->READ_USERID:Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    new-instance v3, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    const-string v5, "READ_DOMAIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;->READ_DOMAIN:Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    new-instance v5, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    const-string v7, "SUCCESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;->SUCCESS:Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    new-instance v7, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    const-string v9, "FAILURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;->FAILURE:Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;->$VALUES:[Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;
    .locals 1

    const-class v0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;->$VALUES:[Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    invoke-virtual {v0}, [Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/socksx/v4/Socks4ServerDecoder$State;

    return-object v0
.end method
