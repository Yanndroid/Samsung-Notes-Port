.class public Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;
.super Lcom/microsoft/identity/common/java/dto/Credential;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord$SerializedNames;
    }
.end annotation


# instance fields
.field private mExpiresOn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_on"
    .end annotation
.end field

.field private mFamilyId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "family_id"
    .end annotation
.end field

.field private mPrtProtocolVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prt_protocol_version"
    .end annotation
.end field

.field private mSessionKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_key"
    .end annotation
.end field

.field private mSessionKeyRollingDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_key_rolling_date"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/dto/Credential;-><init>()V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;

    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mFamilyId:Ljava/lang/String;

    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mFamilyId:Ljava/lang/String;

    if-nez p1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mExpiresOn:Ljava/lang/String;

    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mExpiresOn:Ljava/lang/String;

    if-nez p1, :cond_6

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_1
    return v2

    :cond_7
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKey:Ljava/lang/String;

    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKey:Ljava/lang/String;

    if-nez p1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :goto_2
    return v2

    :cond_9
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mPrtProtocolVersion:Ljava/lang/String;

    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mPrtProtocolVersion:Ljava/lang/String;

    if-nez p1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_a
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    :goto_3
    return v2

    :cond_b
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKeyRollingDate:Ljava/lang/String;

    iget-object v1, v1, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKeyRollingDate:Ljava/lang/String;

    if-nez p1, :cond_c

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    :goto_4
    return v2

    :cond_d
    return v0
.end method

.method public getExpiresOn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mExpiresOn:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrtProtocolVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mPrtProtocolVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKeyRollingDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKeyRollingDate:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-super {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mFamilyId:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x3b

    const/16 v2, 0x2b

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mExpiresOn:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKey:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mPrtProtocolVersion:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKeyRollingDate:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public isExpired()Z
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->getExpiresOn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->isExpired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isExpired(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setExpiresOn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mExpiresOn:Ljava/lang/String;

    return-void
.end method

.method public setFamilyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mFamilyId:Ljava/lang/String;

    return-void
.end method

.method public setPrtProtocolVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mPrtProtocolVersion:Ljava/lang/String;

    return-void
.end method

.method public setSessionKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKey:Ljava/lang/String;

    return-void
.end method

.method public setSessionKeyRollingDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKeyRollingDate:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrimaryRefreshTokenRecord{mFamilyId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mFamilyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mExpiresOn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mExpiresOn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSessionKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPrtProtocolVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mPrtProtocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSessionKeyRollingDate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;->mSessionKeyRollingDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
