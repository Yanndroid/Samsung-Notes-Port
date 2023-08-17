.class public Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;
.super Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;
.source "SourceFile"


# static fields
.field public static final CLOUD_GRAPH_HOST_NAME:Ljava/lang/String; = "cloud_graph_host_name"

.field public static final CLOUD_INSTANCE_HOST_NAME:Ljava/lang/String; = "cloud_instance_host_name"

.field public static final CLOUD_INSTANCE_NAME:Ljava/lang/String; = "cloud_instance_name"

.field public static final DEVICE_CODE:Ljava/lang/String; = "device_code"

.field public static final EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field public static final INTERVAL:Ljava/lang/String; = "interval"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final SESSION_STATE:Ljava/lang/String; = "session_state"

.field public static final USER_CODE:Ljava/lang/String; = "user_code"

.field public static final VERIFICATION_URI:Ljava/lang/String; = "verification_uri"


# instance fields
.field public mCloudGraphHostName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mCloudInstanceHostName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mCloudInstanceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mCorrelationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mDeviceCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mExpiresIn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mInterval:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mSessionState:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mUserCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mVerificationUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/identity/common/java/providers/oauth2/AuthorizationResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCloudGraphHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mCloudGraphHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudInstanceHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mCloudInstanceHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudInstanceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mCloudInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrelationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mCorrelationId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mDeviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mExpiresIn:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mInterval:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mSessionState:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mUserCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mVerificationUri:Ljava/lang/String;

    return-object v0
.end method

.method public setCorrelationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftAuthorizationResponse;->mCorrelationId:Ljava/lang/String;

    return-void
.end method
