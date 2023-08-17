.class public Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;
.super Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;
.source "SourceFile"


# static fields
.field private static final CLIENT_INFO:Ljava/lang/String; = "client_info"

.field private static final EXT_EXPIRES_IN:Ljava/lang/String; = "ext_expires_in"

.field private static final FAMILY_ID:Ljava/lang/String; = "foci"

.field private static final REFRESH_TOKEN_EXPIRES_IN:Ljava/lang/String; = "refresh_token_expires_in"

.field private static final SESSION_KEY_JWE:Ljava/lang/String; = "session_key_jwe"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mCliTelemErrorCode:Ljava/lang/String;

.field private mCliTelemSubErrorCode:Ljava/lang/String;

.field private transient mClientId:Ljava/lang/String;

.field private mClientInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_info"
    .end annotation
.end field

.field private mCloudInstanceHostName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cloud_instance_host_name"
    .end annotation
.end field

.field private mExtExpiresOn:Ljava/util/Date;

.field private mExtendedExpiresIn:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ext_expires_in"
    .end annotation
.end field

.field private mFamilyId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "foci"
    .end annotation
.end field

.field private mRefreshTokenAge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mRefreshTokenExpiresIn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_token_expires_in"
    .end annotation
.end field

.field private mSessionKeyJwe:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_key_jwe"
    .end annotation
.end field

.field private mSpeRing:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getCliTelemErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mCliTelemErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCliTelemSubErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mCliTelemSubErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mClientInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudInstanceHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mCloudInstanceHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtExpiresIn()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mExtendedExpiresIn:Ljava/lang/Long;

    return-object v0
.end method

.method public getExtExpiresOn()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mExtExpiresOn:Ljava/util/Date;

    invoke-static {v0}, Lcom/microsoft/identity/common/java/util/CopyUtil;->copyIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTokenAge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mRefreshTokenAge:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTokenExpiresIn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mRefreshTokenExpiresIn:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKeyJwe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mSessionKeyJwe:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeRing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mSpeRing:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method public setCliTelemErrorCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mCliTelemErrorCode:Ljava/lang/String;

    return-void
.end method

.method public setCliTelemSubErrorCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mCliTelemSubErrorCode:Ljava/lang/String;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mClientId:Ljava/lang/String;

    return-void
.end method

.method public setClientInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mClientInfo:Ljava/lang/String;

    return-void
.end method

.method public setCloudInstanceHostName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mCloudInstanceHostName:Ljava/lang/String;

    return-void
.end method

.method public setExtExpiresIn(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mExtendedExpiresIn:Ljava/lang/Long;

    return-void
.end method

.method public setExtExpiresOn(Ljava/util/Date;)V
    .locals 0

    invoke-static {p1}, Lcom/microsoft/identity/common/java/util/CopyUtil;->copyIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mExtExpiresOn:Ljava/util/Date;

    return-void
.end method

.method public setFamilyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mFamilyId:Ljava/lang/String;

    return-void
.end method

.method public setRefreshTokenAge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mRefreshTokenAge:Ljava/lang/String;

    return-void
.end method

.method public setRefreshTokenExpiresIn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mRefreshTokenExpiresIn:Ljava/lang/String;

    return-void
.end method

.method public setSessionKeyJwe(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mSessionKeyJwe:Ljava/lang/String;

    return-object p1
.end method

.method public setSpeRing(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mSpeRing:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MicrosoftTokenResponse{mExtExpiresOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mExtExpiresOn:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mClientInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mClientInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mClientId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mExtendedExpiresIn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mExtendedExpiresIn:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mFamilyId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftTokenResponse;->mFamilyId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/TokenResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
