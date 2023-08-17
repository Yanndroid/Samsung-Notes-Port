.class Lcom/microsoft/identity/common/internal/broker/BrokerValidator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/broker/BrokerValidator;->getValidBrokerSignatures()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/internal/broker/BrokerValidator;

.field public final synthetic val$itr:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/broker/BrokerValidator;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerValidator$1;->this$0:Lcom/microsoft/identity/common/internal/broker/BrokerValidator;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/broker/BrokerValidator$1;->val$itr:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerValidator$1;->val$itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/broker/BrokerValidator$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/broker/BrokerValidator$1;->val$itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    iget-object v0, v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->signatureHash:Ljava/lang/String;

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove operations are not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
