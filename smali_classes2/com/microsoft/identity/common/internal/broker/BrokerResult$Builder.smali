.class public Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/broker/BrokerResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAuthority:Ljava/lang/String;

.field private mCachedAt:J

.field private mCliTelemErrorCode:Ljava/lang/String;

.field private mCliTelemSubErrorCode:Ljava/lang/String;

.field private mClientId:Ljava/lang/String;

.field private mClientInfo:Ljava/lang/String;

.field private mCorrelationId:Ljava/lang/String;

.field private mEnvironment:Ljava/lang/String;

.field private mErrorCode:Ljava/lang/String;

.field private mErrorMessage:Ljava/lang/String;

.field private mExceptionType:Ljava/lang/String;

.field private mExpiresOn:J

.field private mExtendedExpiresOn:J

.field private mFamilyId:Ljava/lang/String;

.field private mHomeAccountId:Ljava/lang/String;

.field private mHttpResponseBody:Ljava/lang/String;

.field private mHttpResponseHeaders:Ljava/lang/String;

.field private mHttpStatusCode:I

.field private mIdToken:Ljava/lang/String;

.field private mLocalAccountId:Ljava/lang/String;

.field private mNegotiatedBrokerProtocolVersion:Ljava/lang/String;

.field private mRefreshToken:Ljava/lang/String;

.field private mRefreshTokenAge:Ljava/lang/String;

.field private mScope:Ljava/lang/String;

.field private mServicedFromCache:Z

.field private mSpeRing:Ljava/lang/String;

.field private mSubErrorCode:Ljava/lang/String;

.field private mSuccess:Z

.field private mTenantId:Ljava/lang/String;

.field private mTenantProfileData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTokenType:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mIdToken:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mClientInfo:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mEnvironment:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mTenantId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mExpiresOn:J

    return-wide v0
.end method

.method public static synthetic access$1500(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mExtendedExpiresOn:J

    return-wide v0
.end method

.method public static synthetic access$1600(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mCachedAt:J

    return-wide v0
.end method

.method public static synthetic access$1700(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mSpeRing:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mRefreshTokenAge:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mSuccess:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mRefreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mTenantProfileData:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mServicedFromCache:Z

    return p0
.end method

.method public static synthetic access$2200(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mCorrelationId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mSubErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)I
    .locals 0

    iget p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mHttpStatusCode:I

    return p0
.end method

.method public static synthetic access$2700(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mHttpResponseBody:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mHttpResponseHeaders:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mCliTelemErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mHomeAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mCliTelemSubErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mExceptionType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mLocalAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mUserName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mTokenType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mFamilyId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mScope:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public accessToken(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method public authority(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/microsoft/identity/common/internal/broker/BrokerResult;
    .locals 2

    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/microsoft/identity/common/internal/broker/BrokerResult;-><init>(Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;Lcom/microsoft/identity/common/internal/broker/BrokerResult$1;)V

    return-object v0
.end method

.method public cachedAt(J)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mCachedAt:J

    return-object p0
.end method

.method public cliTelemErrorCode(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mCliTelemErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public cliTelemSubErrorCode(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mCliTelemSubErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public clientId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mClientId:Ljava/lang/String;

    return-object p0
.end method

.method public clientInfo(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mClientInfo:Ljava/lang/String;

    return-object p0
.end method

.method public correlationId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mCorrelationId:Ljava/lang/String;

    return-object p0
.end method

.method public environment(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mEnvironment:Ljava/lang/String;

    return-object p0
.end method

.method public errorCode(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public errorMessage(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public exceptionType(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mExceptionType:Ljava/lang/String;

    return-object p0
.end method

.method public expiresOn(J)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mExpiresOn:J

    return-object p0
.end method

.method public extendedExpiresOn(J)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mExtendedExpiresOn:J

    return-object p0
.end method

.method public familyId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mFamilyId:Ljava/lang/String;

    return-object p0
.end method

.method public homeAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mHomeAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public httpResponseBody(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mHttpResponseBody:Ljava/lang/String;

    return-object p0
.end method

.method public httpResponseHeaders(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mHttpResponseHeaders:Ljava/lang/String;

    return-object p0
.end method

.method public httpStatusCode(I)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mHttpStatusCode:I

    return-object p0
.end method

.method public idToken(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mIdToken:Ljava/lang/String;

    return-object p0
.end method

.method public localAccountId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mLocalAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public negotiatedBrokerProtocolVersion(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "URF_UNREAD_FIELD"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mNegotiatedBrokerProtocolVersion:Ljava/lang/String;

    return-object p0
.end method

.method public oauthSubErrorCode(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mSubErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method public refreshToken(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mRefreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public refreshTokenAge(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mRefreshTokenAge:Ljava/lang/String;

    return-object p0
.end method

.method public scope(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public servicedFromCache(Z)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mServicedFromCache:Z

    return-object p0
.end method

.method public speRing(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mSpeRing:Ljava/lang/String;

    return-object p0
.end method

.method public success(Z)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mSuccess:Z

    return-object p0
.end method

.method public tenantId(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mTenantId:Ljava/lang/String;

    return-object p0
.end method

.method public tenantProfileRecords(Ljava/util/List;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/microsoft/identity/common/java/cache/ICacheRecord;",
            ">;)",
            "Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mTenantProfileData:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public tokenType(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mTokenType:Ljava/lang/String;

    return-object p0
.end method

.method public userName(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerResult$Builder;->mUserName:Ljava/lang/String;

    return-object p0
.end method
