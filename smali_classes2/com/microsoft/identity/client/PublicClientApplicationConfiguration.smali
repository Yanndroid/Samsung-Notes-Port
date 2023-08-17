.class public Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/client/PublicClientApplicationConfiguration$SerializedNames;
    }
.end annotation


# static fields
.field private static final BROKER_REDIRECT_URI_SCHEME_AND_SEPARATOR:Ljava/lang/String; = "msauth://"

.field public static final INVALID_REDIRECT_MSG:Ljava/lang/String; = "Invalid, null, or malformed redirect_uri supplied"

.field private static final TAG:Ljava/lang/String; = "PublicClientApplicationConfiguration"


# instance fields
.field private handleNullTaskAffinity:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "handle_null_taskaffinity"
    .end annotation
.end field

.field private isAuthorizationInCurrentTask:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authorization_in_current_task"
    .end annotation
.end field

.field private mAccountMode:Lcom/microsoft/identity/client/configuration/AccountMode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account_mode"
    .end annotation
.end field

.field private transient mAppContext:Landroid/content/Context;

.field private mAuthorities:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authorities"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/authorities/Authority;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authorization_user_agent"
    .end annotation
.end field

.field private mBrowserSafeList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "browser_safelist"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mClientCapabilities:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_capabilities"
    .end annotation
.end field

.field private mClientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_id"
    .end annotation
.end field

.field private mEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "environment"
    .end annotation
.end field

.field private mHttpConfiguration:Lcom/microsoft/identity/client/configuration/HttpConfiguration;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "http"
    .end annotation
.end field

.field private transient mIsSharedDevice:Z

.field private mLoggerConfiguration:Lcom/microsoft/identity/client/configuration/LoggerConfiguration;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logging"
    .end annotation
.end field

.field private mMultipleCloudsSupported:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "multiple_clouds_supported"
    .end annotation
.end field

.field private transient mOAuth2TokenCache:Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;

.field private mRedirectUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "redirect_uri"
    .end annotation
.end field

.field private mRequiredBrokerProtocolVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minimum_required_broker_protocol_version"
    .end annotation
.end field

.field private mTelemetryConfiguration:Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "telemetry"
    .end annotation
.end field

.field private mUseBroker:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "broker_redirect_uri_registered"
    .end annotation
.end field

.field private powerOptCheckEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "power_opt_check_for_network_req_enabled"
    .end annotation
.end field

.field private webViewZoomControlsEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "web_view_zoom_controls_enabled"
    .end annotation
.end field

.field private webViewZoomEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "web_view_zoom_enabled"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mIsSharedDevice:Z

    return-void
.end method

