.class Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitAndForgetReturningFuture(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

.field public final synthetic val$commandParameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

.field public final synthetic val$correlationId:Ljava/lang/String;

.field public final synthetic val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$correlationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$commandParameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    iput-object p4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, ":submit"

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$correlationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$commandParameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/microsoft/identity/common/java/request/SdkType;->UNKNOWN:Lcom/microsoft/identity/common/java/request/SdkType;

    :goto_0
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/request/SdkType;->getProductName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$commandParameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    move-result-object v2

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$commandParameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->initializeDiagnosticContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->initTelemetryForCommand(Lcom/microsoft/identity/common/java/commands/ICommand;)V

    invoke-static {}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getPublicApiId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->emitApiId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-static {v1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$100(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/controllers/CommandResult;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Completed as owner for correlation id : **"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$correlationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->getLogStatus()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is cacheable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->isEligibleForCaching()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v2, v3, v1}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->flush(Lcom/microsoft/identity/common/java/commands/ICommand;Lcom/microsoft/identity/common/java/commands/ICommandResult;)V

    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    invoke-virtual {v2, v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request encountered an exception with correlation id : **"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$correlationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$2;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->clear()V

    return-void

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->clear()V

    throw v0
.end method
