.class public abstract Lio/netty/handler/codec/http/cookie/CookieDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private final strict:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iput-boolean p1, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->strict:Z

    return-void
.end method


# virtual methods
.method public initCookie(Ljava/lang/String;IIII)Lio/netty/handler/codec/http/cookie/DefaultCookie;
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_8

    if-ne p2, p3, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ne p4, v0, :cond_1

    iget-object p1, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string p2, "Skipping cookie with null value"

    invoke-interface {p1, p2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-static {p1, p4, p5}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http/cookie/CookieUtil;->unwrapValue(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object p1, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string p2, "Skipping cookie because starting quotes are not properly balanced in \'{}\'"

    invoke-interface {p1, p2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_2
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->strict:Z

    if-eqz p2, :cond_4

    invoke-static {p1}, Lio/netty/handler/codec/http/cookie/CookieUtil;->firstInvalidCookieNameOctet(Ljava/lang/CharSequence;)I

    move-result p2

    if-ltz p2, :cond_4

    iget-object p3, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p3}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const-string p4, "Skipping cookie because name \'{}\' contains invalid char \'{}\'"

    invoke-interface {p3, p4, p1, p2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-object v1

    :cond_4
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    sub-int/2addr p5, p4

    if-eq p2, p5, :cond_5

    const/4 p2, 0x1

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    :goto_0
    iget-boolean p3, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->strict:Z

    if-eqz p3, :cond_7

    invoke-static {v2}, Lio/netty/handler/codec/http/cookie/CookieUtil;->firstInvalidCookieValueOctet(Ljava/lang/CharSequence;)I

    move-result p3

    if-ltz p3, :cond_7

    iget-object p1, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const-string p3, "Skipping cookie because value \'{}\' contains invalid char \'{}\'"

    invoke-interface {p1, p3, v2, p2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    return-object v1

    :cond_7
    new-instance p3, Lio/netty/handler/codec/http/cookie/DefaultCookie;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p1, p4}, Lio/netty/handler/codec/http/cookie/DefaultCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lio/netty/handler/codec/http/cookie/DefaultCookie;->setWrap(Z)V

    return-object p3

    :cond_8
    :goto_1
    iget-object p1, p0, Lio/netty/handler/codec/http/cookie/CookieDecoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string p2, "Skipping cookie with null name"

    invoke-interface {p1, p2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    return-object v1
.end method
