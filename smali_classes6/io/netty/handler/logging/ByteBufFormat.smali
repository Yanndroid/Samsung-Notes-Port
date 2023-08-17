.class public final enum Lio/netty/handler/logging/ByteBufFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/logging/ByteBufFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/logging/ByteBufFormat;

.field public static final enum HEX_DUMP:Lio/netty/handler/logging/ByteBufFormat;

.field public static final enum SIMPLE:Lio/netty/handler/logging/ByteBufFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/netty/handler/logging/ByteBufFormat;

    const-string v1, "SIMPLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/logging/ByteBufFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/logging/ByteBufFormat;->SIMPLE:Lio/netty/handler/logging/ByteBufFormat;

    new-instance v1, Lio/netty/handler/logging/ByteBufFormat;

    const-string v3, "HEX_DUMP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/logging/ByteBufFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/logging/ByteBufFormat;->HEX_DUMP:Lio/netty/handler/logging/ByteBufFormat;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/netty/handler/logging/ByteBufFormat;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lio/netty/handler/logging/ByteBufFormat;->$VALUES:[Lio/netty/handler/logging/ByteBufFormat;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/logging/ByteBufFormat;
    .locals 1

    const-class v0, Lio/netty/handler/logging/ByteBufFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/logging/ByteBufFormat;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/logging/ByteBufFormat;
    .locals 1

    sget-object v0, Lio/netty/handler/logging/ByteBufFormat;->$VALUES:[Lio/netty/handler/logging/ByteBufFormat;

    invoke-virtual {v0}, [Lio/netty/handler/logging/ByteBufFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/logging/ByteBufFormat;

    return-object v0
.end method
