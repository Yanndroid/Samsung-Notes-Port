.class Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CookieBuilder"
.end annotation


# instance fields
.field private final cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

.field private domain:Ljava/lang/String;

.field private expiresEnd:I

.field private expiresStart:I

.field private final header:Ljava/lang/String;

.field private httpOnly:Z

.field private maxAge:J

.field private path:Ljava/lang/String;

.field private sameSite:Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

.field private secure:Z


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/cookie/DefaultCookie;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->maxAge:J

    iput-object p1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    iput-object p2, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    return-void
.end method

.method private computeValue(II)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->isValueDefined(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static isValueDefined(II)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mergeMaxAgeAndExpires()J
    .locals 6

    iget-wide v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->maxAge:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    iget v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->expiresStart:I

    iget v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->expiresEnd:I

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->isValueDefined(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    iget v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->expiresStart:I

    iget v4, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->expiresEnd:I

    invoke-static {v0, v1, v4}, Lio/netty/handler/codec/DateFormatter;->parseHttpDate(Ljava/lang/CharSequence;II)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    int-to-long v0, v0

    add-long/2addr v4, v0

    return-wide v4

    :cond_2
    return-wide v2
.end method

.method private parse4(III)V
    .locals 6

    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v3, "Path"

    const/4 v4, 0x0

    const/4 v5, 0x4

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->computeValue(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->path:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private parse6(III)V
    .locals 6

    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v3, "Domain"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->computeValue(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->domain:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    const-string v3, "Secure"

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->secure:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private parse7(III)V
    .locals 7

    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v3, "Expires"

    const/4 v4, 0x0

    const/4 v5, 0x7

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->expiresStart:I

    iput p3, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->expiresEnd:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x7

    const-string v4, "Max-Age"

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->computeValue(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->setMaxAge(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private parse8(III)V
    .locals 6

    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v3, "HTTPOnly"

    const/4 v4, 0x0

    const/16 v5, 0x8

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->httpOnly:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->header:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const-string v3, "SameSite"

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->computeValue(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;->of(Ljava/lang/String;)Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->sameSite:Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

    :cond_1
    :goto_0
    return-void
.end method

.method private setMaxAge(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->maxAge:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public appendAttribute(IIII)V
    .locals 1

    sub-int/2addr p2, p1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1, p3, p4}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->parse4(III)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1, p3, p4}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->parse6(III)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    invoke-direct {p0, p1, p3, p4}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->parse7(III)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    invoke-direct {p0, p1, p3, p4}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->parse8(III)V

    :cond_3
    :goto_0
    return-void
.end method

.method public cookie()Lio/netty/handler/codec/http/cookie/Cookie;
    .locals 3

    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    iget-object v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->setDomain(Ljava/lang/String;)V

    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    iget-object v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->setPath(Ljava/lang/String;)V

    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    invoke-direct {p0}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->mergeMaxAgeAndExpires()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->setMaxAge(J)V

    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    iget-boolean v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->secure:Z

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->setSecure(Z)V

    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    iget-boolean v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->httpOnly:Z

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->setHttpOnly(Z)V

    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    iget-object v1, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->sameSite:Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->setSameSite(Lio/netty/handler/codec/http/cookie/CookieHeaderNames$SameSite;)V

    iget-object v0, p0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie:Lio/netty/handler/codec/http/cookie/DefaultCookie;

    return-object v0
.end method
