.class public Lorg/apache/http/impl/cookie/BestMatchSpecFactoryHC4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final datepatterns:[Ljava/lang/String;

.field private final oneHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/BestMatchSpecFactoryHC4;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/cookie/BestMatchSpecFactoryHC4;->datepatterns:[Ljava/lang/String;

    iput-boolean p2, p0, Lorg/apache/http/impl/cookie/BestMatchSpecFactoryHC4;->oneHeader:Z

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 2

    new-instance p1, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;

    iget-object v0, p0, Lorg/apache/http/impl/cookie/BestMatchSpecFactoryHC4;->datepatterns:[Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/http/impl/cookie/BestMatchSpecFactoryHC4;->oneHeader:Z

    invoke-direct {p1, v0, v1}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;-><init>([Ljava/lang/String;Z)V

    return-object p1
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    const-string v2, "http.protocol.single-cookie-header"

    invoke-interface {p1, v2, v1}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result p1

    new-instance v1, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;

    invoke-direct {v1, v0, p1}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;-><init>([Ljava/lang/String;Z)V

    return-object v1

    :cond_1
    new-instance p1, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;

    invoke-direct {p1}, Lorg/apache/http/impl/cookie/BestMatchSpecHC4;-><init>()V

    return-object p1
.end method
