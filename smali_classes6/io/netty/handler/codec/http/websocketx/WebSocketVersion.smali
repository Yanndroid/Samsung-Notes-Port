.class public final enum Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http/websocketx/WebSocketVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum UNKNOWN:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum V00:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum V07:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum V08:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum V13:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;


# instance fields
.field private final headerValue:Lio/netty/util/AsciiString;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v1, ""

    invoke-static {v1}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;ILio/netty/util/AsciiString;)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->UNKNOWN:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v2, "0"

    invoke-static {v2}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v2

    const-string v4, "V00"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;ILio/netty/util/AsciiString;)V

    sput-object v1, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    new-instance v2, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v4, "7"

    invoke-static {v4}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v4

    const-string v6, "V07"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;ILio/netty/util/AsciiString;)V

    sput-object v2, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V07:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    new-instance v4, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v6, "8"

    invoke-static {v6}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v6

    const-string v8, "V08"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;ILio/netty/util/AsciiString;)V

    sput-object v4, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    new-instance v6, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v8, "13"

    invoke-static {v8}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v8

    const-string v10, "V13"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;ILio/netty/util/AsciiString;)V

    sput-object v6, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    const/4 v8, 0x5

    new-array v8, v8, [Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    sput-object v8, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->$VALUES:[Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILio/netty/util/AsciiString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/AsciiString;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->headerValue:Lio/netty/util/AsciiString;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .locals 1

    const-class v0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->$VALUES:[Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-object v0
.end method


# virtual methods
.method public toAsciiString()Lio/netty/util/AsciiString;
    .locals 3

    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->UNKNOWN:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-eq p0, v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->headerValue:Lio/netty/util/AsciiString;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown web socket version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toHttpHeaderValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->toAsciiString()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
