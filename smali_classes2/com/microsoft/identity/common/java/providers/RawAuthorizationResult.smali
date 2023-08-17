.class public Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;,
        Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RawAuthorizationResult"


# instance fields
.field private final mAuthorizationFinalUri:Ljava/net/URI;
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation
.end field

.field private final mException:Lcom/microsoft/identity/common/java/exception/BaseException;
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation
.end field

.field private final mResultCode:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;Ljava/net/URI;Lcom/microsoft/identity/common/java/exception/BaseException;)V
    .locals 0
    .param p2    # Ljava/net/URI;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/microsoft/identity/common/java/exception/BaseException;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mResultCode:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mAuthorizationFinalUri:Ljava/net/URI;

    iput-object p3, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mException:Lcom/microsoft/identity/common/java/exception/BaseException;

    return-void
.end method

.method private static builder()Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;-><init>()V

    return-object v0
.end method

.method public static fromException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
    .locals 2
    .param p0    # Lcom/microsoft/identity/common/java/exception/BaseException;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Llombok/NonNull;
    .end annotation

    const-string v0, "e is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->builder()Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->NON_OAUTH_ERROR:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$000(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$200(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$100(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromPropertyBag(Lcom/microsoft/identity/common/java/util/ported/PropertyBag;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
    .locals 2
    .param p0    # Lcom/microsoft/identity/common/java/util/ported/PropertyBag;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Llombok/NonNull;
    .end annotation

    const-string v0, "propertyBag is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->builder()Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object v0

    const-string v1, "com.microsoft.identity.client.result.code"

    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->get(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->fromInteger(Ljava/lang/Integer;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$000(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object v0

    const-string v1, "com.microsoft.aad.adal:BrowserFinalUrl"

    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->get(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$300(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Ljava/net/URI;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object v0

    const-string v1, "com.microsoft.aad.adal:AuthenticationException"

    invoke-virtual {p0, v1}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->get(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/exception/BaseException;

    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$200(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$100(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromRedirectUri(Ljava/lang/String;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Llombok/NonNull;
    .end annotation

    const-string v0, "redirectUri is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->builder()Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object p0

    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->getResultCodeFromFinalRedirectUri(Ljava/net/URI;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$000(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$300(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Ljava/net/URI;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$100(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/microsoft/identity/common/java/exception/ClientException;

    const-string v1, "malformed_url"

    const-string v2, "Failed to parse redirect URL"

    invoke-direct {v0, v1, v2, p0}, Lcom/microsoft/identity/common/java/exception/ClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromResultCode(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
    .locals 3
    .annotation build Llombok/NonNull;
    .end annotation

    sget-object v0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->NON_OAUTH_ERROR:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->COMPLETED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->DEVICE_REGISTRATION_REQUIRED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->BROKER_INSTALLATION_TRIGGERED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->builder()Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$000(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$100(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " should be set via other factory methods"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromThrowable(Ljava/lang/Throwable;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
    .locals 4
    .param p0    # Ljava/lang/Throwable;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Llombok/NonNull;
    .end annotation

    const-string v0, "e is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lcom/microsoft/identity/common/java/exception/BaseException;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/microsoft/identity/common/java/exception/BaseException;

    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->fromException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->builder()Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object v0

    sget-object v1, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->NON_OAUTH_ERROR:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$000(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object v0

    new-instance v1, Lcom/microsoft/identity/common/java/exception/BaseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error with class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unknown_error"

    invoke-direct {v1, v3, v2, p0}, Lcom/microsoft/identity/common/java/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$200(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;

    move-result-object p0

    invoke-static {p0}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;->access$100(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$RawAuthorizationResultBuilder;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;

    move-result-object p0

    return-object p0
.end method

.method private static getResultCodeFromFinalRedirectUri(Ljava/net/URI;)Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;
    .locals 3
    .param p0    # Ljava/net/URI;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "uri is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/UrlUtil;->getParameters(Ljava/net/URI;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msauth"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "app_link"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->TAG:Ljava/lang/String;

    const-string v0, "Return to caller with BROWSER_CODE_WAIT_FOR_BROKER_INSTALL, and waiting for result."

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->BROKER_INSTALLATION_TRIGGERED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "wpj"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->TAG:Ljava/lang/String;

    const-string v0, " Device needs to be registered, sending BROWSER_CODE_DEVICE_REGISTER"

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->DEVICE_REGISTRATION_REQUIRED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    return-object p0

    :cond_1
    const-string p0, "error_subcode"

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "cancel"

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/util/StringUtil;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->TAG:Ljava/lang/String;

    const-string v0, "User cancelled the session"

    invoke-static {p0, v0}, Lcom/microsoft/identity/common/java/logging/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->CANCELLED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->COMPLETED:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    return-object p0
.end method

.method public static toPropertyBag(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;)Lcom/microsoft/identity/common/java/util/ported/PropertyBag;
    .locals 3
    .param p0    # Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Llombok/NonNull;
    .end annotation

    const-string v0, "data is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;

    invoke-direct {v0}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;-><init>()V

    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mResultCode:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    invoke-static {v1}, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;->access$400(Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.microsoft.identity.client.result.code"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mAuthorizationFinalUri:Ljava/net/URI;

    const-string v2, "com.microsoft.aad.adal:BrowserFinalUrl"

    invoke-virtual {v0, v2, v1}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object p0, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mException:Lcom/microsoft/identity/common/java/exception/BaseException;

    const-string v1, "com.microsoft.aad.adal:AuthenticationException"

    invoke-virtual {v0, v1, p0}, Lcom/microsoft/identity/common/java/util/ported/PropertyBag;->put(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public getAuthorizationFinalUri()Ljava/net/URI;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mAuthorizationFinalUri:Ljava/net/URI;

    return-object v0
.end method

.method public getException()Lcom/microsoft/identity/common/java/exception/BaseException;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mException:Lcom/microsoft/identity/common/java/exception/BaseException;

    return-object v0
.end method

.method public getResultCode()Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult;->mResultCode:Lcom/microsoft/identity/common/java/providers/RawAuthorizationResult$ResultCode;

    return-object v0
.end method
