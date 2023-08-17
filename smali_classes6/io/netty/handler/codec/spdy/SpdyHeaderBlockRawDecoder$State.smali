.class final enum Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum END_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum READ_NAME:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum READ_NAME_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum READ_NUM_HEADERS:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum READ_VALUE:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum READ_VALUE_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum SKIP_NAME:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

.field public static final enum SKIP_VALUE:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v1, "READ_NUM_HEADERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NUM_HEADERS:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    new-instance v1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v3, "READ_NAME_LENGTH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NAME_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    new-instance v3, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v5, "READ_NAME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NAME:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    new-instance v5, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v7, "SKIP_NAME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->SKIP_NAME:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    new-instance v7, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v9, "READ_VALUE_LENGTH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_VALUE_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    new-instance v9, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v11, "READ_VALUE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_VALUE:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    new-instance v11, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v13, "SKIP_VALUE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->SKIP_VALUE:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    new-instance v13, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v15, "END_HEADER_BLOCK"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->END_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    new-instance v15, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const-string v14, "ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    const/16 v14, 0x9

    new-array v14, v14, [Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->$VALUES:[Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;
    .locals 1

    const-class v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->$VALUES:[Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    invoke-virtual {v0}, [Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    return-object v0
.end method
