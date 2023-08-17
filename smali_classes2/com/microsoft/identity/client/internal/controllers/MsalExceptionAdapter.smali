.class public Lcom/microsoft/identity/client/internal/controllers/MsalExceptionAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static msalExceptionFromBaseException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;
    .locals 5

    instance-of v0, p0, Lcom/microsoft/identity/client/exception/MsalException;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/microsoft/identity/client/exception/MsalException;

    goto/16 :goto_1

    :cond_0
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/ClientException;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    new-instance v1, Lcom/microsoft/identity/client/exception/MsalClientException;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/ArgumentException;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/microsoft/identity/common/java/exception/ArgumentException;

    new-instance v1, Lcom/microsoft/identity/client/exception/MsalArgumentException;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/ArgumentException;->getArgumentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/ArgumentException;->getOperationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/microsoft/identity/client/exception/MsalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/UiRequiredException;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lcom/microsoft/identity/common/java/exception/UiRequiredException;

    new-instance v1, Lcom/microsoft/identity/client/exception/MsalUiRequiredException;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/microsoft/identity/client/exception/MsalUiRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/microsoft/identity/client/exception/MsalIntuneAppProtectionPolicyRequiredException;

    move-object v1, p0

    check-cast v1, Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;

    invoke-direct {v0, v1}, Lcom/microsoft/identity/client/exception/MsalIntuneAppProtectionPolicyRequiredException;-><init>(Lcom/microsoft/identity/common/java/exception/IntuneAppProtectionPolicyRequiredException;)V

    goto :goto_1

    :cond_4
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/ServiceException;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lcom/microsoft/identity/common/java/exception/ServiceException;

    new-instance v1, Lcom/microsoft/identity/client/exception/MsalServiceException;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/exception/ServiceException;->getHttpStatusCode()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/microsoft/identity/client/exception/MsalServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/UserCancelException;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/microsoft/identity/client/exception/MsalUserCancelException;

    invoke-direct {v0}, Lcom/microsoft/identity/client/exception/MsalUserCancelException;-><init>()V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_7

    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/exception/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unknown_error"

    invoke-direct {v0, v2, v1, p0}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-object v0
.end method
