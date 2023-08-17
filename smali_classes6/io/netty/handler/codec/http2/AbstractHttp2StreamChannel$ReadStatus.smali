.class final enum Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

.field public static final enum IDLE:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

.field public static final enum IN_PROGRESS:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

.field public static final enum REQUESTED:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;->IDLE:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    new-instance v1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    const-string v3, "IN_PROGRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;->IN_PROGRESS:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    new-instance v3, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    const-string v5, "REQUESTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;->REQUESTED:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;->$VALUES:[Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;
    .locals 1

    const-class v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;->$VALUES:[Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$ReadStatus;

    return-object v0
.end method
