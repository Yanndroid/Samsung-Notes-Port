.class public abstract Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/dto/IRefreshTokenRecord;


# instance fields
.field private mRawRefreshToken:Ljava/lang/String;

.field private mTokenReceivedTime:J


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getResponseReceivedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;->mTokenReceivedTime:J

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;->mRawRefreshToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;->mRawRefreshToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;->mRawRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenReceivedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;->mTokenReceivedTime:J

    return-wide v0
.end method

.method public setRawRefreshToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;->mRawRefreshToken:Ljava/lang/String;

    return-void
.end method

.method public setTokenReceivedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/microsoft/identity/common/java/providers/oauth2/RefreshToken;->mTokenReceivedTime:J

    return-void
.end method
