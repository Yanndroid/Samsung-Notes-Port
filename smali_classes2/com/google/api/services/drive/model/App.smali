.class public final Lcom/google/api/services/drive/model/App;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/model/App$Icons;
    }
.end annotation


# instance fields
.field private authorized:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private createInFolderTemplate:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private createUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private hasDriveWideScope:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private icons:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/App$Icons;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private installed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private longDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private objectType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private openUrlTemplate:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private primaryFileExtensions:Ljava/util/List;
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

.field private primaryMimeTypes:Ljava/util/List;
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

.field private productId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private productUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private secondaryFileExtensions:Ljava/util/List;
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

.field private secondaryMimeTypes:Ljava/util/List;
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

.field private shortDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private supportsCreate:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private supportsImport:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private supportsMultiOpen:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private supportsOfflineCreate:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private useByDefault:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/api/services/drive/model/App$Icons;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/App;->clone()Lcom/google/api/services/drive/model/App;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/App;->clone()Lcom/google/api/services/drive/model/App;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/App;
    .locals 1

    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/App;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/App;->clone()Lcom/google/api/services/drive/model/App;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorized()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->authorized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCreateInFolderTemplate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->createInFolderTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->createUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHasDriveWideScope()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->hasDriveWideScope:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/App$Icons;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->icons:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->installed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getLongDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->longDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->objectType:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenUrlTemplate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->openUrlTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryFileExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->primaryFileExtensions:Ljava/util/List;

    return-object v0
.end method

.method public getPrimaryMimeTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->primaryMimeTypes:Ljava/util/List;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->productUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryFileExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->secondaryFileExtensions:Ljava/util/List;

    return-object v0
.end method

.method public getSecondaryMimeTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->secondaryMimeTypes:Ljava/util/List;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportsCreate()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->supportsCreate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSupportsImport()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->supportsImport:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSupportsMultiOpen()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->supportsMultiOpen:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSupportsOfflineCreate()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->supportsOfflineCreate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUseByDefault()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/App;->useByDefault:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/App;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/App;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/App;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/App;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/App;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/App;

    return-object p1
.end method

.method public setAuthorized(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->authorized:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setCreateInFolderTemplate(Ljava/lang/String;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->createInFolderTemplate:Ljava/lang/String;

    return-object p0
.end method

.method public setCreateUrl(Ljava/lang/String;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->createUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setHasDriveWideScope(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->hasDriveWideScope:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIcons(Ljava/util/List;)Lcom/google/api/services/drive/model/App;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/App$Icons;",
            ">;)",
            "Lcom/google/api/services/drive/model/App;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->icons:Ljava/util/List;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setInstalled(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->installed:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public setLongDescription(Ljava/lang/String;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->longDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setObjectType(Ljava/lang/String;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->objectType:Ljava/lang/String;

    return-object p0
.end method

.method public setOpenUrlTemplate(Ljava/lang/String;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->openUrlTemplate:Ljava/lang/String;

    return-object p0
.end method

.method public setPrimaryFileExtensions(Ljava/util/List;)Lcom/google/api/services/drive/model/App;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/App;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->primaryFileExtensions:Ljava/util/List;

    return-object p0
.end method

.method public setPrimaryMimeTypes(Ljava/util/List;)Lcom/google/api/services/drive/model/App;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/App;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->primaryMimeTypes:Ljava/util/List;

    return-object p0
.end method

.method public setProductId(Ljava/lang/String;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public setProductUrl(Ljava/lang/String;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->productUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setSecondaryFileExtensions(Ljava/util/List;)Lcom/google/api/services/drive/model/App;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/App;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->secondaryFileExtensions:Ljava/util/List;

    return-object p0
.end method

.method public setSecondaryMimeTypes(Ljava/util/List;)Lcom/google/api/services/drive/model/App;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/App;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->secondaryMimeTypes:Ljava/util/List;

    return-object p0
.end method

.method public setShortDescription(Ljava/lang/String;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->shortDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setSupportsCreate(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->supportsCreate:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSupportsImport(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->supportsImport:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSupportsMultiOpen(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->supportsMultiOpen:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSupportsOfflineCreate(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->supportsOfflineCreate:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setUseByDefault(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/App;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/App;->useByDefault:Ljava/lang/Boolean;

    return-object p0
.end method
