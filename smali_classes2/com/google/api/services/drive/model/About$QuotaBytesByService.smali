.class public final Lcom/google/api/services/drive/model/About$QuotaBytesByService;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/About;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuotaBytesByService"
.end annotation


# instance fields
.field private bytesUsed:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private serviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$QuotaBytesByService;->clone()Lcom/google/api/services/drive/model/About$QuotaBytesByService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$QuotaBytesByService;->clone()Lcom/google/api/services/drive/model/About$QuotaBytesByService;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/About$QuotaBytesByService;
    .locals 1

    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/About$QuotaBytesByService;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$QuotaBytesByService;->clone()Lcom/google/api/services/drive/model/About$QuotaBytesByService;

    move-result-object v0

    return-object v0
.end method

.method public getBytesUsed()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About$QuotaBytesByService;->bytesUsed:Ljava/lang/Long;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About$QuotaBytesByService;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About$QuotaBytesByService;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$QuotaBytesByService;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About$QuotaBytesByService;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$QuotaBytesByService;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$QuotaBytesByService;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/About$QuotaBytesByService;

    return-object p1
.end method

.method public setBytesUsed(Ljava/lang/Long;)Lcom/google/api/services/drive/model/About$QuotaBytesByService;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About$QuotaBytesByService;->bytesUsed:Ljava/lang/Long;

    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Lcom/google/api/services/drive/model/About$QuotaBytesByService;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About$QuotaBytesByService;->serviceName:Ljava/lang/String;

    return-object p0
.end method
