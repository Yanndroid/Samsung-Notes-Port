.class public final Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest$Builder;
.super Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder<",
        "Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mPrompt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest;
    .locals 2

    new-instance v0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest;-><init>(Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest$Builder;Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest$Builder;->build()Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest;

    move-result-object v0

    return-object v0
.end method

.method public self()Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest$Builder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest$Builder;->self()Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPrompt(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest$Builder;
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "URF_UNREAD_FIELD"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/providers/microsoft/azureactivedirectoryb2c/AzureActiveDirectoryB2CAuthorizationRequest$Builder;->mPrompt:Ljava/lang/String;

    return-object p0
.end method
