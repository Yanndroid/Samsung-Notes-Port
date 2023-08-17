.class public Lcom/google/api/services/drive/DriveRequestInitializer;
.super Lcom/google/api/client/googleapis/services/json/CommonGoogleJsonClientRequestInitializer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/googleapis/services/json/CommonGoogleJsonClientRequestInitializer;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/json/CommonGoogleJsonClientRequestInitializer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/services/json/CommonGoogleJsonClientRequestInitializer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initializeDriveRequest(Lcom/google/api/services/drive/DriveRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/drive/DriveRequest<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public final initializeJsonRequest(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<",
            "*>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/json/CommonGoogleJsonClientRequestInitializer;->initializeJsonRequest(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)V

    check-cast p1, Lcom/google/api/services/drive/DriveRequest;

    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/DriveRequestInitializer;->initializeDriveRequest(Lcom/google/api/services/drive/DriveRequest;)V

    return-void
.end method
