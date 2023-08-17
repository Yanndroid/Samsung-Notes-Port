.class Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/network/Network$StreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->issue()Ljava/lang/String;
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
.field public final synthetic this$0:Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;

.field public final synthetic val$cloudToken:[Ljava/lang/String;

.field public final synthetic val$requestHeader:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;[Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;->this$0:Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;->val$cloudToken:[Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;->val$requestHeader:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;->lambda$onStream$0(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onStream$0(Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStream] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V
    .locals 4
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

    new-instance p1, Lcom/samsung/scsp/framework/core/api/Response;

    invoke-direct {p1, p3}, Lcom/samsung/scsp/framework/core/api/Response;-><init>(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {p1}, Lcom/samsung/scsp/framework/core/api/Response;->toJson()Lcom/google/gson/JsonObject;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;->this$0:Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;

    invoke-static {p2}, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->access$000(Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;)Lcom/samsung/scsp/error/Logger;

    move-result-object p2

    new-instance p3, Lcom/samsung/scsp/framework/core/identity/api/d;

    invoke-direct {p3, p1}, Lcom/samsung/scsp/framework/core/identity/api/d;-><init>(Lcom/google/gson/JsonObject;)V

    invoke-virtual {p2, p3}, Lcom/samsung/scsp/error/Logger;->d(Lcom/samsung/scsp/framework/core/common/Supplier;)V

    const-string p2, "tokenType"

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "accessToken"

    invoke-virtual {p1, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "expiresAt"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    iget-object p1, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;->val$cloudToken:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iget-object p1, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;->val$requestHeader:Ljava/util/Map;

    const-string p2, "x-sc-access-token"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v2, 0x3e8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;->val$requestHeader:Ljava/util/Map;

    const-string p2, "x-sc-uid"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->get()Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->cloudToken:Lcom/samsung/scsp/common/PreferenceItem;

    iget-object p2, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;->val$cloudToken:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Lcom/samsung/scsp/common/PreferenceItem;->accept(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->get()Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->cloudTokenExpiredOn:Lcom/samsung/scsp/common/PreferenceItem;

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/scsp/common/PreferenceItem;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;->this$0:Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;

    invoke-static {p1}, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->access$000(Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;)Lcom/samsung/scsp/error/Logger;

    move-result-object p1

    const-string p2, "Success to issue token with account"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->get()Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->deviceToken:Lcom/samsung/scsp/common/PreferenceItem;

    iget-object p2, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;->val$cloudToken:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Lcom/samsung/scsp/common/PreferenceItem;->accept(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->get()Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/scsp/framework/core/util/ScspCorePreferences;->deviceTokenExpiredOn:Lcom/samsung/scsp/common/PreferenceItem;

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/scsp/common/PreferenceItem;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;->this$0:Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;

    invoke-static {p1}, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;->access$000(Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl;)Lcom/samsung/scsp/error/Logger;

    move-result-object p1

    const-string p2, "Success to issue token without account"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/scsp/framework/core/identity/api/TokenApiImpl$1;->onStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
