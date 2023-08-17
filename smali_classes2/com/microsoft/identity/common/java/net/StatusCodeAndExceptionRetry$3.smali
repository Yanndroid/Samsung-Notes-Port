.class Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/util/ported/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry;->$default$isAcceptable()Lcom/microsoft/identity/common/java/util/ported/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/util/ported/Function<",
        "Lcom/microsoft/identity/common/java/net/HttpResponse;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/microsoft/identity/common/java/net/HttpResponse;)Ljava/lang/Boolean;
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/java/net/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/net/StatusCodeAndExceptionRetry$3;->apply(Lcom/microsoft/identity/common/java/net/HttpResponse;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
