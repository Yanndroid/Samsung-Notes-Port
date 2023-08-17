.class public abstract Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_BIND_TIMEOUT_IN_SECONDS:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "BoundServiceClient"


# instance fields
.field private mConnection:Lcom/microsoft/identity/common/internal/broker/BoundServiceConnection;

.field public final mContext:Landroid/content/Context;

.field private mHasStartedBinding:Z

.field private final mTargetServiceClassName:Ljava/lang/String;

.field private final mTargetServiceIntentFilter:Ljava/lang/String;

.field private final mTimeOutInSeconds:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x1e

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mContext:Landroid/content/Context;

    iput p4, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mTimeOutInSeconds:I

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mTargetServiceClassName:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mTargetServiceIntentFilter:Ljava/lang/String;

    return-void
.end method

.method private getIntentForBoundService(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mTargetServiceIntentFilter:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mTargetServiceClassName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":connect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->isBoundServiceSupported(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Lcom/microsoft/identity/common/java/util/ResultFuture;

    invoke-direct {v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;-><init>()V

    new-instance v3, Lcom/microsoft/identity/common/internal/broker/BoundServiceConnection;

    invoke-direct {v3, v1}, Lcom/microsoft/identity/common/internal/broker/BoundServiceConnection;-><init>(Lcom/microsoft/identity/common/java/util/ResultFuture;)V

    iput-object v3, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mConnection:Lcom/microsoft/identity/common/internal/broker/BoundServiceConnection;

    iget-object v3, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->getIntentForBoundService(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v4, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mConnection:Lcom/microsoft/identity/common/internal/broker/BoundServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mHasStartedBinding:Z

    if-eqz p1, :cond_0

    const-string p1, "Android is establishing the bound service connection."

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mTimeOutInSeconds:I

    int-to-long v2, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, p1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->getInterfaceFromIBinder(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "failed to bind. The service is not available."

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    sget-object v1, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;->OPERATION_NOT_SUPPORTED_ON_SERVER_SIDE:Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    sget-object v3, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;->BOUND_SERVICE:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    invoke-direct {v0, v1, v3, p1, v2}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;-><init>(Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const-string p1, "Bound service is not supported."

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;

    sget-object v1, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;->OPERATION_NOT_SUPPORTED_ON_SERVER_SIDE:Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    sget-object v3, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;->BOUND_SERVICE:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    invoke-direct {v0, v1, v3, p1, v2}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException;-><init>(Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public disconnect()V
    .locals 2

    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mHasStartedBinding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mConnection:Lcom/microsoft/identity/common/internal/broker/BoundServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mHasStartedBinding:Z

    :cond_0
    return-void
.end method

.method public abstract getInterfaceFromIBinder(Landroid/os/IBinder;)Landroid/os/IInterface;
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public isBoundServiceSupported(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->getIntentForBoundService(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public performOperation(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;)Landroid/os/Bundle;
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;->getTargetBrokerAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->connect(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/internal/broker/BoundServiceClient;->performOperationInternal(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;Landroid/os/IInterface;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public abstract performOperationInternal(Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;Landroid/os/IInterface;)Landroid/os/Bundle;
    .param p1    # Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/identity/common/internal/broker/ipc/BrokerOperationBundle;",
            "TT;)",
            "Landroid/os/Bundle;"
        }
    .end annotation
.end method
