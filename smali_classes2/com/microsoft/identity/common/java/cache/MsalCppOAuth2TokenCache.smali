.class public Lcom/microsoft/identity/common/java/cache/MsalCppOAuth2TokenCache;
.super Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericOAuth2Strategy:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Strategy;",
        "GenericAuthorizationRequest:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;",
        "GenericTokenResponse:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;",
        "GenericAccount:",
        "Lcom/microsoft/identity/common/java/BaseAccount;",
        "GenericRefreshToken:",
        "Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;",
        ">",
        "Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache<",
        "TGenericOAuth2Strategy;TGenericAuthorizationRequest;TGenericTokenResponse;TGenericAccount;TGenericRefreshToken;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.microsoft.identity.common.java.cache.MsalCppOAuth2TokenCache"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;Lcom/microsoft/identity/common/java/cache/IAccountCredentialAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;-><init>(Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;Lcom/microsoft/identity/common/java/cache/IAccountCredentialAdapter;)V

    return-void
.end method

.method public static create(Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;)Lcom/microsoft/identity/common/java/cache/MsalCppOAuth2TokenCache;
    .locals 3
    .param p0    # Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "platformComponents is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->create(Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;)Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;

    move-result-object v0

    new-instance v1, Lcom/microsoft/identity/common/java/cache/MsalCppOAuth2TokenCache;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;

    move-result-object v2

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccountCredentialAdapter()Lcom/microsoft/identity/common/java/cache/IAccountCredentialAdapter;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lcom/microsoft/identity/common/java/cache/MsalCppOAuth2TokenCache;-><init>(Lcom/microsoft/identity/common/java/interfaces/IPlatformComponents;Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;Lcom/microsoft/identity/common/java/cache/IAccountCredentialAdapter;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized clearCache()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/MsalCppOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;->clearAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forceRemoveAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/cache/AccountDeletionRecord;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    if-eqz p1, :cond_8

    :try_start_0
    const-string v0, "homeAccountId"

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {p3}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/MsalCppOAuth2TokenCache;->getAllAccounts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v0, :cond_4

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v1

    goto :goto_3

    :cond_3
    move v7, v2

    :cond_4
    :goto_3
    if-eqz v3, :cond_6

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->getRealm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v1

    goto :goto_4

    :cond_5
    move v7, v2

    :cond_6
    :goto_4
    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/MsalCppOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;->removeAccount(Lcom/microsoft/identity/common/java/dto/AccountRecord;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-instance p1, Lcom/microsoft/identity/common/java/cache/AccountDeletionRecord;

    invoke-direct {p1, v4}, Lcom/microsoft/identity/common/java/cache/AccountDeletionRecord;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_8
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "homeAccountId is marked non-null but is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public getAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/dto/AccountRecord;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    const-string v0, "homeAccountId is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "environment is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "realm is marked non-null but is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "homeAccountId"

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environment"

    invoke-virtual {p0, p2, v0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realm"

    invoke-virtual {p0, p3, v0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/MsalCppOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;->getAccountsFilteredBy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    return-object p1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/common/java/cache/MsalCppOAuth2TokenCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":getAccount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No account found for the passing in homeAccountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " environment: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " realm: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccountCredentialCache()Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;
    .locals 1

    invoke-super {p0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;

    move-result-object v0

    return-object v0
.end method

.method public getAllAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/dto/AccountRecord;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/MsalCppOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;->getAccounts()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCredentials()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/dto/Credential;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/MsalCppOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;->getCredentials()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/cache/AccountDeletionRecord;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    :try_start_0
    const-string v0, "homeAccountId"

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environment"

    invoke-virtual {p0, p2, v0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "realm"

    invoke-virtual {p0, p3, v0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->validateNonNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p3, v1

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/MsalCppOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;

    move-result-object v2

    sget-object v5, Lcom/microsoft/identity/common/java/dto/CredentialType;->RefreshToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v9, "Bearer"

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v9}, Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;->getCredentialsFilteredBy(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/dto/CredentialType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/java/dto/Credential;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/dto/Credential;->getClientId()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x4

    new-array v7, v0, [Lcom/microsoft/identity/common/java/dto/CredentialType;

    sget-object v0, Lcom/microsoft/identity/common/java/dto/CredentialType;->AccessToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    aput-object v0, v7, v1

    const/4 v0, 0x1

    sget-object v1, Lcom/microsoft/identity/common/java/dto/CredentialType;->AccessToken_With_AuthScheme:Lcom/microsoft/identity/common/java/dto/CredentialType;

    aput-object v1, v7, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/microsoft/identity/common/java/dto/CredentialType;->IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    aput-object v1, v7, v0

    const/4 v0, 0x3

    sget-object v1, Lcom/microsoft/identity/common/java/dto/CredentialType;->V1IdToken:Lcom/microsoft/identity/common/java/dto/CredentialType;

    aput-object v1, v7, v0

    move-object v2, p0

    move-object v3, p2

    move-object v5, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->removeAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/microsoft/identity/common/java/dto/CredentialType;)Lcom/microsoft/identity/common/java/cache/AccountDeletionRecord;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/identity/common/java/cache/MsalCppOAuth2TokenCache;->forceRemoveAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/identity/common/java/cache/AccountDeletionRecord;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "realm is marked non-null but is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "environment is marked non-null but is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "homeAccountId is marked non-null but is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveAccountRecord(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/dto/AccountRecord;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/cache/MsalCppOAuth2TokenCache;->getAccountCredentialCache()Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/microsoft/identity/common/java/cache/IAccountCredentialCache;->saveAccount(Lcom/microsoft/identity/common/java/dto/AccountRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "accountRecord is marked non-null but is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized saveCredentials(Lcom/microsoft/identity/common/java/dto/AccountRecord;[Lcom/microsoft/identity/common/java/dto/Credential;)V
    .locals 5
    .param p1    # Lcom/microsoft/identity/common/java/dto/AccountRecord;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Lcom/microsoft/identity/common/java/dto/Credential;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    if-eqz p2, :cond_6

    :try_start_0
    array-length v0, p2

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    instance-of v4, v3, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    if-eqz v4, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;

    :cond_0
    instance-of v4, v3, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    invoke-virtual {p0, v3}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->isAccessTokenSchemaCompliant(Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string p2, "Credential is missing schema-required fields."

    const-string v0, "AT is missing a required property."

    invoke-direct {p1, p2, v0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->removeRefreshTokenIfNeeded(Lcom/microsoft/identity/common/java/dto/AccountRecord;Lcom/microsoft/identity/common/java/dto/RefreshTokenRecord;)V

    :cond_4
    invoke-virtual {p0, p2}, Lcom/microsoft/identity/common/java/cache/MsalOAuth2TokenCache;->saveCredentialsInternal([Lcom/microsoft/identity/common/java/dto/Credential;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    new-instance p1, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string p2, "Credential array passed in is null or empty"

    invoke-direct {p1, p2}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "credentials is marked non-null but is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1
.end method
