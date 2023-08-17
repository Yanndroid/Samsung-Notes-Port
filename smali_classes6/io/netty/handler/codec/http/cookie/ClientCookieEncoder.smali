.class public final Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;
.super Lio/netty/handler/codec/http/cookie/CookieEncoder;
.source "SourceFile"


# static fields
.field public static final COOKIE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lio/netty/handler/codec/http/cookie/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAX:Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;

.field public static final STRICT:Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;-><init>(Z)V

    sput-object v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->STRICT:Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;

    new-instance v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;-><init>(Z)V

    sput-object v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->LAX:Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;

    new-instance v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->COOKIE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/cookie/CookieEncoder;-><init>(Z)V

    return-void
.end method

.method private encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V
    .locals 2

    invoke-interface {p2}, Lio/netty/handler/codec/http/cookie/Cookie;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lio/netty/handler/codec/http/cookie/Cookie;->value()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lio/netty/handler/codec/http/cookie/Cookie;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/cookie/CookieEncoder;->validateCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lio/netty/handler/codec/http/cookie/Cookie;->wrap()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1, v0, v1}, Lio/netty/handler/codec/http/cookie/CookieUtil;->addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v0, v1}, Lio/netty/handler/codec/http/cookie/CookieUtil;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public encode(Lio/netty/handler/codec/http/cookie/Cookie;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cookie"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/cookie/Cookie;

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    invoke-static {v0}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stripTrailingSeparator(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/netty/handler/codec/http/cookie/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "cookies"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http/cookie/CookieEncoder;->strict:Z

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/cookie/Cookie;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    goto :goto_3

    :cond_1
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/util/internal/InternalThreadLocalMap;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    new-array v1, p1, [Lio/netty/handler/codec/http/cookie/Cookie;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/netty/handler/codec/http/cookie/Cookie;

    sget-object v2, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->COOKIE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v2, v1

    :goto_1
    if-ge p1, v2, :cond_4

    aget-object v3, v1, p1

    invoke-direct {p0, v0, v3}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/cookie/Cookie;

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    goto :goto_2

    :cond_4
    :goto_3
    invoke-static {v0}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stripTrailingSeparatorOrNull(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http/cookie/DefaultCookie;

    invoke-direct {v0, p1, p2}, Lio/netty/handler/codec/http/cookie/DefaultCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Lio/netty/handler/codec/http/cookie/Cookie;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/netty/handler/codec/http/cookie/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "cookies"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http/cookie/CookieEncoder;->strict:Z

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/cookie/Cookie;

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    new-array v2, v1, [Lio/netty/handler/codec/http/cookie/Cookie;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/netty/handler/codec/http/cookie/Cookie;

    sget-object v2, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->COOKIE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, p1, v1

    invoke-direct {p0, v0, v3}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http/cookie/Cookie;

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {v0}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stripTrailingSeparatorOrNull(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs encode([Lio/netty/handler/codec/http/cookie/Cookie;)Ljava/lang/String;
    .locals 4

    const-string v0, "cookies"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http/cookie/Cookie;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http/cookie/CookieEncoder;->strict:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v1, p1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    aget-object p1, p1, v2

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    goto :goto_2

    :cond_1
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/netty/handler/codec/http/cookie/Cookie;

    sget-object v1, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->COOKIE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    invoke-direct {p0, v0, v3}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    invoke-direct {p0, v0, v3}, Lio/netty/handler/codec/http/cookie/ClientCookieEncoder;->encode(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/cookie/Cookie;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {v0}, Lio/netty/handler/codec/http/cookie/CookieUtil;->stripTrailingSeparatorOrNull(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
