.class Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/network/Network$StreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl;->update(Lcom/samsung/scsp/framework/core/identity/PushInfoList;Lcom/samsung/scsp/framework/core/identity/DeviceInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/scsp/framework/core/network/Network$StreamListener<",
        "Ljava/io/ByteArrayOutputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl$1;->this$0:Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/scsp/framework/core/api/Response;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl$1;->lambda$onStream$0(Lcom/samsung/scsp/framework/core/api/Response;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onStream$0(Lcom/samsung/scsp/framework/core/api/Response;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStream] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/scsp/framework/core/network/HttpRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/ByteArrayOutputStream;",
            ")V"
        }
    .end annotation

    const-string p1, "HTTP_STATUS"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0xcc

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/samsung/scsp/framework/core/api/Response;

    invoke-direct {p1, p3}, Lcom/samsung/scsp/framework/core/api/Response;-><init>(Ljava/io/ByteArrayOutputStream;)V

    iget-object p2, p0, Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl$1;->this$0:Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl;

    invoke-static {p2}, Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl;->access$000(Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl;)Lcom/samsung/scsp/error/Logger;

    move-result-object p2

    new-instance p3, Lcom/samsung/scsp/framework/core/identity/api/e;

    invoke-direct {p3, p1}, Lcom/samsung/scsp/framework/core/identity/api/e;-><init>(Lcom/samsung/scsp/framework/core/api/Response;)V

    invoke-virtual {p2, p3}, Lcom/samsung/scsp/error/Logger;->d(Lcom/samsung/scsp/framework/core/common/Supplier;)V

    invoke-virtual {p1}, Lcom/samsung/scsp/framework/core/api/Response;->toJson()Lcom/google/gson/JsonObject;

    move-result-object p2

    const-string p3, "rmsg"

    invoke-virtual {p2, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/samsung/scsp/framework/core/ScspException;

    invoke-virtual {p1}, Lcom/samsung/scsp/framework/core/api/Response;->getRcode()I

    move-result p1

    invoke-direct {p3, p1, p2}, Lcom/samsung/scsp/framework/core/ScspException;-><init>(ILjava/lang/String;)V

    throw p3
.end method

.method public bridge synthetic onStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/scsp/framework/core/identity/api/UpdateApiImpl$1;->onStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
