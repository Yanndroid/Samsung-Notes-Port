.class public Lorg/apache/http/impl/cookie/RFC2965SpecHC4;
.super Lorg/apache/http/impl/cookie/RFC2109SpecHC4;
.source "SourceFile"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;-><init>([Ljava/lang/String;Z)V

    new-instance p1, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandlerHC4;

    invoke-direct {p1}, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandlerHC4;-><init>()V

    const-string p2, "domain"

    invoke-virtual {p0, p2, p1}, Lorg/apache/http/impl/cookie/AbstractCookieSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    new-instance p1, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandlerHC4;

    invoke-direct {p1}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandlerHC4;-><init>()V

    const-string p2, "port"

    invoke-virtual {p0, p2, p1}, Lorg/apache/http/impl/cookie/AbstractCookieSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    new-instance p1, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandlerHC4;

    invoke-direct {p1}, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandlerHC4;-><init>()V

    const-string p2, "commenturl"

    invoke-virtual {p0, p2, p1}, Lorg/apache/http/impl/cookie/AbstractCookieSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    new-instance p1, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandlerHC4;

    invoke-direct {p1}, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandlerHC4;-><init>()V

    const-string p2, "discard"

    invoke-virtual {p0, p2, p1}, Lorg/apache/http/impl/cookie/AbstractCookieSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    new-instance p1, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandlerHC4;

    invoke-direct {p1}, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandlerHC4;-><init>()V

    const-string/jumbo p2, "version"

    invoke-virtual {p0, p2, p1}, Lorg/apache/http/impl/cookie/AbstractCookieSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    return-void
.end method

.method private static adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".local"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->isSecure()Z

    move-result p0

    invoke-direct {v1, v0, v2, v3, p0}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-object v1

    :cond_3
    return-object p0
.end method

.method private createCookies([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/HeaderElement;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    return-object v0

    :cond_0
    aget-object v4, p1, v3

    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;

    invoke-direct {v7, v5, v6}, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;->getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/apache/http/impl/cookie/BasicClientCookieHC4;->setPath(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;->getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/apache/http/impl/cookie/BasicClientCookieHC4;->setDomain(Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v6, v5, [I

    invoke-virtual {p2}, Lorg/apache/http/cookie/CookieOrigin;->getPort()I

    move-result v8

    aput v8, v6, v2

    invoke-virtual {v7, v6}, Lorg/apache/http/impl/cookie/BasicClientCookie2HC4;->setPorts([I)V

    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getParameters()[Lorg/apache/http/NameValuePair;

    move-result-object v4

    new-instance v6, Ljava/util/HashMap;

    array-length v8, v4

    invoke-direct {v6, v8}, Ljava/util/HashMap;-><init>(I)V

    array-length v8, v4

    sub-int/2addr v8, v5

    :goto_1
    if-gez v8, :cond_3

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/apache/http/impl/cookie/BasicClientCookieHC4;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/apache/http/impl/cookie/AbstractCookieSpecHC4;->findAttribHandler(Ljava/lang/String;)Lorg/apache/http/cookie/CookieAttributeHandler;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Lorg/apache/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    aget-object v5, v4, v8

    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_4
    new-instance p1, Lorg/apache/http/cookie/MalformedCookieException;

    const-string p2, "Cookie name may not be empty"

    invoke-direct {p1, p2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->formatCookieAsVer(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/cookie/Cookie;I)V

    instance-of p3, p2, Lorg/apache/http/cookie/ClientCookie;

    if-eqz p3, :cond_3

    move-object p3, p2

    check-cast p3, Lorg/apache/http/cookie/ClientCookie;

    const-string v0, "port"

    invoke-interface {p3, v0}, Lorg/apache/http/cookie/ClientCookie;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    const-string v0, "; $Port"

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, "=\""

    invoke-virtual {p1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_2

    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object p2

    if-eqz p2, :cond_2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    goto :goto_1

    :cond_0
    if-lez v0, :cond_1

    const-string v1, ","

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_1
    aget v1, p2, v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p2, "\""

    invoke-virtual {p1, p2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 2

    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    const-string v1, "Cookie2"

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v1, "$Version="

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v1, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v1
.end method

.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result p1

    return p1
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    const-string v0, "Header"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set-Cookie2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object p1

    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->createCookies([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Lorg/apache/http/cookie/MalformedCookieException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized cookie header \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/HeaderElement;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->createCookies([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "rfc2965"

    return-object v0
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->adjustEffectiveHost(Lorg/apache/http/cookie/CookieOrigin;)Lorg/apache/http/cookie/CookieOrigin;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    return-void
.end method
