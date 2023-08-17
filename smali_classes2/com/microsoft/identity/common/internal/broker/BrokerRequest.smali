.class public Lcom/microsoft/identity/common/internal/broker/BrokerRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;,
        Lcom/microsoft/identity/common/internal/broker/BrokerRequest$SerializedNames;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x78a8442b37605eaL


# instance fields
.field private mApplicationName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_app_name"
    .end annotation
.end field

.field private mApplicationVersion:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_app_version"
    .end annotation
.end field

.field private mAuthenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authentication_scheme"
    .end annotation
.end field

.field private mAuthority:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authority"
    .end annotation
.end field

.field private mAuthorizationAgent:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authorization_agent"
    .end annotation
.end field

.field private mClaims:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "claims"
    .end annotation
.end field

.field private mClientId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_id"
    .end annotation
.end field

.field private mCorrelationId:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "correlation_id"
    .end annotation
.end field

.field private mEnvironment:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "environment"
    .end annotation
.end field

.field private mExtraOptions:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extra_options"
    .end annotation
.end field

.field private mExtraQueryStringParameter:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extra_query_param"
    .end annotation
.end field

.field private mForceRefresh:Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "force_refresh"
    .end annotation
.end field

.field private mHomeAccountId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "home_account_id"
    .end annotation
.end field

.field private mLocalAccountId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "local_account_id"
    .end annotation
.end field

.field private mMsalVersion:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_version"
    .end annotation
.end field

.field private mMultipleCloudsSupported:Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "multiple_clouds_supported"
    .end annotation
.end field

.field private mPowerOptCheckEnabled:Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "power_opt_check_enabled"
    .end annotation
.end field

.field private mPrompt:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prompt"
    .end annotation
.end field

.field private mRedirect:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "redirect_uri"
    .end annotation
.end field

.field private mScope:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scopes"
    .end annotation
.end field

.field private mSdkType:Lcom/microsoft/identity/common/java/request/SdkType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_sdk_type"
    .end annotation
.end field

.field private mUserName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/common/java/request/SdkType;Ljava/lang/String;ZLjava/lang/String;Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;Z)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Lcom/microsoft/identity/common/java/request/SdkType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p21    # Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p22    # Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p10

    move-object/from16 v6, p14

    move-object/from16 v7, p15

    move-object/from16 v8, p16

    move-object/from16 v9, p17

    move-object/from16 v10, p18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v11, "authority is marked non-null but is null"

    invoke-static {p1, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v11, "scope is marked non-null but is null"

    invoke-static {p2, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v11, "redirect is marked non-null but is null"

    invoke-static {p3, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v11, "clientId is marked non-null but is null"

    invoke-static {v4, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v11, "correlationId is marked non-null but is null"

    invoke-static {v5, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v11, "applicationName is marked non-null but is null"

    invoke-static {v6, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v11, "applicationVersion is marked non-null but is null"

    invoke-static {v7, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v11, "msalVersion is marked non-null but is null"

    invoke-static {v8, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v11, "sdkType is marked non-null but is null"

    invoke-static {v9, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v11, "environment is marked non-null but is null"

    invoke-static {v10, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAuthority:Ljava/lang/String;

    iput-object v2, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mScope:Ljava/lang/String;

    iput-object v3, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mRedirect:Ljava/lang/String;

    iput-object v4, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mClientId:Ljava/lang/String;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mUserName:Ljava/lang/String;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mHomeAccountId:Ljava/lang/String;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mLocalAccountId:Ljava/lang/String;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mExtraQueryStringParameter:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mExtraOptions:Ljava/lang/String;

    iput-object v5, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mCorrelationId:Ljava/lang/String;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mPrompt:Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mClaims:Ljava/lang/String;

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mForceRefresh:Z

    iput-object v6, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mApplicationName:Ljava/lang/String;

    iput-object v7, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mApplicationVersion:Ljava/lang/String;

    iput-object v8, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mMsalVersion:Ljava/lang/String;

    iput-object v9, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mSdkType:Lcom/microsoft/identity/common/java/request/SdkType;

    iput-object v10, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mEnvironment:Ljava/lang/String;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mMultipleCloudsSupported:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAuthorizationAgent:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAuthenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mPowerOptCheckEnabled:Z

    return-void
.end method

.method public static builder()Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;
    .locals 1

    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerRequest$BrokerRequestBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getApplicationName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mApplicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticationScheme()Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAuthenticationScheme:Lcom/microsoft/identity/common/java/authscheme/AbstractAuthenticationScheme;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationAgent()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mAuthorizationAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getClaims()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mClaims:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraOptions()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mExtraOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraQueryStringParameter()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mExtraQueryStringParameter:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeAccountId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mHomeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mLocalAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsalVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mMsalVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirect()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mRedirect:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mScope:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkType()Lcom/microsoft/identity/common/java/request/SdkType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mSdkType:Lcom/microsoft/identity/common/java/request/SdkType;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public isForceRefresh()Z
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mForceRefresh:Z

    return v0
.end method

.method public isMultipleCloudsSupported()Z
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mMultipleCloudsSupported:Z

    return v0
.end method

.method public isPowerOptCheckEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerRequest;->mPowerOptCheckEnabled:Z

    return v0
.end method
