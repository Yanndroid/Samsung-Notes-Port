.class public final enum Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/exception/BrokerCommunicationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

.field public static final enum CONNECTION_ERROR:Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

.field public static final enum OPERATION_NOT_SUPPORTED_ON_CLIENT_SIDE:Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

.field public static final enum OPERATION_NOT_SUPPORTED_ON_SERVER_SIDE:Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    const-string v1, "OPERATION_NOT_SUPPORTED_ON_CLIENT_SIDE"

    const/4 v2, 0x0

    const-string v3, "ipc_operation_not_supported_on_client_side"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;->OPERATION_NOT_SUPPORTED_ON_CLIENT_SIDE:Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    new-instance v1, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    const-string v3, "OPERATION_NOT_SUPPORTED_ON_SERVER_SIDE"

    const/4 v4, 0x1

    const-string v5, "ipc_operation_not_supported_on_server_side"

    invoke-direct {v1, v3, v4, v5}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;->OPERATION_NOT_SUPPORTED_ON_SERVER_SIDE:Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    new-instance v3, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    const-string v5, "CONNECTION_ERROR"

    const/4 v6, 0x2

    const-string v7, "ipc_connection_error"

    invoke-direct {v3, v5, v6, v7}, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;->CONNECTION_ERROR:Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;->$VALUES:[Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;->$VALUES:[Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/exception/BrokerCommunicationException$Category;->name:Ljava/lang/String;

    return-object v0
.end method
