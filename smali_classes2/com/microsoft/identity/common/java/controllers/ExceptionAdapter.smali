.class public Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExceptionAdapter"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyCliTelemInfo(Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;Lcom/microsoft/identity/common/java/exception/BaseException;)V
    .locals 1
    .param p0    # Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/microsoft/identity/common/java/exception/BaseException;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "outErr is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->getSpeRing()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->setSpeRing(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->getRefreshTokenAge()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->setRefreshTokenAge(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->getServerErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->setCliTelemErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;->getServerSubErrorCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->setCliTelemSubErrorCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static baseExceptionFromException(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/exception/BaseException;
    .locals 4

    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    :cond_0
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/TerminalException;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/microsoft/identity/common/java/exception/TerminalException;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/TerminalException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    new-instance v1, Lcom/microsoft/identity/common/java/exception/ClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An unhandled exception occurred with message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_1
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An IO error occurred with message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "io_error"

    invoke-direct {v0, v2, v1, p0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string v1, "operation_interrupted"

    const-string v2, "SDK cancelled operation, the thread execution was interrupted"

    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/microsoft/identity/common/java/exception/BaseException;

    return-object p0

    :cond_4
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unknown_error"

    invoke-direct {v0, v2, v1, p0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static exceptionFromAcquireTokenResult(Lcom/microsoft/identity/common/java/result/AcquireTokenResult;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Lcom/microsoft/identity/common/java/exception/BaseException;
    .locals 3
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getAuthorizationResult()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;->getAuthorizationErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;

    move-result-object v1

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;->getSuccess()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter$1;->$SwitchMap$com$microsoft$identity$common$java$providers$oauth2$AuthorizationStatus:[I

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getAuthorizationResult()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResult;->getAuthorizationStatus()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationStatus;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/microsoft/identity/common/java/exception/UserCancelException;

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/exception/UserCancelException;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    instance-of p0, v1, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationErrorResponse;

    if-eqz p0, :cond_3

    move-object p0, v1

    check-cast p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationErrorResponse;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device_registration_needed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/microsoft/identity/common/java/exception/DeviceRegistrationRequiredException;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getUpnToWpj()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/microsoft/identity/common/java/exception/DeviceRegistrationRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    new-instance p0, Lcom/microsoft/identity/common/java/exception/ServiceException;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getError()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":exceptionFromAcquireTokenResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthorizationResult was null -- expected for ATS cases."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/result/AcquireTokenResult;->getTokenResult()Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->exceptionFromTokenResult(Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Lcom/microsoft/identity/common/java/exception/ServiceException;

    move-result-object p0

    return-object p0
.end method

.method public static exceptionFromTokenResult(Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Lcom/microsoft/identity/common/java/exception/ServiceException;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getErrorResponse()Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->getExceptionFromTokenErrorResponse(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;)Lcom/microsoft/identity/common/java/exception/ServiceException;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResult;->getCliTelemInfo()Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->applyCliTelemInfo(Lcom/microsoft/identity/common/java/telemetry/CliTelemInfo;Lcom/microsoft/identity/common/java/exception/BaseException;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":exceptionFromTokenResult"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error, Token result is null ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/microsoft/identity/common/java/exception/ServiceException;

    const/4 p0, 0x0

    const-string/jumbo v0, "unknown_error"

    const-string v1, "Request failed, but no error returned back from service."

    invoke-direct {p1, v0, v1, p0}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method

.method public static getExceptionFromTokenErrorResponse(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;)Lcom/microsoft/identity/common/java/exception/ServiceException;
    .locals 3
    .param p0    # Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "BC_UNCONFIRMED_CAST"
        }
    .end annotation

    const-string v0, "errorResponse is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->isIntunePolicyRequiredError(Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->isBrokerTokenCommandParameters(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/BrokerInteractiveTokenCommandParameters;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    check-cast p0, Lcom/microsoft/identity/common/java/commands/parameters/BrokerInteractiveTokenCommandParameters;

    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/commands/parameters/BrokerInteractiveTokenCommandParameters;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    check-cast p0, Lcom/microsoft/identity/common/java/commands/parameters/BrokerSilentTokenCommandParameters;

    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/commands/parameters/BrokerSilentTokenCommandParameters;)V

    :goto_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getSubError()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/microsoft/identity/common/java/exception/ServiceException;->setOauthSubErrorCode(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->setHttpResponseUsingTokenErrorResponse(Lcom/microsoft/identity/common/java/exception/ServiceException;Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;)V

    return-object v0

    :cond_2
    :goto_1
    sget-object p0, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->TAG:Ljava/lang/String;

    const-string v0, "In order to properly construct the IntuneAppProtectionPolicyRequiredException we need the command parameters to be supplied.  Returning as service exception instead."

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->getExceptionFromTokenErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;)Lcom/microsoft/identity/common/java/exception/ServiceException;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p1}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->getExceptionFromTokenErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;)Lcom/microsoft/identity/common/java/exception/ServiceException;

    move-result-object p0

    return-object p0
.end method

.method public static getExceptionFromTokenErrorResponse(Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;)Lcom/microsoft/identity/common/java/exception/ServiceException;
    .locals 4
    .param p0    # Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "errorResponse is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->shouldBeConvertedToUiRequiredException(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/microsoft/identity/common/java/exception/UiRequiredException;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/java/exception/UiRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/microsoft/identity/common/java/exception/ServiceException;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/java/exception/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getSubError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/identity/common/java/exception/ServiceException;->setOauthSubErrorCode(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->setHttpResponseUsingTokenErrorResponse(Lcom/microsoft/identity/common/java/exception/ServiceException;Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;)V

    return-object v0
.end method

.method private static isBrokerTokenCommandParameters(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;)Z
    .locals 1

    instance-of v0, p0, Lcom/microsoft/identity/common/java/commands/parameters/BrokerSilentTokenCommandParameters;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/microsoft/identity/common/java/commands/parameters/BrokerInteractiveTokenCommandParameters;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isIntunePolicyRequiredError(Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;)Z
    .locals 2
    .param p0    # Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "errorResponse is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getSubError()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getError()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unauthorized_client"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getSubError()Ljava/lang/String;

    move-result-object p0

    const-string v0, "protection_policy_required"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static setHttpResponseUsingTokenErrorResponse(Lcom/microsoft/identity/common/java/exception/ServiceException;Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;)V
    .locals 2
    .param p0    # Lcom/microsoft/identity/common/java/exception/ServiceException;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "exception is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "errorResponse is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getResponseHeadersJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenErrorResponse;->getResponseBody()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->synthesizeHttpResponse(ILjava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/net/HttpResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/exception/ServiceException;->setHttpResponse(Lcom/microsoft/identity/common/java/net/HttpResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->TAG:Ljava/lang/String;

    const-string p1, "Failed to deserialize error data: status, headers, response body."

    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static shouldBeConvertedToUiRequiredException(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "invalid_grant"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "interaction_required"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthesizeHttpResponse(ILjava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/net/HttpResponse;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Lcom/microsoft/identity/common/java/net/HttpResponse;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/HeaderSerializationUtil;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1}, Lcom/microsoft/identity/common/java/net/HttpResponse;-><init>(ILjava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/microsoft/identity/common/java/controllers/ExceptionAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":applyHttpErrorResponseData"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to deserialize error data: status, headers, response body."

    invoke-static {p0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
