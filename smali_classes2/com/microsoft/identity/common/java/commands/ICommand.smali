.class public interface abstract Lcom/microsoft/identity/common/java/commands/ICommand;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract execute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getCorrelationId()Ljava/lang/String;
.end method

.method public abstract isEligibleForCaching()Z
.end method

.method public abstract isEligibleForEstsTelemetry()Z
.end method

.method public abstract willReachTokenEndpoint()Z
.end method
