.class public Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TOKEN_TYPE_ACCESS:Ljava/lang/String; = "accessToken"

.field public static final TOKEN_TYPE_AUTH_CODE:Ljava/lang/String; = "authCode"

.field public static final TOKEN_TYPE_REFRESH:Ljava/lang/String; = "refreshToken"


# instance fields
.field private mApiServerUrl:Ljava/lang/String;

.field private mAuthServerUrl:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mTokenIssuedTime:J

.field private mTokenType:Ljava/lang/String;

.field private mTokenValidityPeriod:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiServerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->mApiServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthServerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->mAuthServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenIssuedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->mTokenIssuedTime:J

    return-wide v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->mTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenValidityPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->mTokenValidityPeriod:J

    return-wide v0
.end method

.method public setApiServerUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->mApiServerUrl:Ljava/lang/String;

    return-void
.end method

.method public setAuthServerUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->mAuthServerUrl:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->mToken:Ljava/lang/String;

    return-void
.end method

.method public setTokenIssuedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->mTokenIssuedTime:J

    return-void
.end method

.method public setTokenType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->mTokenType:Ljava/lang/String;

    return-void
.end method

.method public setTokenValidityPeriod(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/TokenInfo;->mTokenValidityPeriod:J

    return-void
.end method
