.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

.field public static final enum DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

.field public static final enum DEVICE_CONTROLLER_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

.field public static final enum DLS_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

.field public static final enum DLS_DIR_BAT:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;


# instance fields
.field public directory:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v1, "DEVICE_CONTROLLER_DIR"

    const/4 v2, 0x0

    const-string v3, "/v3/sdk/quotas"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DEVICE_CONTROLLER_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v3, "DATA_DELETE"

    const/4 v4, 0x1

    const-string v5, "/v3/sdk/indiv/delete"

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v5, "DLS_DIR"

    const/4 v6, 0x2

    const-string v7, ""

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    new-instance v5, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v8, "DLS_DIR_BAT"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR_BAT:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v9

    sput-object v7, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->directory:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;
    .locals 1

    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    return-object v0
.end method


# virtual methods
.method public getDirectory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->directory:Ljava/lang/String;

    return-object v0
.end method

.method public setDirectory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->directory:Ljava/lang/String;

    return-void
.end method
