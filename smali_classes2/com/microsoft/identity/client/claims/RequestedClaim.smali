.class public Lcom/microsoft/identity/client/claims/RequestedClaim;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mInformation:Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/microsoft/identity/client/claims/RequestedClaim;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/microsoft/identity/client/claims/RequestedClaim;

    iget-object v1, p0, Lcom/microsoft/identity/client/claims/RequestedClaim;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/microsoft/identity/client/claims/RequestedClaim;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/microsoft/identity/client/claims/RequestedClaim;->mInformation:Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    iget-object p1, p1, Lcom/microsoft/identity/client/claims/RequestedClaim;->mInformation:Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAdditionalInformation()Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/claims/RequestedClaim;->mInformation:Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/claims/RequestedClaim;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/client/claims/RequestedClaim;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/microsoft/identity/client/claims/RequestedClaim;->mInformation:Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setAdditionalInformation(Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/claims/RequestedClaim;->mInformation:Lcom/microsoft/identity/client/claims/RequestedClaimAdditionalInformation;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/claims/RequestedClaim;->mName:Ljava/lang/String;

    return-void
.end method
