.class public interface abstract Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor$BrokerOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/controllers/BrokerOperationExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BrokerOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract extractResultBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .param p1    # Landroid/os/Bundle;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getBundle()Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getMethodName()Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getTelemetryApiId()Ljava/lang/String;
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation
.end method

.method public abstract performPrerequisites(Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;)V
    .param p1    # Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
.end method

.method public abstract putValueInSuccessEvent(Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;Ljava/lang/Object;)V
    .param p1    # Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/telemetry/events/ApiEndEvent;",
            "TT;)V"
        }
    .end annotation
.end method
