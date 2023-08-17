.class Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitSilentReturningFuture(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$codeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

.field public final synthetic val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

.field public final synthetic val$commandParameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

.field public final synthetic val$correlationId:Ljava/lang/String;

.field public final synthetic val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;Ljava/lang/String;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$codeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$correlationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$commandParameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    iput-object p4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    iput-object p5, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$codeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    const-string v1, "10012"

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;->markCode(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$correlationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$commandParameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/microsoft/identity/common/java/request/SdkType;->UNKNOWN:Lcom/microsoft/identity/common/java/request/SdkType;

    :goto_0
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/request/SdkType;->getProductName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$commandParameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    move-result-object v2

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$commandParameters:Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->initializeDiagnosticContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-static {v1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$000(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    invoke-static {}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getPublicApiId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->emitApiId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v1

    instance-of v1, v1, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/java/commands/parameters/SilentTokenCommandParameters;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;->isForceRefresh()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->emitForceRefresh(Z)V

    :cond_1
    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$codeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    const-string v2, "10013"

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;->markCode(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-static {v1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$100(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/controllers/CommandResult;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$codeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    const-string v3, "10014"

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;->markCode(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":submitSilent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Completed silent request as owner for correlation id : **"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$correlationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", with the status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->getLogStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is cacheable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->isEligibleForCaching()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v2, v3, v1}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->flush(Lcom/microsoft/identity/common/java/commands/ICommand;Lcom/microsoft/identity/common/java/commands/ICommandResult;)V

    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    invoke-virtual {v2, v1}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setResult(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->isEligibleForCaching()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$400()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The command in the map has mutated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " the calling application was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-static {v0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$500(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    :cond_2
    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;->setCleanedUp()V

    monitor-exit v1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$codeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    const-string v3, "10014"

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;->markCode(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":submitSilent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request encountered an exception with correlation id : **"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$correlationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/util/ResultFuture;->setException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->isEligibleForCaching()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$400()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    if-nez v2, :cond_3

    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The command in the map has mutated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " the calling application was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-static {v0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$500(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    :cond_3
    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;->setCleanedUp()V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_2
    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->clear()V

    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$codeMarkerManager:Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;

    const-string v1, "10020"

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/marker/CodeMarkerManager;->markCode(Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$300()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_8
    iget-object v3, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->isEligibleForCaching()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$400()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    if-nez v3, :cond_4

    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The command in the map has mutated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " the calling application was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getApplicationName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-static {v0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$500(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    :cond_4
    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$1;->val$finalFuture:Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/result/FinalizableResultFuture;->setCleanedUp()V

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->clear()V

    throw v1

    :catchall_5
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0
.end method
