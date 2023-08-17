.class public Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Configuration;
.super Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Configuration;
.source "SourceFile"


# instance fields
.field private mAuthorityHostValidationEnabled:Z

.field private mAuthorityUrl:Ljava/net/URL;

.field private mFlightParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMultipleCloudsSupported:Z

.field private mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2Configuration;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Configuration;->mAuthorityHostValidationEnabled:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Configuration;->mFlightParameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAuthorityUrl()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Configuration;->mAuthorityUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getFlightParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Configuration;->mFlightParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getMultipleCloudsSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Configuration;->mMultipleCloudsSupported:Z

    return v0
.end method

.method public getSlice()Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Configuration;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    return-object v0
.end method

.method public isAuthorityHostValidationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Configuration;->mAuthorityHostValidationEnabled:Z

    return v0
.end method

.method public setAuthorityHostValidationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Configuration;->mAuthorityHostValidationEnabled:Z

    return-void
.end method

.method public setAuthorityUrl(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Configuration;->mAuthorityUrl:Ljava/net/URL;

    return-void
.end method

.method public setFlightParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Configuration;->mFlightParameters:Ljava/util/Map;

    return-void
.end method

.method public setMultipleCloudsSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Configuration;->mMultipleCloudsSupported:Z

    return-void
.end method

.method public setSlice(Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryOAuth2Configuration;->mSlice:Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectorySlice;

    return-void
.end method
