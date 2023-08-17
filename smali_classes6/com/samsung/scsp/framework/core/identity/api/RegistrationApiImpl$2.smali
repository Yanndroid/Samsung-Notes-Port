.class Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/network/Network$StreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->deregister(Ljava/lang/String;)V
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
.field public final synthetic this$0:Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$2;->this$0:Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    iget-object p1, p0, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$2;->this$0:Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;

    invoke-static {p1}, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;->access$000(Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl;)Lcom/samsung/scsp/error/Logger;

    move-result-object p1

    const-string p2, "Success deregister"

    invoke-virtual {p1, p2}, Lcom/samsung/scsp/error/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/scsp/framework/core/identity/api/RegistrationApiImpl$2;->onStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
