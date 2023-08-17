.class public interface abstract Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetryCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getRequestTelemetryFromCache()Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract saveRequestTelemetryToCache(Lcom/microsoft/identity/common/java/eststelemetry/IRequestTelemetry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
