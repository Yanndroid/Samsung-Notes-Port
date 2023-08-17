.class public Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;
.super Lcom/google/api/client/testing/http/MockHttpTransport;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# static fields
.field public static final JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

.field private static final METADATA_SERVER_URL:Ljava/lang/String;

.field private static final METADATA_TOKEN_SERVER_URL:Ljava/lang/String;


# instance fields
.field public accessToken:Ljava/lang/String;

.field public tokenRequestStatusCode:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->getMetadataServerUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->METADATA_SERVER_URL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/computeMetadata/v1/instance/service-accounts/default/token"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->METADATA_TOKEN_SERVER_URL:Ljava/lang/String;

    new-instance v0, Lcom/google/api/client/json/jackson2/JacksonFactory;

    invoke-direct {v0}, Lcom/google/api/client/json/jackson2/JacksonFactory;-><init>()V

    sput-object v0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/testing/http/MockHttpTransport;-><init>()V

    iput-object p1, p0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->accessToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 1

    sget-object v0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->METADATA_TOKEN_SERVER_URL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport$1;

    invoke-direct {p1, p0, p2}, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport$1;-><init>(Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;Ljava/lang/String;)V

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->METADATA_SERVER_URL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport$2;

    invoke-direct {p1, p0, p2}, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport$2;-><init>(Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/api/client/testing/http/MockHttpTransport;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public setTokenRequestStatusCode(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->tokenRequestStatusCode:Ljava/lang/Integer;

    return-void
.end method
