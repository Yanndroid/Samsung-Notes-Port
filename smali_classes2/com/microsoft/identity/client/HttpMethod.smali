.class public final enum Lcom/microsoft/identity/client/HttpMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/client/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum CONNECT:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum DELETE:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum GET:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum HEAD:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum OPTIONS:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum PATCH:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum POST:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum PUT:Lcom/microsoft/identity/client/HttpMethod;

.field public static final enum TRACE:Lcom/microsoft/identity/client/HttpMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/microsoft/identity/client/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/client/HttpMethod;->GET:Lcom/microsoft/identity/client/HttpMethod;

    new-instance v1, Lcom/microsoft/identity/client/HttpMethod;

    const-string v3, "HEAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/identity/client/HttpMethod;->HEAD:Lcom/microsoft/identity/client/HttpMethod;

    new-instance v3, Lcom/microsoft/identity/client/HttpMethod;

    const-string v5, "POST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/identity/client/HttpMethod;->POST:Lcom/microsoft/identity/client/HttpMethod;

    new-instance v5, Lcom/microsoft/identity/client/HttpMethod;

    const-string v7, "PUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/identity/client/HttpMethod;->PUT:Lcom/microsoft/identity/client/HttpMethod;

    new-instance v7, Lcom/microsoft/identity/client/HttpMethod;

    const-string v9, "DELETE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/identity/client/HttpMethod;->DELETE:Lcom/microsoft/identity/client/HttpMethod;

    new-instance v9, Lcom/microsoft/identity/client/HttpMethod;

    const-string v11, "CONNECT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/identity/client/HttpMethod;->CONNECT:Lcom/microsoft/identity/client/HttpMethod;

    new-instance v11, Lcom/microsoft/identity/client/HttpMethod;

    const-string v13, "OPTIONS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/identity/client/HttpMethod;->OPTIONS:Lcom/microsoft/identity/client/HttpMethod;

    new-instance v13, Lcom/microsoft/identity/client/HttpMethod;

    const-string v15, "TRACE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/microsoft/identity/client/HttpMethod;->TRACE:Lcom/microsoft/identity/client/HttpMethod;

    new-instance v15, Lcom/microsoft/identity/client/HttpMethod;

    const-string v14, "PATCH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/microsoft/identity/client/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/microsoft/identity/client/HttpMethod;->PATCH:Lcom/microsoft/identity/client/HttpMethod;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/microsoft/identity/client/HttpMethod;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/microsoft/identity/client/HttpMethod;->$VALUES:[Lcom/microsoft/identity/client/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/client/HttpMethod;
    .locals 1

    const-class v0, Lcom/microsoft/identity/client/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/client/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/client/HttpMethod;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/client/HttpMethod;->$VALUES:[Lcom/microsoft/identity/client/HttpMethod;

    invoke-virtual {v0}, [Lcom/microsoft/identity/client/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/client/HttpMethod;

    return-object v0
.end method
