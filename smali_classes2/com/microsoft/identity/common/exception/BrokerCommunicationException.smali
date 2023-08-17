.class public Lcom/microsoft/identity/common/exception/BrokerCommunicationException;
.super Lcom/microsoft/identity/common/java/exception/BaseException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x44d2e520d075bbe9L


# instance fields
.field private final category:Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

.field private final strategyType:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;->category:Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    iput-object p2, p0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;->strategyType:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;->category:Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;->category:Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;->strategyType:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-super {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "[%s] [%s] :%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrategyType()Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;->strategyType:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    return-object v0
.end method

.method public isCacheable()Z
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;->category:Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    sget-object v1, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;->CONNECTION_ERROR:Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
