.class public Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationErrorResponse;
.super Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationErrorResponse;
.source "SourceFile"


# instance fields
.field private mErrorCodes:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationErrorResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getErrorCodes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationErrorResponse;->mErrorCodes:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCodes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/azureactivedirectory/AzureActiveDirectoryAuthorizationErrorResponse;->mErrorCodes:Ljava/lang/String;

    return-void
.end method
