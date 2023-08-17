.class public final Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;
.super Lio/netty/handler/codec/http/cookie/CookieDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;
    }
.end annotation


# static fields
.field public static final LAX:Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;

.field public static final STRICT:Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;-><init>(Z)V

    sput-object v0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;->STRICT:Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;

    new-instance v0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;-><init>(Z)V

    sput-object v0, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;->LAX:Lio/netty/handler/codec/http/cookie/ClientCookieDecoder;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/cookie/CookieDecoder;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Lio/netty/handler/codec/http/cookie/Cookie;
    .locals 11

    const-string v0, "header"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    move-object v3, v1

    move v5, v2

    :goto_0
    if-ne v5, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2c

    if-ne v4, v6, :cond_3

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->cookie()Lio/netty/handler/codec/http/cookie/Cookie;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    const/16 v7, 0x9

    if-eq v4, v7, :cond_d

    const/16 v7, 0xa

    if-eq v4, v7, :cond_d

    const/16 v7, 0xb

    if-eq v4, v7, :cond_d

    const/16 v7, 0xc

    if-eq v4, v7, :cond_d

    const/16 v7, 0xd

    if-eq v4, v7, :cond_d

    const/16 v7, 0x20

    if-eq v4, v7, :cond_d

    const/16 v7, 0x3b

    if-ne v4, v7, :cond_4

    goto/16 :goto_5

    :cond_4
    move v4, v5

    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v7, :cond_6

    move v7, v4

    move v8, v9

    move v4, v8

    move v9, v7

    goto :goto_3

    :cond_6
    const/16 v10, 0x3d

    if-ne v8, v10, :cond_9

    add-int/lit8 v8, v4, 0x1

    if-ne v8, v0, :cond_7

    move v7, v4

    move v9, v8

    move v4, v2

    move v8, v4

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-lez v7, :cond_8

    move v9, v7

    goto :goto_2

    :cond_8
    move v9, v0

    :goto_2
    move v7, v4

    move v4, v9

    goto :goto_3

    :cond_9
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_5

    move v7, v0

    move v8, v9

    move v9, v4

    move v4, v8

    :goto_3
    if-lez v4, :cond_a

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v6, :cond_a

    add-int/lit8 v4, v4, -0x1

    :cond_a
    move v10, v4

    if-nez v3, :cond_c

    move-object v3, p0

    move-object v4, p1

    move v6, v7

    move v7, v8

    move v8, v10

    invoke-virtual/range {v3 .. v8}, Lio/netty/handler/codec/http/cookie/CookieDecoder;->initCookie(Ljava/lang/String;IIII)Lio/netty/handler/codec/http/cookie/DefaultCookie;

    move-result-object v3

    if-nez v3, :cond_b

    return-object v1

    :cond_b
    new-instance v4, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;

    invoke-direct {v4, v3, p1}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;-><init>(Lio/netty/handler/codec/http/cookie/DefaultCookie;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_4

    :cond_c
    invoke-virtual {v3, v5, v7, v8, v10}, Lio/netty/handler/codec/http/cookie/ClientCookieDecoder$CookieBuilder;->appendAttribute(IIII)V

    :goto_4
    move v5, v9

    goto/16 :goto_0

    :cond_d
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method
