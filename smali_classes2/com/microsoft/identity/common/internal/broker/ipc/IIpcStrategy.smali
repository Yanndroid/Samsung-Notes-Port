.class public interface abstract Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;
    }
.end annotation


# virtual methods
.method public abstract communicateToBroker(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;
    .param p1    # Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getType()Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;
.end method
