.class public final Lcom/google/api/services/drive/model/File$Labels;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Labels"
.end annotation


# instance fields
.field private hidden:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private modified:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private restricted:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private starred:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private trashed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private viewed:Ljava/lang/Boolean;
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

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$Labels;->clone()Lcom/google/api/services/drive/model/File$Labels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$Labels;->clone()Lcom/google/api/services/drive/model/File$Labels;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/File$Labels;
    .locals 1

    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$Labels;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$Labels;->clone()Lcom/google/api/services/drive/model/File$Labels;

    move-result-object v0

    return-object v0
.end method

.method public getHidden()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Labels;->hidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getModified()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Labels;->modified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRestricted()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Labels;->restricted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStarred()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Labels;->starred:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTrashed()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Labels;->trashed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getViewed()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Labels;->viewed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$Labels;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$Labels;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$Labels;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$Labels;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$Labels;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File$Labels;

    return-object p1
.end method

.method public setHidden(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Labels;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Labels;->hidden:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setModified(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Labels;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Labels;->modified:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setRestricted(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Labels;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Labels;->restricted:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setStarred(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Labels;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Labels;->starred:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setTrashed(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Labels;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Labels;->trashed:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setViewed(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Labels;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Labels;->viewed:Ljava/lang/Boolean;

    return-object p0
.end method
