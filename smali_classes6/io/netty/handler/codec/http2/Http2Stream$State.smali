.class public final enum Lio/netty/handler/codec/http2/Http2Stream$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http2/Http2Stream$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http2/Http2Stream$State;

.field public static final enum CLOSED:Lio/netty/handler/codec/http2/Http2Stream$State;

.field public static final enum HALF_CLOSED_LOCAL:Lio/netty/handler/codec/http2/Http2Stream$State;

.field public static final enum HALF_CLOSED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

.field public static final enum IDLE:Lio/netty/handler/codec/http2/Http2Stream$State;

.field public static final enum OPEN:Lio/netty/handler/codec/http2/Http2Stream$State;

.field public static final enum RESERVED_LOCAL:Lio/netty/handler/codec/http2/Http2Stream$State;

.field public static final enum RESERVED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;


# instance fields
.field private final localSideOpen:Z

.field private final remoteSideOpen:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lio/netty/handler/codec/http2/Http2Stream$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lio/netty/handler/codec/http2/Http2Stream$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->IDLE:Lio/netty/handler/codec/http2/Http2Stream$State;

    new-instance v1, Lio/netty/handler/codec/http2/Http2Stream$State;

    const-string v3, "RESERVED_LOCAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2, v2}, Lio/netty/handler/codec/http2/Http2Stream$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lio/netty/handler/codec/http2/Http2Stream$State;->RESERVED_LOCAL:Lio/netty/handler/codec/http2/Http2Stream$State;

    new-instance v3, Lio/netty/handler/codec/http2/Http2Stream$State;

    const-string v5, "RESERVED_REMOTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2, v2}, Lio/netty/handler/codec/http2/Http2Stream$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Lio/netty/handler/codec/http2/Http2Stream$State;->RESERVED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

    new-instance v5, Lio/netty/handler/codec/http2/Http2Stream$State;

    const-string v7, "OPEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4, v4}, Lio/netty/handler/codec/http2/Http2Stream$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v5, Lio/netty/handler/codec/http2/Http2Stream$State;->OPEN:Lio/netty/handler/codec/http2/Http2Stream$State;

    new-instance v7, Lio/netty/handler/codec/http2/Http2Stream$State;

    const-string v9, "HALF_CLOSED_LOCAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2, v4}, Lio/netty/handler/codec/http2/Http2Stream$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v7, Lio/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_LOCAL:Lio/netty/handler/codec/http2/Http2Stream$State;

    new-instance v9, Lio/netty/handler/codec/http2/Http2Stream$State;

    const-string v11, "HALF_CLOSED_REMOTE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v4, v2}, Lio/netty/handler/codec/http2/Http2Stream$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v9, Lio/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

    new-instance v11, Lio/netty/handler/codec/http2/Http2Stream$State;

    const-string v13, "CLOSED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v2, v2}, Lio/netty/handler/codec/http2/Http2Stream$State;-><init>(Ljava/lang/String;IZZ)V

    sput-object v11, Lio/netty/handler/codec/http2/Http2Stream$State;->CLOSED:Lio/netty/handler/codec/http2/Http2Stream$State;

    const/4 v13, 0x7

    new-array v13, v13, [Lio/netty/handler/codec/http2/Http2Stream$State;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lio/netty/handler/codec/http2/Http2Stream$State;->$VALUES:[Lio/netty/handler/codec/http2/Http2Stream$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lio/netty/handler/codec/http2/Http2Stream$State;->localSideOpen:Z

    iput-boolean p4, p0, Lio/netty/handler/codec/http2/Http2Stream$State;->remoteSideOpen:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Stream$State;
    .locals 1

    const-class v0, Lio/netty/handler/codec/http2/Http2Stream$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http2/Http2Stream$State;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/http2/Http2Stream$State;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->$VALUES:[Lio/netty/handler/codec/http2/Http2Stream$State;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http2/Http2Stream$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http2/Http2Stream$State;

    return-object v0
.end method


# virtual methods
.method public localSideOpen()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2Stream$State;->localSideOpen:Z

    return v0
.end method

.method public remoteSideOpen()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2Stream$State;->remoteSideOpen:Z

    return v0
.end method
