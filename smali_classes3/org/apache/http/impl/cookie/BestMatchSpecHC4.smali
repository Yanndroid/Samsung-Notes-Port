.class public Lorg/apache/http/impl/cookie/BestMatchSpecHC4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpec;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private compat:Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

.field private final datepatterns:[Ljava/lang/String;

.field private obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

.field private final oneHeader:Z

.field private strict:Lorg/apache/http/impl/cookie/RFC2965SpecHC4;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->datepatterns:[Ljava/lang/String;

    iput-boolean p2, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->oneHeader:Z

    return-void
.end method

.method private getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->compat:Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->datepatterns:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->compat:Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->compat:Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    return-object v0
.end method

.method private getObsoleteStrict()Lorg/apache/http/impl/cookie/RFC2109SpecHC4;
    .locals 3

    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->datepatterns:[Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->oneHeader:Z

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->obsoleteStrict:Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    return-object v0
.end method

.method private getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;
    .locals 3

    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->strict:Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->datepatterns:[Ljava/lang/String;

    iget-boolean v2, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->oneHeader:Z

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->strict:Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->strict:Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    return-object v0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    const-string v0, "List of cookies"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    if-lez v1, :cond_2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getObsoleteStrict()Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/cookie/Cookie;

    instance-of v4, v3, Lorg/apache/http/cookie/SetCookie2;

    if-nez v4, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-interface {v3}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v4

    if-ge v4, v1, :cond_0

    invoke-interface {v3}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v1

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->getVersion()I

    move-result v0

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 1

    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->getVersionHeader()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    instance-of v0, p1, Lorg/apache/http/cookie/SetCookie2;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getObsoleteStrict()Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result p1

    return p1
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 9
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

    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-lt v3, v1, :cond_5

    if-nez v4, :cond_2

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Set-Cookie2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getObsoleteStrict()Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    sget-object v0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;

    instance-of v1, p1, Lorg/apache/http/FormattedHeader;

    if-eqz v1, :cond_3

    check-cast p1, Lorg/apache/http/FormattedHeader;

    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v1

    new-instance v3, Lorg/apache/http/message/ParserCursor;

    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result p1

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v3, p1, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {v1, p1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result p1

    invoke-direct {v3, v2, p1}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    :goto_2
    new-array p1, v6, [Lorg/apache/http/HeaderElement;

    invoke-virtual {v0, v1, v3}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Lorg/apache/http/cookie/MalformedCookieException;

    const-string p2, "Header value is null"

    invoke-direct {p1, p2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    aget-object v7, v0, v3

    const-string/jumbo v8, "version"

    invoke-interface {v7, v8}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v8

    if-eqz v8, :cond_6

    move v5, v6

    :cond_6
    const-string v8, "expires"

    invoke-interface {v7, v8}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_7

    move v4, v6

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "best-match"

    return-object v0
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    instance-of v0, p1, Lorg/apache/http/cookie/SetCookie2;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getStrict()Lorg/apache/http/impl/cookie/RFC2965SpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2965SpecHC4;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getObsoleteStrict()Lorg/apache/http/impl/cookie/RFC2109SpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/RFC2109SpecHC4;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;->getCompat()Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    :goto_0
    return-void
.end method
