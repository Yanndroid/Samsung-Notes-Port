.class public Lcom/samsung/scsp/framework/core/api/AbstractJob$SimpleStreamListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/network/Network$StreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/scsp/framework/core/api/AbstractJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleStreamListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/scsp/framework/core/network/Network$StreamListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final classOfT:Ljava/lang/Class;

.field public final listener:Lcom/samsung/scsp/framework/core/listeners/ResponseListener;

.field public final tag:Ljava/lang/String;

.field public final synthetic this$0:Lcom/samsung/scsp/framework/core/api/AbstractJob;


# direct methods
.method public constructor <init>(Lcom/samsung/scsp/framework/core/api/AbstractJob;Ljava/lang/String;Lcom/samsung/scsp/framework/core/listeners/ResponseListener;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob$SimpleStreamListener;->this$0:Lcom/samsung/scsp/framework/core/api/AbstractJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob$SimpleStreamListener;->classOfT:Ljava/lang/Class;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob$SimpleStreamListener;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob$SimpleStreamListener;->listener:Lcom/samsung/scsp/framework/core/listeners/ResponseListener;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/scsp/framework/core/api/AbstractJob$SimpleStreamListener;->lambda$onStream$0(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onStream$0(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStream] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onStream(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/scsp/framework/core/network/HttpRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob$SimpleStreamListener;->classOfT:Ljava/lang/Class;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p2, p3, Ljava/io/InputStream;

    if-eqz p2, :cond_0

    check-cast p3, Ljava/io/InputStream;

    iget-object p2, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob$SimpleStreamListener;->this$0:Lcom/samsung/scsp/framework/core/api/AbstractJob;

    invoke-virtual {p2, p3}, Lcom/samsung/scsp/framework/core/api/AbstractJob;->consume(Ljava/io/InputStream;)Lcom/samsung/scsp/framework/core/api/Response;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/scsp/framework/core/api/Response;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    instance-of p2, p3, Ljava/io/ByteArrayOutputStream;

    if-eqz p2, :cond_1

    check-cast p3, Ljava/io/ByteArrayOutputStream;

    new-instance p2, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    iget-object p3, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob$SimpleStreamListener;->tag:Ljava/lang/String;

    invoke-static {p3}, Lcom/samsung/scsp/error/Logger;->get(Ljava/lang/String;)Lcom/samsung/scsp/error/Logger;

    move-result-object p3

    new-instance v0, Lcom/samsung/scsp/framework/core/api/a;

    invoke-direct {v0, p1, p2}, Lcom/samsung/scsp/framework/core/api/a;-><init>(Lcom/samsung/scsp/framework/core/network/HttpRequest;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/samsung/scsp/error/Logger;->d(Lcom/samsung/scsp/framework/core/common/Supplier;)V

    iget-object p1, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob$SimpleStreamListener;->listener:Lcom/samsung/scsp/framework/core/listeners/ResponseListener;

    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/api/AbstractJob$SimpleStreamListener;->classOfT:Ljava/lang/Class;

    invoke-virtual {p3, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/scsp/framework/core/listeners/ResponseListener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
