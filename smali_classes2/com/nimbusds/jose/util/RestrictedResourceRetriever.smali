.class public interface abstract Lcom/nimbusds/jose/util/RestrictedResourceRetriever;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nimbusds/jose/util/ResourceRetriever;


# virtual methods
.method public abstract getConnectTimeout()I
.end method

.method public abstract getHeaders()Ljava/util/Map;
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
.end method

.method public abstract getReadTimeout()I
.end method

.method public abstract getSizeLimit()I
.end method

.method public abstract setConnectTimeout(I)V
.end method

.method public abstract setHeaders(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract setReadTimeout(I)V
.end method

.method public abstract setSizeLimit(I)V
.end method
