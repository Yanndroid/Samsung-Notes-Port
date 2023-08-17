.class public Lu/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;
    .locals 5

    const-string v0, "SesGroupApi"

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->v()Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;

    const/16 v3, 0x68

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;-><init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;I)V
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

.method public static b()Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupListResult;
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lu/g;->a()Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;->getGroupList()Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupListResult;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ly1/b;

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_WIFI_ONLY_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v2, "getGroupList failed - wifi only"

    invoke-direct {v0, v1, v2}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized c(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupResult;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-class v0, Lu/g;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lu/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Lu/g;->a()Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;

    move-result-object v2

    new-instance v3, Lu/g$a;

    invoke-direct {v3, v1}, Lu/g$a;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;->requestGroup(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const-wide/32 v2, 0x186a0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string p0, "SesGroupApi"

    const-string v1, "Fail to requestGroup"

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    new-instance p0, Ly1/b;

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_WIFI_ONLY_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v2, "getGroupList sync failed - wifi only"

    invoke-direct {p0, v1, v2}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d(Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;",
            "Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;",
            "Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationResult;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lu/g;->a()Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;->requestGroupCreation(Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$InvitationRequest;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lu/g;->a()Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;->requestGroupDeletion(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I

    move-result p0

    return p0
.end method

.method public static f(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lu/g;->a()Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;->requestGroupInvitationAcceptance(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ly1/b;

    sget-object p1, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_WIFI_ONLY_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v0, "requestGroupInvitationAcceptance failed - wifi only"

    invoke-direct {p0, p1, v0}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized g(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-class v0, Lu/g;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lu/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Lu/g;->a()Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;

    move-result-object v2

    new-instance v3, Lu/g$b;

    invoke-direct {v3, v1}, Lu/g$b;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;->requestGroupInvitationAcceptance(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const-wide/16 v2, 0x2710

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string p0, "SesGroupApi"

    const-string v1, "Fail to requestGroupInvitationAcceptance"

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    new-instance p0, Ly1/b;

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_WIFI_ONLY_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v2, "requestGroupInvitationAcceptance sync failed - wifi only"

    invoke-direct {p0, v1, v2}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static h(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lu/g;->a()Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;->requestGroupInvitationRejection(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ly1/b;

    sget-object p1, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_WIFI_ONLY_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v0, "requestGroupInvitationRejection failed - wifi only"

    invoke-direct {p0, p1, v0}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized i(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-class v0, Lu/g;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lu/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Lu/g;->a()Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;

    move-result-object v2

    new-instance v3, Lu/g$c;

    invoke-direct {v3, v1}, Lu/g$c;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;->requestGroupInvitationRejection(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const-wide/16 v2, 0x2710

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string p0, "SesGroupApi"

    const-string v1, "Fail to requestGroupInvitationRejection"

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    new-instance p0, Ly1/b;

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_WIFI_ONLY_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v2, "requestGroupInvitationRejection sync failed - wifi only"

    invoke-direct {p0, v1, v2}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static j(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupMemberResult;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lu/g;->a()Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;->requestGroupMemberList(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ly1/b;

    sget-object p1, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_WIFI_ONLY_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v0, "requestGroupMemberList failed - wifi only"

    invoke-direct {p0, p1, v0}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized k(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupMemberResult;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-class v0, Lu/g;

    monitor-enter v0

    :try_start_0
    const-string v1, "SesGroupApi"

    const-string v2, "start requestGroupMemberList"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lu/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    invoke-static {}, Lu/g;->a()Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;

    move-result-object v2

    new-instance v3, Lu/g$d;

    invoke-direct {v3, v1}, Lu/g$d;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;->requestGroupMemberList(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const-wide/16 v2, 0x2710

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupMemberResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string p0, "SesGroupApi"

    const-string v1, "Fail to requestGroupMemberList"

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    new-instance p0, Ly1/b;

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_WIFI_ONLY_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v2, "requestGroupMemberList sync  failed - wifi only"

    invoke-direct {p0, v1, v2}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static l(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lu/g;->a()Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;->requestLeave(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ly1/b;

    sget-object p1, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_WIFI_ONLY_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v0, "requestLeave failed - wifi only"

    invoke-direct {p0, p1, v0}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback<",
            "Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lu/g;->a()Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;->requestMyInvitationList(Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;)I

    move-result p0

    return p0
.end method

.method public static n(Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupSyncResultCallback;)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lu/g;->a()Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;->requestSync(Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupSyncResultCallback;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ly1/b;

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;->FAIL_WIFI_ONLY_EXCEPTION:Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;

    const-string v1, "requestSync sync failed - wifi only"

    invoke-direct {p0, v0, v1}, Ly1/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/ShareConstants$ResultCode;Ljava/lang/String;)V

    throw p0
.end method
