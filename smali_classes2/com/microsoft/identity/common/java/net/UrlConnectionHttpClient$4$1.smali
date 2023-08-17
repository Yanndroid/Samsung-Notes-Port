.class Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/util/ported/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4;->call()Lcom/microsoft/identity/common/java/net/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/java/util/ported/Consumer<",
        "Lcom/microsoft/identity/common/java/net/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4$1;->this$1:Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/microsoft/identity/common/java/net/HttpResponse;)V
    .locals 0

    invoke-static {p1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient;->access$000(Lcom/microsoft/identity/common/java/net/HttpResponse;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/microsoft/identity/common/java/net/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/common/java/net/UrlConnectionHttpClient$4$1;->accept(Lcom/microsoft/identity/common/java/net/HttpResponse;)V

    return-void
.end method
