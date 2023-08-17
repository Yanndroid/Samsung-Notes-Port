.class public Lio/netty/handler/codec/http/QueryStringDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_PARAMS:I = 0x400


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final maxParams:I

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private pathEndIdx:I

.field private final semicolonIsNormalChar:Z

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZI)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "uri"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    const-string p1, "charset"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    iput-object p1, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    const-string p1, "maxParams"

    invoke-static {p4, p1}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->maxParams:I

    iput-boolean p5, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->semicolonIsNormalChar:Z

    if-eqz p3, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/nio/charset/Charset;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/nio/charset/Charset;IZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    const-string p1, "charset"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    iput-object p1, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    const-string p1, "maxParams"

    invoke-static {p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->maxParams:I

    iput-boolean p4, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->semicolonIsNormalChar:Z

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx:I

    return-void
.end method

.method private static addParam(Ljava/lang/String;IIILjava/util/Map;Ljava/nio/charset/Charset;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/nio/charset/Charset;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-lt p1, p3, :cond_0

    return v0

    :cond_0
    if-gt p2, p1, :cond_1

    add-int/lit8 p2, p3, 0x1

    :cond_1
    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, p1, v1, p5, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;IILjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p3, p5, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;IILjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 p3, 0x1

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p3
.end method

.method public static decodeComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decodeComponent(Ljava/lang/String;IILjava/nio/charset/Charset;Z)Ljava/lang/String;
    .locals 8

    sub-int v0, p2, p1

    if-gtz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    move v1, p1

    :goto_0
    const/16 v2, 0x2b

    const/16 v3, 0x25

    const/4 v4, -0x1

    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_3

    if-ne v5, v2, :cond_1

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    :cond_3
    :goto_1
    if-ne v1, v4, :cond_4

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    sub-int v4, p2, v1

    div-int/lit8 v4, v4, 0x3

    invoke-static {v4}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p0, p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_2
    if-ge v1, p2, :cond_b

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v3, :cond_7

    if-ne p1, v2, :cond_6

    if-eqz p4, :cond_5

    goto :goto_3

    :cond_5
    const/16 p1, 0x20

    :cond_6
    :goto_3
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_7
    const/4 p1, 0x0

    move v0, p1

    :goto_4
    add-int/lit8 v6, v1, 0x3

    if-gt v6, p2, :cond_a

    add-int/lit8 v7, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Lio/netty/util/internal/StringUtil;->decodeHexByte(Ljava/lang/CharSequence;I)B

    move-result v1

    aput-byte v1, v4, v0

    if-ge v6, p2, :cond_9

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_8

    goto :goto_5

    :cond_8
    move v1, v6

    move v0, v7

    goto :goto_4

    :cond_9
    :goto_5
    add-int/lit8 v1, v6, -0x1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, p1, v7, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unterminated escape sequence at index "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " of: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, v1}, Lio/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;IILjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decodeParams(Ljava/lang/String;ILjava/nio/charset/Charset;IZ)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/nio/charset/Charset;",
            "IZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, -0x1

    move v2, p1

    move v8, v2

    move p1, v1

    :goto_0
    if-ge v8, v0, :cond_8

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x23

    if-eq v1, v3, :cond_8

    const/16 v3, 0x26

    if-eq v1, v3, :cond_5

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_4

    const/16 v3, 0x3d

    if-eq v1, v3, :cond_2

    goto :goto_2

    :cond_2
    if-ne v2, v8, :cond_3

    goto :goto_1

    :cond_3
    if-ge p1, v2, :cond_7

    add-int/lit8 p1, v8, 0x1

    goto :goto_2

    :cond_4
    if-eqz p4, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, p0

    move v3, p1

    move v4, v8

    move-object v5, v7

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lio/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/lang/String;IIILjava/util/Map;Ljava/nio/charset/Charset;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_6

    return-object v7

    :cond_6
    :goto_1
    add-int/lit8 v1, v8, 0x1

    move v2, v1

    :cond_7
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_8
    move-object v1, p0

    move v3, p1

    move v4, v8

    move-object v5, v7

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lio/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/lang/String;IIILjava/util/Map;Ljava/nio/charset/Charset;)Z

    return-object v7
.end method

.method private static findPathEndIndex(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_1

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    return v0
.end method

.method private pathEndIdx()I
    .locals 2

    iget v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-static {v0}, Lio/netty/handler/codec/http/QueryStringDecoder;->findPathEndIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx:I

    :cond_0
    iget v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx:I

    return v0
.end method


# virtual methods
.method public parameters()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-direct {p0}, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx()I

    move-result v1

    iget-object v2, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    iget v3, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->maxParams:I

    iget-boolean v4, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->semicolonIsNormalChar:Z

    invoke-static {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http/QueryStringDecoder;->decodeParams(Ljava/lang/String;ILjava/nio/charset/Charset;IZ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->params:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->params:Ljava/util/Map;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0}, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx()I

    move-result v2

    iget-object v3, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;IILjava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public rawPath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-direct {p0}, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lio/netty/handler/codec/http/QueryStringDecoder;->pathEndIdx()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/QueryStringDecoder;->uri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    return-object v0
.end method
