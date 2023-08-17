.class public Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nimbusds/jose/jwk/source/JWKSetCache;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field public static final DEFAULT_LIFESPAN_MINUTES:J = 0xfL

.field public static final DEFAULT_REFRESH_TIME_MINUTES:J = 0x5L


# instance fields
.field private volatile jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

.field private final lifespan:J

.field private final refreshTime:J

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    const-wide/16 v3, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->lifespan:J

    iput-wide p3, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->refreshTime:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    cmp-long p1, p3, v0

    if-lez p1, :cond_1

    :cond_0
    if-eqz p5, :cond_2

    :cond_1
    iput-object p5, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->timeUnit:Ljava/util/concurrent/TimeUnit;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A time unit must be specified for non-negative lifespans or refresh times"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public get()Lcom/nimbusds/jose/jwk/JWKSet;
    .locals 1

    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->getJWKSet()Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLifespan(Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->lifespan:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPutTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getRefreshTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->refreshTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isExpired()Z
    .locals 8

    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->lifespan:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    invoke-virtual {v2}, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->lifespan:J

    iget-object v7, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(Lcom/nimbusds/jose/jwk/JWKSet;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;-><init>(Lcom/nimbusds/jose/jwk/JWKSet;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    return-void
.end method

.method public requiresRefresh()Z
    .locals 8

    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->refreshTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->jwkSetWithTimestamp:Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;

    invoke-virtual {v2}, Lcom/nimbusds/jose/jwk/source/JWKSetWithTimestamp;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->refreshTime:J

    iget-object v7, p0, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
