.class public Lu/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Landroid/content/Intent;
    .locals 2

    invoke-static {}, Lu/i;->c()Lcom/samsung/android/sdk/mobileservice/social/SocialApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/mobileservice/social/SocialApi;->getIntentForAgreementProcedure(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static b()Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lu/i;->c()Lcom/samsung/android/sdk/mobileservice/social/SocialApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/SocialApi;->getIntentForForceUpdate()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/samsung/android/sdk/mobileservice/social/SocialApi;
    .locals 5

    const-string v0, "SesSocialApi"

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->v()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/samsung/android/sdk/mobileservice/social/SocialApi;

    invoke-direct {v2, v1}, Lcom/samsung/android/sdk/mobileservice/social/SocialApi;-><init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/mobileservice/common/exception/NotConnectedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/mobileservice/common/exception/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/mobileservice/common/exception/NotSupportedApiException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ly1/b;

    sget-object v2, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_UNKNOWN_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotSupportedApiException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly1/b;

    sget-object v2, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_NOT_SUPPORTED_API_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    invoke-direct {v0, v2, v1}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotAuthorizedException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly1/b;

    sget-object v2, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_NOT_AUTHORIZED_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    invoke-direct {v0, v2, v1}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotConnectedException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ly1/b;

    sget-object v2, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_NOT_SESSION_CONNECTED_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    invoke-direct {v0, v2, v1}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw v0
.end method

.method public static d()Z
    .locals 2

    invoke-static {}, Lu/i;->c()Lcom/samsung/android/sdk/mobileservice/social/SocialApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/mobileservice/social/SocialApi;->isAgreementProcedureNeeded(I)Z

    move-result v0

    return v0
.end method
