.class public final enum Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/net/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

.field public static final enum DELETE:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

.field public static final enum GET:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

.field public static final enum HEAD:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

.field public static final enum OPTIONS:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

.field public static final enum PATCH:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

.field public static final enum POST:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

.field public static final enum PUT:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

.field public static final enum TRACE:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

.field private static final validMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->GET:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    new-instance v1, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    const-string v3, "HEAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->HEAD:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    new-instance v3, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->PUT:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    new-instance v5, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    const-string v7, "POST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->POST:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    new-instance v7, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    const-string v9, "OPTIONS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->OPTIONS:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    new-instance v9, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    const-string v11, "PATCH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->PATCH:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    new-instance v11, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    const-string v13, "DELETE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->DELETE:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    new-instance v13, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    const-string v15, "TRACE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->TRACE:Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->$VALUES:[Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->values()[Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->validMethods:Ljava/util/Map;

    invoke-static {}, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->values()[Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->validMethods:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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

.method public static validateAndNormalizeMethod(Ljava/lang/String;)Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "httpMethod is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/microsoft/identity/common/java/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->validMethods:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown or unsupported HTTP method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP method cannot be null or blank"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->$VALUES:[Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/java/net/HttpClient$HttpMethod;

    return-object v0
.end method
