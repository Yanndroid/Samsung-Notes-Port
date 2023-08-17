.class public Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommand;
.super Lcom/microsoft/identity/common/java/commands/TokenCommand;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceCodeFlowCommand"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/commands/parameters/DeviceCodeFlowCommandParameters;Lcom/microsoft/identity/common/java/controllers/BaseController;Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommandCallback;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/microsoft/identity/common/java/commands/parameters/DeviceCodeFlowCommandParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/microsoft/identity/common/java/controllers/BaseController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommandCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/identity/common/java/commands/TokenCommand;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/TokenCommandParameters;Lcom/microsoft/identity/common/java/controllers/BaseController;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/microsoft/identity/common/java/result/AcquireTokenResult;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommand;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":execute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device Code Flow command initiating..."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getDefaultController()Lcom/microsoft/identity/common/java/controllers/BaseController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getParameters()Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/java/commands/parameters/DeviceCodeFlowCommandParameters;

    invoke-virtual {v1, v2}, Lcom/microsoft/identity/common/java/controllers/BaseController;->deviceCodeFlowAuthRequest(Lcom/microsoft/identity/common/java/commands/parameters/DeviceCodeFlowCommandParameters;)Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;->getAuthorizationResponse()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;

    move-result-object v4

    check-cast v4, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationResponse;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->getExpiresIn()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Ljava/util/Date;->setTime(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "Failed to parse authorizationResponse.getExpiresIn()"

    invoke-static {v0, v7, v6}, Lcom/microsoft/identity/common/java/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getCallback()Lcom/microsoft/identity/common/java/commands/CommandCallback;

    move-result-object v6

    check-cast v6, Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommandCallback;

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->getVerificationUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->getUserCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v8, v4, v5}, Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommandCallback;->onUserCodeReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v1, v3, v2}, Lcom/microsoft/identity/common/java/controllers/BaseController;->acquireDeviceCodeFlowToken(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;Lcom/microsoft/identity/common/java/commands/parameters/DeviceCodeFlowCommandParameters;)Lcom/microsoft/identity/common/java/result/AcquireTokenResult;

    move-result-object v1

    const-string v2, "Device Code Flow command exiting with token..."

    invoke-static {v0, v2}, Lcom/microsoft/identity/common/java/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommand;->execute()Lcom/microsoft/identity/common/java/result/AcquireTokenResult;

    move-result-object v0

    return-object v0
.end method

.method public isEligibleForEstsTelemetry()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
