.class public final enum Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

.field public static final enum ACCOUNT_MANAGER_ADD_ACCOUNT:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

.field public static final enum BOUND_SERVICE:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

.field public static final enum CONTENT_PROVIDER:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

.field public static final enum LEGACY_ACCOUNT_MANAGER_FOR_BROKER_API:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    const-string v1, "BOUND_SERVICE"

    const/4 v2, 0x0

    const-string v3, "bound_service"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;->BOUND_SERVICE:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    new-instance v1, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    const-string v3, "ACCOUNT_MANAGER_ADD_ACCOUNT"

    const/4 v4, 0x1

    const-string v5, "account_manager_add_account"

    invoke-direct {v1, v3, v4, v5}, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;->ACCOUNT_MANAGER_ADD_ACCOUNT:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    new-instance v3, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    const-string v5, "CONTENT_PROVIDER"

    const/4 v6, 0x2

    const-string v7, "content_provider"

    invoke-direct {v3, v5, v6, v7}, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;->CONTENT_PROVIDER:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    new-instance v5, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    const-string v7, "LEGACY_ACCOUNT_MANAGER_FOR_BROKER_API"

    const/4 v8, 0x3

    const-string v9, "legacy_account_manager_for_broker_api"

    invoke-direct {v5, v7, v8, v9}, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;->LEGACY_ACCOUNT_MANAGER_FOR_BROKER_API:Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;->$VALUES:[Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

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

    iput-object p3, p0, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;->$VALUES:[Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/ipc/IIpcStrategy$Type;->name:Ljava/lang/String;

    return-object v0
.end method
