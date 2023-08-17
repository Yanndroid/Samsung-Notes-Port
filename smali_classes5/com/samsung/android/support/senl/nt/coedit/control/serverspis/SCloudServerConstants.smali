.class public Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerConstants$Response;,
        Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerConstants$Method;
    }
.end annotation


# static fields
.field public static final APP_VERSION_HEADER:Ljava/lang/String; = "x-sn-app-ver"

.field public static final AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field public static final CID_PARM:Ljava/lang/String; = "cid"

.field private static final CID_SDOCX:Ljava/lang/String; = "LeAmLaorme"

.field public static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "Content-Length"

.field public static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field public static final DOMAIN_URL:Ljava/lang/String;

.field public static final GROUP_ID_HEADER:Ljava/lang/String; = "x-sc-group-id"

.field public static final MODEL_NAME_HEADER:Ljava/lang/String; = "x-sn-model-name"

.field public static final NETWORK_INFO_HEADER:Ljava/lang/String; = "x-sc-network"

.field public static final PATH_COEDIT_GET_JWT_TOKEN:Ljava/lang/String; = "/token"

.field public static final PATH_COEDIT_V1:Ljava/lang/String; = "/coedit/v1"

.field public static final RANGE_HEADER:Ljava/lang/String; = "Range"

.field public static final REQUEST_ID_HEADER:Ljava/lang/String; = "x-sc-request-id"

.field public static final SDK_VERSION_HEADER:Ljava/lang/String; = "x-sn-sdk-ver"

.field public static final USER_AGENT_HEADER:Ljava/lang/String; = "user-agent"

.field public static final UUID_PARAM:Ljava/lang/String; = "uuid"

.field public static final WORKSPACEID_PARM:Ljava/lang/String; = "workspaceId"

.field public static final XML_VERSION_HEADER:Ljava/lang/String; = "x-sn-xml-ver"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->IS_STG_SERVER:Z

    if-eqz v0, :cond_0

    const-string v0, "https://stg-api.samsungcloud.com"

    goto :goto_0

    :cond_0
    const-string v0, "https://api.samsungcloud.com"

    :goto_0
    sput-object v0, Lcom/samsung/android/support/senl/nt/coedit/control/serverspis/SCloudServerConstants;->DOMAIN_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSDocxCID()Ljava/lang/String;
    .locals 1

    const-string v0, "LeAmLaorme"

    return-object v0
.end method
