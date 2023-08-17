.class public Lcom/microsoft/identity/common/java/cache/BrokerApplicationMetadata;
.super Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/cache/BrokerApplicationMetadata$SerializedNames;
    }
.end annotation


# instance fields
.field private mFoci:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "family_id"
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
    .locals 0

    invoke-super {p0, p1}, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFoci()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/cache/BrokerApplicationMetadata;->mFoci:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata;->hashCode()I

    move-result v0

    return v0
.end method

.method public setFoci(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/BrokerApplicationMetadata;->mFoci:Ljava/lang/String;

    return-void
.end method
