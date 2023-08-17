.class public Lcom/microsoft/identity/common/internal/broker/BrokerResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;,
        Lcom/microsoft/identity/common/internal/broker/BrokerResult$SerializedNames;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7770e60a765ce419L


# instance fields
.field private mAccessToken:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field private mAuthority:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authority"
    .end annotation
.end field

.field private mCachedAt:J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cached_at"
    .end annotation
.end field

.field private mCliTelemErrorCode:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cli_telem_error_code"
    .end annotation
.end field

.field private mCliTelemSubErrorCode:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cli_telem_suberror_code"
    .end annotation
.end field

.field private mClientId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_id"
    .end annotation
.end field

.field private mClientInfo:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_info"
    .end annotation
.end field

.field private mCorrelationId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "correlation_id"
    .end annotation
.end field

.field private mEnvironment:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "environment"
    .end annotation
.end field

.field private mErrorCode:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "broker_error_code"
    .end annotation
.end field

.field private mErrorMessage:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "broker_error_message"
    .end annotation
.end field

.field private final mExceptionType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "broker_exception_type"
    .end annotation
.end field

.field private mExpiresOn:J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_on"
    .end annotation
.end field

.field private mExtendedExpiresOn:J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ext_expires_on"
    .end annotation
.end field

.field private mFamilyId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "family_id"
    .end annotation
.end field

.field private mHomeAccountId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "home_account_id"
    .end annotation
.end field

.field private mHttpResponseBody:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "http_response_body"
    .end annotation
.end field

.field private mHttpResponseHeaders:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "http_response_headers"
    .end annotation
.end field

.field private mHttpStatusCode:I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "http_response_code"
    .end annotation
.end field

.field private mIdToken:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id_token"
    .end annotation
.end field

.field private mLocalAccountId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "local_account_id"
    .end annotation
.end field

.field private mRefreshToken:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_token"
    .end annotation
.end field

.field private mRefreshTokenAge:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_token_age"
    .end annotation
.end field

.field private mScope:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scopes"
    .end annotation
.end field

.field private mServicedFromCache:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serviced_from_cache"
    .end annotation
.end field

.field private mSpeRing:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "spe_ring"
    .end annotation
.end field

.field private mSubErrorCode:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "oauth_sub_error"
    .end annotation
.end field

.field private mSuccess:Z
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
    .end annotation
.end field

.field private mTenantId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tenant_id"
    .end annotation
.end field

.field private final mTenantProfileData:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tenant_profile_cache_records"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTokenType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token_type"
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
.method private constructor <init>(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)V
    .locals 2
    .param p1    # Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$000(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mAccessToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$100(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mIdToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$200(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mRefreshToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$300(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHomeAccountId:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$400(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mLocalAccountId:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$500(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mUserName:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$600(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTokenType:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$700(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mClientId:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$800(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mFamilyId:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$900(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mScope:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1000(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mClientInfo:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1100(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mAuthority:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1200(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mEnvironment:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1300(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTenantId:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1400(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExpiresOn:J

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1500(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExtendedExpiresOn:J

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1600(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCachedAt:J

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1700(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSpeRing:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1800(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mRefreshTokenAge:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$1900(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSuccess:Z

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2000(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTenantProfileData:Ljava/util/List;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2100(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mServicedFromCache:Z

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2200(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mErrorCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2300(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mErrorMessage:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2400(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCorrelationId:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2500(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSubErrorCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2600(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpStatusCode:I

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2700(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpResponseBody:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2800(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpResponseHeaders:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$2900(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCliTelemErrorCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$3000(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCliTelemSubErrorCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->access$3100(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExceptionType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;Lcom/microsoft/identity/common/internal/broker/BrokerResult$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;-><init>(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCachedAt:J

    return-wide v0
.end method

.method public getCliTelemErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCliTelemErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCliTelemSubErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCliTelemSubErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mClientInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExceptionType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresOn()J
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExpiresOn:J

    return-wide v0
.end method

.method public getExtendedExpiresOn()J
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mExtendedExpiresOn:J

    return-wide v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHomeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpResponseBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpResponseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpResponseHeaders()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpResponseHeaders:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    iget v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mHttpStatusCode:I

    return v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mIdToken:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mLocalAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTokenAge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mRefreshTokenAge:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mScope:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeRing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSpeRing:Ljava/lang/String;

    return-object v0
.end method

.method public getSubErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSubErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTenantId:Ljava/lang/String;

    return-object v0
.end method

.method public getTenantProfileData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTenantProfileData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTenantProfileData:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public isServicedFromCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mServicedFromCache:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;->mSuccess:Z

    return v0
.end method
