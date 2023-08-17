.class public final Lcom/google/api/services/drive/model/GeneratedIds;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private ids:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private space:Ljava/lang/String;
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

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/GeneratedIds;->clone()Lcom/google/api/services/drive/model/GeneratedIds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/GeneratedIds;->clone()Lcom/google/api/services/drive/model/GeneratedIds;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/GeneratedIds;
    .locals 1

    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/GeneratedIds;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/GeneratedIds;->clone()Lcom/google/api/services/drive/model/GeneratedIds;

    move-result-object v0

    return-object v0
.end method

.method public getIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/services/drive/model/GeneratedIds;->ids:Ljava/util/List;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/GeneratedIds;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getSpace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/GeneratedIds;->space:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/GeneratedIds;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/GeneratedIds;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/GeneratedIds;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/GeneratedIds;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/GeneratedIds;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/GeneratedIds;

    return-object p1
.end method

.method public setIds(Ljava/util/List;)Lcom/google/api/services/drive/model/GeneratedIds;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/GeneratedIds;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/GeneratedIds;->ids:Ljava/util/List;

    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/GeneratedIds;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/GeneratedIds;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public setSpace(Ljava/lang/String;)Lcom/google/api/services/drive/model/GeneratedIds;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/GeneratedIds;->space:Ljava/lang/String;

    return-object p0
.end method
