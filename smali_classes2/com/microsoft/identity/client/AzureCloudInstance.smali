.class public final enum Lcom/microsoft/identity/client/AzureCloudInstance;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/client/AzureCloudInstance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/client/AzureCloudInstance;

.field public static final enum AzureChina:Lcom/microsoft/identity/client/AzureCloudInstance;

.field public static final enum AzureGermany:Lcom/microsoft/identity/client/AzureCloudInstance;

.field public static final enum AzurePublic:Lcom/microsoft/identity/client/AzureCloudInstance;

.field public static final enum AzureUsGov:Lcom/microsoft/identity/client/AzureCloudInstance;


# instance fields
.field private cloudInstanceUri:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/microsoft/identity/client/AzureCloudInstance;

    const-string v1, "AzurePublic"

    const/4 v2, 0x0

    const-string v3, "https://login.microsoftonline.com"

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/identity/client/AzureCloudInstance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/identity/client/AzureCloudInstance;->AzurePublic:Lcom/microsoft/identity/client/AzureCloudInstance;

    new-instance v1, Lcom/microsoft/identity/client/AzureCloudInstance;

    const-string v3, "AzureChina"

    const/4 v4, 0x1

    const-string v5, "https://login.partner.microsoftonline.cn"

    invoke-direct {v1, v3, v4, v5}, Lcom/microsoft/identity/client/AzureCloudInstance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/microsoft/identity/client/AzureCloudInstance;->AzureChina:Lcom/microsoft/identity/client/AzureCloudInstance;

    new-instance v3, Lcom/microsoft/identity/client/AzureCloudInstance;

    const-string v5, "AzureGermany"

    const/4 v6, 0x2

    const-string v7, "https://login.microsoftonline.de"

    invoke-direct {v3, v5, v6, v7}, Lcom/microsoft/identity/client/AzureCloudInstance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/microsoft/identity/client/AzureCloudInstance;->AzureGermany:Lcom/microsoft/identity/client/AzureCloudInstance;

    new-instance v5, Lcom/microsoft/identity/client/AzureCloudInstance;

    const-string v7, "AzureUsGov"

    const/4 v8, 0x3

    const-string v9, "https://login.microsoftonline.us"

    invoke-direct {v5, v7, v8, v9}, Lcom/microsoft/identity/client/AzureCloudInstance;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/microsoft/identity/client/AzureCloudInstance;->AzureUsGov:Lcom/microsoft/identity/client/AzureCloudInstance;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/microsoft/identity/client/AzureCloudInstance;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/microsoft/identity/client/AzureCloudInstance;->$VALUES:[Lcom/microsoft/identity/client/AzureCloudInstance;

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

    iput-object p3, p0, Lcom/microsoft/identity/client/AzureCloudInstance;->cloudInstanceUri:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/client/AzureCloudInstance;
    .locals 1

    const-class v0, Lcom/microsoft/identity/client/AzureCloudInstance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/client/AzureCloudInstance;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/client/AzureCloudInstance;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/client/AzureCloudInstance;->$VALUES:[Lcom/microsoft/identity/client/AzureCloudInstance;

    invoke-virtual {v0}, [Lcom/microsoft/identity/client/AzureCloudInstance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/client/AzureCloudInstance;

    return-object v0
.end method


# virtual methods
.method public getCloudInstanceUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/AzureCloudInstance;->cloudInstanceUri:Ljava/lang/String;

    return-object v0
.end method
