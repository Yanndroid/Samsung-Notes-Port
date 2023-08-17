.class public abstract Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata$SerializedNames;
    }
.end annotation


# instance fields
.field private mClientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_id"
    .end annotation
.end field

.field private mEnvironment:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "environment"
    .end annotation
.end field

.field private mUid:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "application_uid"
    .end annotation
.end field


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
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;

    iget v2, p0, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mUid:I

    iget v3, p1, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mUid:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mClientId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mClientId:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    :cond_4
    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mEnvironment:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mEnvironment:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mUid:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mClientId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mEnvironment:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mUid:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mClientId:Ljava/lang/String;

    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mEnvironment:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->mUid:I

    return-void
.end method
