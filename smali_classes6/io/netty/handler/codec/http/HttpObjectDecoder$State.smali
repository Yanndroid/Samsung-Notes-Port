.class final enum Lio/netty/handler/codec/http/HttpObjectDecoder$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpObjectDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http/HttpObjectDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum BAD_MESSAGE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_CHUNKED_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_CHUNK_DELIMITER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_CHUNK_FOOTER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_HEADER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_INITIAL:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field public static final enum UPGRADED:Lio/netty/handler/codec/http/HttpObjectDecoder$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v1, "SKIP_CONTROL_CHARS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    new-instance v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v3, "READ_INITIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_INITIAL:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    new-instance v3, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v5, "READ_HEADER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_HEADER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    new-instance v5, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v7, "READ_VARIABLE_LENGTH_CONTENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    new-instance v7, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v9, "READ_FIXED_LENGTH_CONTENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    new-instance v9, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v11, "READ_CHUNK_SIZE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    new-instance v11, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v13, "READ_CHUNKED_CONTENT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNKED_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    new-instance v13, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v15, "READ_CHUNK_DELIMITER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_DELIMITER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    new-instance v15, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v14, "READ_CHUNK_FOOTER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_FOOTER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    new-instance v14, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v12, "BAD_MESSAGE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->BAD_MESSAGE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    new-instance v12, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const-string v10, "UPGRADED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->UPGRADED:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    const/16 v10, 0xb

    new-array v10, v10, [Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->$VALUES:[Lio/netty/handler/codec/http/HttpObjectDecoder$State;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    .locals 1

    const-class v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->$VALUES:[Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http/HttpObjectDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-object v0
.end method
