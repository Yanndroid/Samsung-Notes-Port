.class public Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;
.super Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationErrorResponse;
.source "SourceFile"


# instance fields
.field private mErrorSubcode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationErrorResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationErrorResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;->mErrorSubcode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorSubcode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;->mErrorSubcode:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorSubcode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/microsoftsts/MicrosoftStsAuthorizationErrorResponse;->mErrorSubcode:Ljava/lang/String;

    return-void
.end method