.method private checkDefaultAuthoritySpecified()V
    .locals 4

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/identity/common/java/authorities/Authority;

    invoke-virtual {v3}, Lcom/microsoft/identity/common/java/authorities/Authority;->getDefault()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    if-gt v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "More than one authority in your configuration is marked as default.  Only one authority may be default."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One authority in your configuration must be marked as default."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method private checkManifestPermissions()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->handleNullTaskAffinity:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.REORDER_TASKS"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You requested that we handle null taskAffinity but your manifest does not include the REORDER_TASKS permission"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private hasSchemeAndAuthority(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":hasSchemeAndAuthority"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v3

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    move v1, v3

    :cond_1
    return v1

    :catch_0
    move-exception p1

    const-string v2, "Invalid, null, or malformed redirect_uri supplied"

    invoke-static {v0, v2, p1}, Lcom/microsoft/identity/common/internal/logging/Logger;->errorPII(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static isBrokerRedirectUri(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msauth://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidAuthenticatorRedirectUri()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":isValidAuthenticatorRedirectUri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.azure.authenticator"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    aget-object v2, v2, v1

    const-string v3, "SHA"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ho040S3ffZkmxqtQrSwpTVOn9r0="

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "N1jdcbbnKDr0LaFZlqdhXgm2luE="

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "msauth"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    const-string/jumbo v3, "urn:ietf:wg:oauth:2.0:oob"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_0
    const-string v3, "Unexpected error in getting package info/signature for Authenticator"

    invoke-static {v0, v3, v2}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return v1
.end method

.method private static nullConfigurationCheck(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be null.  Invalid configuration."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateAzureActiveDirectoryAuthority(Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;->mAudience:Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAudience;

    if-eqz p1, :cond_1

    instance-of p1, p1, Lcom/microsoft/identity/common/internal/authorities/UnknownAudience;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized audience type for AzureActiveDirectoryAuthority -- null, invalid, or unknown type specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static validateCustomTabRedirectActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":validateCustomTabRedirectActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v4, 0x40

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    move v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-class v5, Lcom/microsoft/identity/client/BrowserTabActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->getInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isAuthorizationInCurrentTask()Z

    move-result v6

    if-eqz v6, :cond_1

    const-class v5, Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    :cond_1
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v1, p0, v2

    aput-object p1, p0, v3

    const-string p1, "Another application %s is listening for the URL scheme %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/microsoft/identity/common/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/microsoft/identity/client/exception/MsalClientException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "More than one app is listening for the URL scheme defined for BrowserTabActivity in the AndroidManifest. The package name of this other app is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "multiple_apps_listening_url_scheme"

    invoke-direct {p0, v0, p1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    return v4
.end method

.method private validateRedirectUri(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.azure.authenticator"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isValidAuthenticatorRedirectUri()Z

    move-result p1

    xor-int/2addr p1, v1

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->hasSchemeAndAuthority(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    move p1, v1

    :goto_1
    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid, null, or malformed redirect_uri supplied"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyRedirectUriWithAppSignature()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":verifyRedirectUriWithAppSignature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/microsoft/identity/common/internal/broker/PackageHelper;->getSignatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    if-lez v3, :cond_1

    aget-object v2, v2, v4

    const-string v3, "SHA"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "msauth"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string v3, "redirect_uri_validation_error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The redirect URI in the configuration file doesn\'t match with the one generated with package name and signature hash. Please verify the uri in the config file and your app registration in Azure portal.We expected \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and we received \'"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const-string v2, "Unexpected error in verifyRedirectUriWithAppSignature()"

    invoke-static {v0, v2, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/microsoft/identity/client/exception/MsalClientException;

    const-string/jumbo v3, "unknown_error"

    invoke-direct {v0, v3, v2, v1}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public authorizationInCurrentTask()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isAuthorizationInCurrentTask:Ljava/lang/Boolean;

    return-object v0
.end method

.method public checkIntentFilterAddedToAppManifestForBrokerFlow()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":checkIntentFilterAddedToAppManifestForBrokerFlow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    move-result-object v1

    sget-object v2, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->DEFAULT:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    move-result-object v1

    sget-object v2, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->BROWSER:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->validateCustomTabRedirectActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v0, Lcom/microsoft/identity/client/BrowserTabActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->getInstance()Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/configuration/LibraryConfiguration;->isAuthorizationInCurrentTask()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/microsoft/identity/client/CurrentTaskBrowserTabActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/microsoft/identity/client/exception/MsalClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent filter for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is missing.  Please make sure you have the following activity in your AndroidManifest.xml \n\n<activity android:name=\"com.microsoft.identity.client."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\">\n\t<intent-filter>\n\t\t<action android:name=\"android.intent.action.VIEW\" />\n\t\t<category android:name=\"android.intent.category.DEFAULT\" />\n\t\t<category android:name=\"android.intent.category.BROWSABLE\" />\n\t\t<data\n\t\t\tandroid:host=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"\n\t\t\tandroid:path=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"\n\t\t\tandroid:scheme=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" />\n\t</intent-filter>\n</activity>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_manifest_validation_error"

    invoke-direct {v2, v1, v0}, Lcom/microsoft/identity/client/exception/MsalClientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mUseBroker:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.azure.authenticator"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isValidAuthenticatorRedirectUri()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isBrokerRedirectUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "The app is still using legacy MSAL redirect uri. Switch to MSAL local auth.  For brokered auth, the redirect URI is expected to conform to \'msauth://<authority>/.*\' where the authority in that uri is the package name of the app. This package name is listed as \'applicationId\' in the build.gradle file."

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/internal/logging/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mUseBroker:Ljava/lang/Boolean;

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->verifyRedirectUriWithAppSignature()V

    return-void
.end method

.method public getAccountMode()Lcom/microsoft/identity/client/configuration/AccountMode;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAccountMode:Lcom/microsoft/identity/client/configuration/AccountMode;

    return-object v0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getAuthorities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/authorities/Authority;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    return-object v0
.end method

.method public getAuthorizationAgent()Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    return-object v0
.end method

.method public getBrowserSafeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/ui/BrowserDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mBrowserSafeList:Ljava/util/List;

    return-object v0
.end method

.method public getClientCapabilities()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientCapabilities:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;
    .locals 4

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/identity/common/java/authorities/Authority;

    invoke-virtual {v2}, Lcom/microsoft/identity/common/java/authorities/Authority;->getDefault()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/java/authorities/Authority;

    return-object v0

    :cond_3
    return-object v1
.end method

.method public getEnvironment()Lcom/microsoft/identity/common/java/authorities/Environment;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;

    return-object v0
.end method

.method public getHttpConfiguration()Lcom/microsoft/identity/client/configuration/HttpConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mHttpConfiguration:Lcom/microsoft/identity/client/configuration/HttpConfiguration;

    return-object v0
.end method

.method public getIsSharedDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mIsSharedDevice:Z

    return v0
.end method

.method public getLoggerConfiguration()Lcom/microsoft/identity/client/configuration/LoggerConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mLoggerConfiguration:Lcom/microsoft/identity/client/configuration/LoggerConfiguration;

    return-object v0
.end method

.method public getMultipleCloudsSupported()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mMultipleCloudsSupported:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOAuth2TokenCache()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mOAuth2TokenCache:Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredBrokerProtocolVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRequiredBrokerProtocolVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTelemetryConfiguration()Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mTelemetryConfiguration:Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

    return-object v0
.end method

.method public getUseBroker()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mUseBroker:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isDefaultAuthorityConfigured()Z
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHandleNullTaskAffinityEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->handleNullTaskAffinity:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isPowerOptCheckForEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->powerOptCheckEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isWebViewZoomControlsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomControlsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isWebViewZoomEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public mergeConfiguration(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)V
    .locals 2

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientId:Ljava/lang/String;

    :cond_0
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientId:Ljava/lang/String;

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    :cond_1
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    :cond_2
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    :cond_3
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;

    :cond_4
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mEnvironment:Lcom/microsoft/identity/common/java/authorities/Environment;

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mHttpConfiguration:Lcom/microsoft/identity/client/configuration/HttpConfiguration;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mHttpConfiguration:Lcom/microsoft/identity/client/configuration/HttpConfiguration;

    :cond_5
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mHttpConfiguration:Lcom/microsoft/identity/client/configuration/HttpConfiguration;

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mMultipleCloudsSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mMultipleCloudsSupported:Ljava/lang/Boolean;

    :cond_6
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mMultipleCloudsSupported:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mUseBroker:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mUseBroker:Ljava/lang/Boolean;

    :cond_7
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mUseBroker:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mTelemetryConfiguration:Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mTelemetryConfiguration:Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

    :cond_8
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mTelemetryConfiguration:Lcom/microsoft/identity/common/internal/telemetry/TelemetryConfiguration;

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRequiredBrokerProtocolVersion:Ljava/lang/String;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRequiredBrokerProtocolVersion:Ljava/lang/String;

    :cond_9
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRequiredBrokerProtocolVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mBrowserSafeList:Ljava/util/List;

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mBrowserSafeList:Ljava/util/List;

    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mBrowserSafeList:Ljava/util/List;

    goto :goto_0

    :cond_a
    iget-object v1, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mBrowserSafeList:Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    :goto_0
    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAccountMode:Lcom/microsoft/identity/client/configuration/AccountMode;

    sget-object v1, Lcom/microsoft/identity/client/configuration/AccountMode;->MULTIPLE:Lcom/microsoft/identity/client/configuration/AccountMode;

    if-eq v0, v1, :cond_c

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAccountMode:Lcom/microsoft/identity/client/configuration/AccountMode;

    :goto_1
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAccountMode:Lcom/microsoft/identity/client/configuration/AccountMode;

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientCapabilities:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientCapabilities:Ljava/lang/String;

    :cond_d
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientCapabilities:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mIsSharedDevice:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-boolean v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mIsSharedDevice:Z

    :cond_e
    iput-boolean v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mIsSharedDevice:Z

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mLoggerConfiguration:Lcom/microsoft/identity/client/configuration/LoggerConfiguration;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mLoggerConfiguration:Lcom/microsoft/identity/client/configuration/LoggerConfiguration;

    :cond_f
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mLoggerConfiguration:Lcom/microsoft/identity/client/configuration/LoggerConfiguration;

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomControlsEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomControlsEnabled:Ljava/lang/Boolean;

    :cond_10
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomControlsEnabled:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomEnabled:Ljava/lang/Boolean;

    :cond_11
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomEnabled:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->powerOptCheckEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->powerOptCheckEnabled:Ljava/lang/Boolean;

    :cond_12
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->powerOptCheckEnabled:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->handleNullTaskAffinity:Ljava/lang/Boolean;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->handleNullTaskAffinity:Ljava/lang/Boolean;

    :cond_13
    iput-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->handleNullTaskAffinity:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isAuthorizationInCurrentTask:Ljava/lang/Boolean;

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isAuthorizationInCurrentTask:Ljava/lang/Boolean;

    :cond_14
    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->isAuthorizationInCurrentTask:Ljava/lang/Boolean;

    return-void
.end method

.method public setAppContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientId:Ljava/lang/String;

    return-void
.end method

.method public setIsSharedDevice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mIsSharedDevice:Z

    return-void
.end method

.method public setOAuth2TokenCache(Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mOAuth2TokenCache:Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;

    return-void
.end method

.method public setPowerOptCheckEnabled(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->powerOptCheckEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setRedirectUri(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    return-void
.end method

.method public setTokenCacheSecretKeys([B)V
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->INSTANCE:Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/adal/internal/AuthenticationSettings;->setSecretKey([B)V

    return-void
.end method

.method public setWebViewZoomControlsEnabled(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomControlsEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setWebViewZoomEnabled(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->webViewZoomEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public validateConfiguration()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mRedirectUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->validateRedirectUri(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mClientId:Ljava/lang/String;

    const-string v1, "client_id"

    invoke-static {v1, v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->nullConfigurationCheck(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->checkDefaultAuthoritySpecified()V

    invoke-direct {p0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->checkManifestPermissions()V

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorizationAgent:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    sget-object v1, Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;->WEBVIEW:Lcom/microsoft/identity/common/java/ui/AuthorizationAgent;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mBrowserSafeList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null browser safe list configured."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->mAuthorities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/identity/common/java/authorities/Authority;

    instance-of v2, v1, Lcom/microsoft/identity/common/java/authorities/UnknownAuthority;

    if-nez v2, :cond_3

    instance-of v2, v1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;

    invoke-direct {p0, v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->validateAzureActiveDirectoryAuthority(Lcom/microsoft/identity/common/java/authorities/AzureActiveDirectoryAuthority;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized authority type -- null, invalid or unknown type specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method
