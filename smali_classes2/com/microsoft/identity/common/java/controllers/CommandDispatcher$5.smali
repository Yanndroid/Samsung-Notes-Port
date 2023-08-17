.class Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->beginInteractive(Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$command:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;->val$command:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "return_authorization_request_result"

    const-string v1, ":beginInteractive"

    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;->val$command:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getCorrelationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/microsoft/identity/common/java/request/SdkType;->UNKNOWN:Lcom/microsoft/identity/common/java/request/SdkType;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;

    move-result-object v4

    :goto_0
    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/request/SdkType;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->initializeDiagnosticContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;->setCorrelationId(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;->val$command:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    invoke-virtual {v5}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getPublicApiId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v2, v5}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$1100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;->val$command:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    invoke-static {v2}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$000(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V

    invoke-static {}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;

    move-result-object v2

    iget-object v4, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;->val$command:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getPublicApiId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->emitApiId(Ljava/lang/String;)V

    new-instance v2, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5$1;

    invoke-direct {v2, p0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5$1;-><init>(Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;)V

    sget-object v4, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->INSTANCE:Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;

    invoke-virtual {v4, v0, v2}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->registerCallback(Ljava/lang/String;Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster$IReceiverCallback;)V

    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;->val$command:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    invoke-static {v2}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$1302(Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;)Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;->val$command:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    invoke-static {v2}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$100(Lcom/microsoft/identity/common/java/commands/BaseCommand;)Lcom/microsoft/identity/common/java/controllers/CommandResult;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$1302(Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;)Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    invoke-virtual {v4, v0}, Lcom/microsoft/identity/common/java/util/ported/LocalBroadcaster;->unregisterCallback(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Completed interactive request for correlation id : **"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;->getLogStatus()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->getInstance()Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;->val$command:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/identity/common/java/eststelemetry/EstsTelemetry;->flush(Lcom/microsoft/identity/common/java/commands/ICommand;Lcom/microsoft/identity/common/java/commands/ICommandResult;)V

    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$5;->val$command:Lcom/microsoft/identity/common/java/commands/InteractiveTokenCommand;

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$800(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->clear()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->INSTANCE:Lcom/microsoft/identity/common/java/logging/DiagnosticContext;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/logging/DiagnosticContext;->clear()V

    throw v0
.end method
