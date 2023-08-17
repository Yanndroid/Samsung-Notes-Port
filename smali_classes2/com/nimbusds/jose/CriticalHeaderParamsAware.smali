.class public interface abstract Lcom/nimbusds/jose/CriticalHeaderParamsAware;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getDeferredCriticalHeaderParams()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProcessedCriticalHeaderParams()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
