.class public final enum Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncoderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

.field public static final enum HTML5:Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

.field public static final enum RFC1738:Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

.field public static final enum RFC3986:Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    const-string v1, "RFC1738"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;->RFC1738:Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    new-instance v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    const-string v3, "RFC3986"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;->RFC3986:Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    new-instance v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    const-string v5, "HTML5"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;->HTML5:Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;->$VALUES:[Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

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

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;
    .locals 1

    const-class v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;->$VALUES:[Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http/multipart/HttpPostRequestEncoder$EncoderMode;

    return-object v0
.end method