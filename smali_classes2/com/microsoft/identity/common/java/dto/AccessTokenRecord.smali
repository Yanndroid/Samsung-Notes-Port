.class public Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;
.super Lcom/microsoft/identity/common/java/dto/Credential;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/dto/AccessTokenRecord$SerializedNames;
    }
.end annotation


# instance fields
.field private mAccessTokenType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "access_token_type"
        }
        value = "token_type"
    .end annotation
.end field

.field private mAuthority:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authority"
    .end annotation
.end field

.field private mExpiresOn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_on"
    .end annotation
.end field

.field private mExtendedExpiresOn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extended_expires_on"
    .end annotation
.end field

.field private mKid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kid"
    .end annotation
.end field

.field private mRealm:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "realm"
    .end annotation
.end field

.field private mRefreshOn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_on"
    .end annotation
.end field

.field private mRequestedClaims:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requested_claims"
    .end annotation
.end field

.field private mTarget:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/dto/Credential;-><init>()V

    return-void
.end method

.method private isExpired(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    new-instance p1, Ljava/util/Date;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;

    invoke-virtual {v1, p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/dto/Credential;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRequestedClaims:Ljava/lang/String;

    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRequestedClaims:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mKid:Ljava/lang/String;

    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mKid:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAccessTokenType:Ljava/lang/String;

    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAccessTokenType:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAuthority:Ljava/lang/String;

    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAuthority:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExtendedExpiresOn:Ljava/lang/String;

    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExtendedExpiresOn:Ljava/lang/String;

    if-nez p1, :cond_c

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    :goto_4
    return v2

    :cond_d
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRealm:Ljava/lang/String;

    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRealm:Ljava/lang/String;

    if-nez p1, :cond_e

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_e
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    :goto_5
    return v2

    :cond_f
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mTarget:Ljava/lang/String;

    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mTarget:Ljava/lang/String;

    if-nez p1, :cond_10

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_10
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    :goto_6
    return v2

    :cond_11
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExpiresOn:Ljava/lang/String;

    iget-object v3, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExpiresOn:Ljava/lang/String;

    if-nez p1, :cond_12

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_12
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    :goto_7
    return v2

    :cond_13
    iget-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRefreshOn:Ljava/lang/String;

    iget-object v1, v1, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRefreshOn:Ljava/lang/String;

    if-nez p1, :cond_14

    if-eqz v1, :cond_15

    goto :goto_8

    :cond_14
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    :goto_8
    return v2

    :cond_15
    return v0
.end method

.method public getAccessTokenType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAccessTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresOn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExpiresOn:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedExpiresOn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExtendedExpiresOn:Ljava/lang/String;

    return-object v0
.end method

.method public getKid()Ljava/lang/String;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mKid:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshOn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRefreshOn:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedClaims()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRequestedClaims:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-super {p0}, Lcom/microsoft/identity/common/java/dto/Credential;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRequestedClaims:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mKid:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAccessTokenType:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAuthority:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExtendedExpiresOn:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRealm:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mTarget:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExpiresOn:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRefreshOn:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    return v0
.end method

.method public isExpired()Z
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getExpiresOn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->isExpired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public refreshOnIsActive()Z
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getExpiresOn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getRefreshOn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setAccessTokenType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAccessTokenType:Ljava/lang/String;

    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method public setExpiresOn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExpiresOn:Ljava/lang/String;

    return-void
.end method

.method public setExtendedExpiresOn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mExtendedExpiresOn:Ljava/lang/String;

    return-void
.end method

.method public setKid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mKid:Ljava/lang/String;

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRealm:Ljava/lang/String;

    return-void
.end method

.method public setRefreshOn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRefreshOn:Ljava/lang/String;

    return-void
.end method

.method public setRequestedClaims(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mRequestedClaims:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->mTarget:Ljava/lang/String;

    return-void
.end method

.method public shouldRefresh()Z
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->getRefreshOn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->isExpired(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;->isExpired()Z

    move-result v0

    return v0
.end method
