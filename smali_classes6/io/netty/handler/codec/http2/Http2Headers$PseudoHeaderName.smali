.class public final enum Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PseudoHeaderName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

.field public static final enum AUTHORITY:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

.field public static final enum METHOD:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

.field public static final enum PATH:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

.field public static final enum PROTOCOL:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

.field private static final PSEUDO_HEADERS:Lio/netty/handler/codec/http2/CharSequenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/http2/CharSequenceMap<",
            "Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;",
            ">;"
        }
    .end annotation
.end field

.field private static final PSEUDO_HEADER_PREFIX:C = ':'

.field private static final PSEUDO_HEADER_PREFIX_BYTE:B = 0x3at

.field public static final enum SCHEME:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

.field public static final enum STATUS:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;


# instance fields
.field private final requestOnly:Z

.field private final value:Lio/netty/util/AsciiString;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    const-string v1, "METHOD"

    const/4 v2, 0x0

    const-string v3, ":method"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->METHOD:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    new-instance v1, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    const-string v3, "SCHEME"

    const-string v5, ":scheme"

    invoke-direct {v1, v3, v4, v5, v4}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->SCHEME:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    new-instance v3, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    const-string v5, "AUTHORITY"

    const/4 v6, 0x2

    const-string v7, ":authority"

    invoke-direct {v3, v5, v6, v7, v4}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->AUTHORITY:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    new-instance v5, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    const-string v7, "PATH"

    const/4 v8, 0x3

    const-string v9, ":path"

    invoke-direct {v5, v7, v8, v9, v4}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v5, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PATH:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    new-instance v7, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    const-string v9, "STATUS"

    const/4 v10, 0x4

    const-string v11, ":status"

    invoke-direct {v7, v9, v10, v11, v2}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v7, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->STATUS:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    new-instance v9, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    const-string v11, "PROTOCOL"

    const/4 v12, 0x5

    const-string v13, ":protocol"

    invoke-direct {v9, v11, v12, v13, v4}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v9, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PROTOCOL:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    const/4 v11, 0x6

    new-array v11, v11, [Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->$VALUES:[Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    new-instance v0, Lio/netty/handler/codec/http2/CharSequenceMap;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/CharSequenceMap;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PSEUDO_HEADERS:Lio/netty/handler/codec/http2/CharSequenceMap;

    invoke-static {}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->values()[Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PSEUDO_HEADERS:Lio/netty/handler/codec/http2/CharSequenceMap;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value:Lio/netty/util/AsciiString;

    iput-boolean p4, p0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->requestOnly:Z

    return-void
.end method

.method public static getPseudoHeader(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PSEUDO_HEADERS:Lio/netty/handler/codec/http2/CharSequenceMap;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    return-object p0
.end method

.method public static hasPseudoHeaderFormat(Ljava/lang/CharSequence;)Z
    .locals 4

    instance-of v0, p0, Lio/netty/util/AsciiString;

    const/4 v1, 0x1

    const/16 v2, 0x3a

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lio/netty/util/AsciiString;

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v3}, Lio/netty/util/AsciiString;->byteAt(I)B

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1
.end method

.method public static isPseudoHeader(Ljava/lang/CharSequence;)Z
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PSEUDO_HEADERS:Lio/netty/handler/codec/http2/CharSequenceMap;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;
    .locals 1

    const-class v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->$VALUES:[Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    return-object v0
.end method


# virtual methods
.method public isRequestOnly()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->requestOnly:Z

    return v0
.end method

.method public value()Lio/netty/util/AsciiString;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value:Lio/netty/util/AsciiString;

    return-object v0
.end method
