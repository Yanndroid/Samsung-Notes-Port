.class public interface abstract Lcom/microsoft/identity/common/internal/request/IBrokerRequestAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract brokerRequestFromAcquireTokenParameters(Lcom/microsoft/identity/common/java/commands/parameters/InteractiveTokenCommandParameters;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest;
.end method

.method public abstract brokerRequestFromSilentOperationParameters(Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;)Lcom/microsoft/identity/common/internal/broker/BrokerRequest;
.end method
