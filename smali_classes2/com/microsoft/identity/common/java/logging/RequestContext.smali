.class public Lcom/microsoft/identity/common/java/logging/RequestContext;
.super Ljava/util/HashMap;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/logging/IRequestContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lcom/microsoft/identity/common/java/logging/IRequestContext;"
    }
.end annotation


# static fields
.field private static final mGson:Lcom/google/gson/Gson;

.field private static final serialVersionUID:J = -0x1f14acc9c1786937L


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/microsoft/identity/common/java/logging/RequestContext;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public toJsonString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/logging/RequestContext;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
