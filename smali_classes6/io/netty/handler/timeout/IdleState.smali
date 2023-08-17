.class public final enum Lio/netty/handler/timeout/IdleState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/timeout/IdleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/timeout/IdleState;

.field public static final enum ALL_IDLE:Lio/netty/handler/timeout/IdleState;

.field public static final enum READER_IDLE:Lio/netty/handler/timeout/IdleState;

.field public static final enum WRITER_IDLE:Lio/netty/handler/timeout/IdleState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/netty/handler/timeout/IdleState;

    const-string v1, "READER_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/timeout/IdleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/timeout/IdleState;->READER_IDLE:Lio/netty/handler/timeout/IdleState;

    new-instance v1, Lio/netty/handler/timeout/IdleState;

    const-string v3, "WRITER_IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/timeout/IdleState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/timeout/IdleState;->WRITER_IDLE:Lio/netty/handler/timeout/IdleState;

    new-instance v3, Lio/netty/handler/timeout/IdleState;

    const-string v5, "ALL_IDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/timeout/IdleState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/timeout/IdleState;->ALL_IDLE:Lio/netty/handler/timeout/IdleState;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/netty/handler/timeout/IdleState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/netty/handler/timeout/IdleState;->$VALUES:[Lio/netty/handler/timeout/IdleState;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/timeout/IdleState;
    .locals 1

    const-class v0, Lio/netty/handler/timeout/IdleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/timeout/IdleState;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/timeout/IdleState;
    .locals 1

    sget-object v0, Lio/netty/handler/timeout/IdleState;->$VALUES:[Lio/netty/handler/timeout/IdleState;

    invoke-virtual {v0}, [Lio/netty/handler/timeout/IdleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/timeout/IdleState;

    return-object v0
.end method
