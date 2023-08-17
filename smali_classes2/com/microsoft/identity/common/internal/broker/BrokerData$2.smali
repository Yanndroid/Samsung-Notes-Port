.class Lcom/microsoft/identity/common/internal/broker/BrokerData$2;
.super Ljava/util/HashSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/internal/broker/BrokerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Lcom/microsoft/identity/common/internal/broker/BrokerData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    sget-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->MICROSOFT_AUTHENTICATOR_PROD:Lcom/microsoft/identity/common/internal/broker/BrokerData;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->COMPANY_PORTAL:Lcom/microsoft/identity/common/internal/broker/BrokerData;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
