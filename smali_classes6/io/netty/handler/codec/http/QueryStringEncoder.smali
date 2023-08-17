.class public Lio/netty/handler/codec/http/QueryStringEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHAR_MAP:[C

.field private static final WRITE_UTF_UNKNOWN:B = 0x3ft


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private hasParams:Z

.field private final uriBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/QueryStringEncoder;->CHAR_MAP:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/QueryStringEncoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    sget-object p1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method private appendEncoded(I)V
    .locals 2

    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p1, 0x4

    invoke-static {v1}, Lio/netty/handler/codec/http/QueryStringEncoder;->forDigit(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/netty/handler/codec/http/QueryStringEncoder;->forDigit(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static dontNeedEncoding(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_4

    :cond_2
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_4

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_4

    const/16 v0, 0x7e

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private encodeComponent(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/QueryStringEncoder;->encodeUtf8Component(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/QueryStringEncoder;->encodeNonUtf8Component(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private encodeNonUtf8Component(Ljava/lang/CharSequence;)V
    .locals 8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_5

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lio/netty/handler/codec/http/QueryStringEncoder;->dontNeedEncoding(C)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v3

    new-array v2, v2, [C

    :cond_2
    move v5, v1

    :cond_3
    aput-char v4, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lio/netty/handler/codec/http/QueryStringEncoder;->dontNeedEncoding(C)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v1, v5}, Ljava/lang/String;-><init>([CII)V

    iget-object v5, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_0

    aget-byte v7, v4, v6

    invoke-direct {p0, v7}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private encodeUtf8Component(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lio/netty/handler/codec/http/QueryStringEncoder;->dontNeedEncoding(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, v1, v0}, Lio/netty/handler/codec/http/QueryStringEncoder;->encodeUtf8Component(Ljava/lang/CharSequence;II)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private encodeUtf8Component(Ljava/lang/CharSequence;II)V
    .locals 2

    if-lez p2, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http/QueryStringEncoder;->encodeUtf8ComponentSlow(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private encodeUtf8ComponentSlow(Ljava/lang/CharSequence;II)V
    .locals 4

    :goto_0
    if-ge p2, p3, :cond_6

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Lio/netty/handler/codec/http/QueryStringEncoder;->dontNeedEncoding(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v2, 0x800

    if-ge v0, v2, :cond_2

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    :goto_1
    invoke-direct {p0, v2}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->isSurrogate(C)Z

    move-result v2

    const/16 v3, 0x3f

    if-eqz v2, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v3}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne p2, v1, :cond_4

    invoke-direct {p0, v3}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    goto :goto_3

    :cond_4
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http/QueryStringEncoder;->writeUtf8Surrogate(CC)V

    goto :goto_2

    :cond_5
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    invoke-direct {p0, v2}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    goto :goto_1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method private static forDigit(I)C
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/QueryStringEncoder;->CHAR_MAP:[C

    and-int/lit8 p0, p0, 0xf

    aget-char p0, v0, p0

    return p0
.end method

.method private writeUtf8Surrogate(CC)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    const/16 v1, 0x3f

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_0

    move p2, v1

    :cond_0
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    return-void

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    shr-int/lit8 p2, p1, 0x12

    or-int/lit16 p2, p2, 0xf0

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    shr-int/lit8 p2, p1, 0xc

    and-int/2addr p2, v1

    or-int/lit16 p2, p2, 0x80

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    shr-int/lit8 p2, p1, 0x6

    and-int/2addr p2, v1

    or-int/lit16 p2, p2, 0x80

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    and-int/2addr p1, v1

    or-int/lit16 p1, p1, 0x80

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/QueryStringEncoder;->appendEncoded(I)V

    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->hasParams:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->hasParams:Z

    :goto_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/QueryStringEncoder;->encodeComponent(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/QueryStringEncoder;->encodeComponent(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/QueryStringEncoder;->uriBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 2

    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/QueryStringEncoder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
