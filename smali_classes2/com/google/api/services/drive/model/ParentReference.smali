.class public final Lcom/google/api/services/drive/model/ParentReference;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isRoot:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private parentLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private selfLink:Ljava/lang/String;
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

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/ParentReference;->clone()Lcom/google/api/services/drive/model/ParentReference;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/ParentReference;->clone()Lcom/google/api/services/drive/model/ParentReference;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/ParentReference;
    .locals 1

    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/ParentReference;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/ParentReference;->clone()Lcom/google/api/services/drive/model/ParentReference;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/ParentReference;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRoot()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/ParentReference;->isRoot:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/ParentReference;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getParentLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/ParentReference;->parentLink:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/ParentReference;->selfLink:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/ParentReference;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/ParentReference;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/ParentReference;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/ParentReference;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/ParentReference;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/ParentReference;

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/ParentReference;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/ParentReference;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setIsRoot(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/ParentReference;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/ParentReference;->isRoot:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/ParentReference;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/ParentReference;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public setParentLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/ParentReference;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/ParentReference;->parentLink:Ljava/lang/String;

    return-object p0
.end method

.method public setSelfLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/ParentReference;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/ParentReference;->selfLink:Ljava/lang/String;

    return-object p0
.end method
