.class final enum Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

.field public static final enum CORRUPT:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

.field public static final enum MASKING_KEY:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

.field public static final enum PAYLOAD:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

.field public static final enum READING_FIRST:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

.field public static final enum READING_SECOND:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

.field public static final enum READING_SIZE:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    const-string v1, "READING_FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->READING_FIRST:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    const-string v3, "READING_SECOND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->READING_SECOND:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    new-instance v3, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    const-string v5, "READING_SIZE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->READING_SIZE:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    new-instance v5, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    const-string v7, "MASKING_KEY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->MASKING_KEY:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    new-instance v7, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    const-string v9, "PAYLOAD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->PAYLOAD:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    new-instance v9, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    const-string v11, "CORRUPT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->CORRUPT:Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    const/4 v11, 0x6

    new-array v11, v11, [Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->$VALUES:[Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;
    .locals 1

    const-class v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->$VALUES:[Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http/websocketx/WebSocket08FrameDecoder$State;

    return-object v0
.end method
