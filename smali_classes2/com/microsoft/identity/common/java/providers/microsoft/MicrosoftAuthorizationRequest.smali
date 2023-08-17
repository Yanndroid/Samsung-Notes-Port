.class public abstract Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;
.super Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest<",
        "TT;>;>",
        "Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE_AWARE:Ljava/lang/String; = "instance_aware"

.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x5f640e8d7558398eL


# instance fields
.field private final transient mAuthority:Ljava/net/URL;

.field private final mCorrelationId:Ljava/util/UUID;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client-request-id"
    .end annotation
.end field

.field private final mDiagnosticCPU:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "x-client-CPU"
    .end annotation
.end field

.field private final mDiagnosticDM:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "x-client-DM"
    .end annotation
.end field

.field private final mDiagnosticOS:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "x-client-OS"
    .end annotation
.end field

.field private final mLibraryName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "x-client-SKU"
    .end annotation
.end field

.field private final mLibraryVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "x-client-Ver"
    .end annotation
.end field

.field private final mLoginHint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "login_hint"
    .end annotation
.end field

.field private final mMultipleCloudAware:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instance_aware"
    .end annotation
.end field

.field private final mPkceCodeChallenge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code_challenge"
    .end annotation
.end field

.field private final mPkceCodeChallengeMethod:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code_challenge_method"
    .end annotation
.end field

.field private final transient mPkceCodeVerifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest;-><init>(Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationRequest$Builder;)V

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->access$000(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mAuthority:Ljava/net/URL;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->access$100(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mLoginHint:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->access$200(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mCorrelationId:Ljava/util/UUID;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->access$300(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;->newPkceChallenge()Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->access$300(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;->getCodeChallengeMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mPkceCodeChallengeMethod:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;->getCodeChallenge()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mPkceCodeChallenge:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/providers/oauth2/PkceChallenge;->getCodeVerifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mPkceCodeVerifier:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->access$400(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mMultipleCloudAware:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->access$500(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mLibraryVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;->access$600(Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mLibraryName:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/identity/common/java/platform/Device;->getOsForEsts()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticOS:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/identity/common/java/platform/Device;->getModel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticDM:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/identity/common/java/platform/Device;->getCpu()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticCPU:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAuthority()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mAuthority:Ljava/net/URL;

    return-object v0
.end method

.method public getCorrelationId()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mCorrelationId:Ljava/util/UUID;

    return-object v0
.end method

.method public getDiagnosticCPU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticCPU:Ljava/lang/String;

    return-object v0
.end method

.method public getDiagnosticDM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticDM:Ljava/lang/String;

    return-object v0
.end method

.method public getDiagnosticOS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mDiagnosticOS:Ljava/lang/String;

    return-object v0
.end method

.method public getLibraryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mLibraryName:Ljava/lang/String;

    return-object v0
.end method

.method public getLibraryVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mLibraryVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginHint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mLoginHint:Ljava/lang/String;

    return-object v0
.end method

.method public getMultipleCloudAware()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mMultipleCloudAware:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPkceCodeChallenge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mPkceCodeChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public getPkceCodeChallengeMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mPkceCodeChallengeMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getPkceCodeVerifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationRequest;->mPkceCodeVerifier:Ljava/lang/String;

    return-object v0
.end method
