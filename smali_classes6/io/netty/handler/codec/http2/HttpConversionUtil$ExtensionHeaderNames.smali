.class public final enum Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/HttpConversionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtensionHeaderNames"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

.field public static final enum PATH:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

.field public static final enum SCHEME:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

.field public static final enum STREAM_DEPENDENCY_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

.field public static final enum STREAM_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

.field public static final enum STREAM_PROMISE_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

.field public static final enum STREAM_WEIGHT:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;


# instance fields
.field private final text:Lio/netty/util/AsciiString;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    const-string v1, "STREAM_ID"

    const/4 v2, 0x0

    const-string v3, "x-http2-stream-id"

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    new-instance v1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    const-string v3, "SCHEME"

    const/4 v4, 0x1

    const-string v5, "x-http2-scheme"

    invoke-direct {v1, v3, v4, v5}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->SCHEME:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    new-instance v3, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    const-string v5, "PATH"

    const/4 v6, 0x2

    const-string v7, "x-http2-path"

    invoke-direct {v3, v5, v6, v7}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->PATH:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    new-instance v5, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    const-string v7, "STREAM_PROMISE_ID"

    const/4 v8, 0x3

    const-string v9, "x-http2-stream-promise-id"

    invoke-direct {v5, v7, v8, v9}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_PROMISE_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    new-instance v7, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    const-string v9, "STREAM_DEPENDENCY_ID"

    const/4 v10, 0x4

    const-string v11, "x-http2-stream-dependency-id"

    invoke-direct {v7, v9, v10, v11}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_DEPENDENCY_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    new-instance v9, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    const-string v11, "STREAM_WEIGHT"

    const/4 v12, 0x5

    const-string v13, "x-http2-stream-weight"

    invoke-direct {v9, v11, v12, v13}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_WEIGHT:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    const/4 v11, 0x6

    new-array v11, v11, [Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->$VALUES:[Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text:Lio/netty/util/AsciiString;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;
    .locals 1

    const-class v0, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->$VALUES:[Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    return-object v0
.end method


# virtual methods
.method public text()Lio/netty/util/AsciiString;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text:Lio/netty/util/AsciiString;

    return-object v0
.end method
