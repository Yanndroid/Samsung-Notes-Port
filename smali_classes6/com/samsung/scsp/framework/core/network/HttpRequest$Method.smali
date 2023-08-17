.class public final enum Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/framework/core/network/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

.field public static final enum DELETE:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

.field public static final enum GET:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

.field public static final enum HEAD:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

.field public static final enum PATCH:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

.field public static final enum POST:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

.field public static final enum PUT:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;->POST:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    new-instance v1, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    const-string v3, "PUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;->PUT:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    new-instance v3, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    const-string v5, "GET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;->GET:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    new-instance v5, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;->DELETE:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    new-instance v7, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    const-string v9, "PATCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;->PATCH:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    new-instance v9, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    const-string v11, "HEAD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;->HEAD:Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;->$VALUES:[Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;
    .locals 1

    const-class v0, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    return-object p0
.end method

.method public static values()[Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;
    .locals 1

    sget-object v0, Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;->$VALUES:[Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    invoke-virtual {v0}, [Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/scsp/framework/core/network/HttpRequest$Method;

    return-object v0
.end method
