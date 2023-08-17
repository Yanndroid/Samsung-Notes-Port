.class public Lcom/microsoft/identity/common/java/registry/BrokerApplicationRegistryData;
.super Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/registry/BrokerApplicationRegistryData$SerializedNames;
    }
.end annotation


# instance fields
.field private mWpjAccountAccessAllowed:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wpj_account_access_allowed"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;-><init>()V

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

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/microsoft/identity/common/java/registry/BrokerApplicationRegistryData;

    iget-boolean v2, p0, Lcom/microsoft/identity/common/java/registry/BrokerApplicationRegistryData;->mWpjAccountAccessAllowed:Z

    iget-boolean p1, p1, Lcom/microsoft/identity/common/java/registry/BrokerApplicationRegistryData;->mWpjAccountAccessAllowed:Z

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/microsoft/identity/common/java/registry/BrokerApplicationRegistryData;->mWpjAccountAccessAllowed:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isWpjAccountAccessAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/registry/BrokerApplicationRegistryData;->mWpjAccountAccessAllowed:Z

    return v0
.end method

.method public setWpjAccountAccessAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/registry/BrokerApplicationRegistryData;->mWpjAccountAccessAllowed:Z

    return-void
.end method
