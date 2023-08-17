.class public Lcom/microsoft/identity/common/java/dto/AccountRecord;
.super Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/dto/IAccountRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/dto/AccountRecord$SerializedNames;
    }
.end annotation


# instance fields
.field private mAlternativeAccountId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alternative_account_id"
    .end annotation
.end field

.field private mAuthorityType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authority_type"
    .end annotation
.end field

.field private mAvatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar_url"
    .end annotation
.end field

.field private mClientInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_info"
    .end annotation
.end field

.field private mEnvironment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "environment"
    .end annotation
.end field

.field private mFamilyName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "family_name"
    .end annotation
.end field

.field private mFirstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "first_name"
    .end annotation
.end field

.field private mHomeAccountId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "home_account_id"
    .end annotation
.end field

.field private mLocalAccountId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "local_account_id"
    .end annotation
.end field

.field private mMiddleName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "middle_name"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mRealm:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "realm"
    .end annotation
.end field

.field private mUsername:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/dto/IAccountRecord;)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;-><init>()V

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getHomeAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setHomeAccountId(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setEnvironment(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getRealm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setRealm(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getLocalAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setLocalAccountId(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setUsername(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getAuthorityType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setAuthorityType(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getClientInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setClientInfo(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getAlternativeAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setAlternativeAccountId(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setFirstName(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setFamilyName(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getMiddleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setMiddleName(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setName(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/microsoft/identity/common/java/dto/IAccountRecord;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/identity/common/java/dto/AccountRecord;->setAvatarUrl(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;

    invoke-virtual {p1}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;->getAdditionalFields()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/dto/AccountCredentialBase;->setAdditionalFields(Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_a

    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;

    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mHomeAccountId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mHomeAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mHomeAccountId:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mEnvironment:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mEnvironment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mEnvironment:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    :cond_5
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mRealm:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mRealm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mRealm:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    :cond_7
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mLocalAccountId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mLocalAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mLocalAccountId:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    :cond_9
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mUsername:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_a
    iget-object v2, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mUsername:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_4
    return v1

    :cond_b
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAuthorityType:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAuthorityType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_5

    :cond_c
    iget-object v2, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAuthorityType:Ljava/lang/String;

    if-eqz v2, :cond_d

    :goto_5
    return v1

    :cond_d
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAlternativeAccountId:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAlternativeAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_6

    :cond_e
    iget-object v2, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAlternativeAccountId:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_6
    return v1

    :cond_f
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFirstName:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFirstName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_7

    :cond_10
    iget-object v2, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFirstName:Ljava/lang/String;

    if-eqz v2, :cond_11

    :goto_7
    return v1

    :cond_11
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFamilyName:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v3, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_8

    :cond_12
    iget-object v2, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFamilyName:Ljava/lang/String;

    if-eqz v2, :cond_13

    :goto_8
    return v1

    :cond_13
    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAvatarUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAvatarUrl:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9

    :cond_14
    if-nez p1, :cond_15

    goto :goto_9

    :cond_15
    move v0, v1

    :goto_9
    return v0

    :cond_16
    :goto_a
    return v1
.end method

.method public getAlternativeAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAlternativeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorityType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAuthorityType:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClientInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mClientInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mHomeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mLocalAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mHomeAccountId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mEnvironment:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mRealm:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mLocalAccountId:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mUsername:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAuthorityType:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAlternativeAccountId:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFirstName:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFamilyName:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAvatarUrl:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_9
    add-int/2addr v0, v1

    return v0
.end method

.method public setAlternativeAccountId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAlternativeAccountId:Ljava/lang/String;

    return-void
.end method

.method public setAuthorityType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAuthorityType:Ljava/lang/String;

    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setClientInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mClientInfo:Ljava/lang/String;

    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mEnvironment:Ljava/lang/String;

    return-void
.end method

.method public setFamilyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFamilyName:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mFirstName:Ljava/lang/String;

    return-void
.end method

.method public setHomeAccountId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mHomeAccountId:Ljava/lang/String;

    return-void
.end method

.method public setLocalAccountId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mLocalAccountId:Ljava/lang/String;

    return-void
.end method

.method public setMiddleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mMiddleName:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mName:Ljava/lang/String;

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mRealm:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/dto/AccountRecord;->mUsername:Ljava/lang/String;

    return-void
.end method
