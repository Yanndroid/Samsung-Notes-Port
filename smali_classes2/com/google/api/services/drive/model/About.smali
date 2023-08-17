.class public final Lcom/google/api/services/drive/model/About;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/model/About$QuotaBytesByService;,
        Lcom/google/api/services/drive/model/About$MaxUploadSizes;,
        Lcom/google/api/services/drive/model/About$ImportFormats;,
        Lcom/google/api/services/drive/model/About$Features;,
        Lcom/google/api/services/drive/model/About$ExportFormats;,
        Lcom/google/api/services/drive/model/About$AdditionalRoleInfo;
    }
.end annotation


# instance fields
.field private additionalRoleInfo:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$AdditionalRoleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private domainSharingPolicy:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private exportFormats:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$ExportFormats;",
            ">;"
        }
    .end annotation
.end field

.field private features:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$Features;",
            ">;"
        }
    .end annotation
.end field

.field private folderColorPalette:Ljava/util/List;
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

.field private importFormats:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$ImportFormats;",
            ">;"
        }
    .end annotation
.end field

.field private isCurrentAppInstalled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private languageCode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private largestChangeId:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private maxUploadSizes:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$MaxUploadSizes;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private permissionId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private quotaBytesByService:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$QuotaBytesByService;",
            ">;"
        }
    .end annotation
.end field

.field private quotaBytesTotal:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private quotaBytesUsed:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private quotaBytesUsedAggregate:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private quotaBytesUsedInTrash:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private quotaType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private remainingChangeIds:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private rootFolderId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private selfLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private user:Lcom/google/api/services/drive/model/User;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/api/services/drive/model/About$AdditionalRoleInfo;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    const-class v0, Lcom/google/api/services/drive/model/About$ExportFormats;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    const-class v0, Lcom/google/api/services/drive/model/About$Features;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    const-class v0, Lcom/google/api/services/drive/model/About$ImportFormats;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    const-class v0, Lcom/google/api/services/drive/model/About$MaxUploadSizes;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    const-class v0, Lcom/google/api/services/drive/model/About$QuotaBytesByService;

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

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About;->clone()Lcom/google/api/services/drive/model/About;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About;->clone()Lcom/google/api/services/drive/model/About;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/About;
    .locals 1

    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/About;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About;->clone()Lcom/google/api/services/drive/model/About;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalRoleInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$AdditionalRoleInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->additionalRoleInfo:Ljava/util/List;

    return-object v0
.end method

.method public getDomainSharingPolicy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->domainSharingPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExportFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$ExportFormats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->exportFormats:Ljava/util/List;

    return-object v0
.end method

.method public getFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$Features;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->features:Ljava/util/List;

    return-object v0
.end method

.method public getFolderColorPalette()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->folderColorPalette:Ljava/util/List;

    return-object v0
.end method

.method public getImportFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$ImportFormats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->importFormats:Ljava/util/List;

    return-object v0
.end method

.method public getIsCurrentAppInstalled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->isCurrentAppInstalled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLargestChangeId()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->largestChangeId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMaxUploadSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$MaxUploadSizes;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->maxUploadSizes:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->permissionId:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotaBytesByService()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$QuotaBytesByService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->quotaBytesByService:Ljava/util/List;

    return-object v0
.end method

.method public getQuotaBytesTotal()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->quotaBytesTotal:Ljava/lang/Long;

    return-object v0
.end method

.method public getQuotaBytesUsed()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->quotaBytesUsed:Ljava/lang/Long;

    return-object v0
.end method

.method public getQuotaBytesUsedAggregate()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->quotaBytesUsedAggregate:Ljava/lang/Long;

    return-object v0
.end method

.method public getQuotaBytesUsedInTrash()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->quotaBytesUsedInTrash:Ljava/lang/Long;

    return-object v0
.end method

.method public getQuotaType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->quotaType:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainingChangeIds()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->remainingChangeIds:Ljava/lang/Long;

    return-object v0
.end method

.method public getRootFolderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->rootFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->selfLink:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/google/api/services/drive/model/User;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->user:Lcom/google/api/services/drive/model/User;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/About;

    return-object p1
.end method

.method public setAdditionalRoleInfo(Ljava/util/List;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$AdditionalRoleInfo;",
            ">;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->additionalRoleInfo:Ljava/util/List;

    return-object p0
.end method

.method public setDomainSharingPolicy(Ljava/lang/String;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->domainSharingPolicy:Ljava/lang/String;

    return-object p0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->etag:Ljava/lang/String;

    return-object p0
.end method

.method public setExportFormats(Ljava/util/List;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$ExportFormats;",
            ">;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->exportFormats:Ljava/util/List;

    return-object p0
.end method

.method public setFeatures(Ljava/util/List;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$Features;",
            ">;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->features:Ljava/util/List;

    return-object p0
.end method

.method public setFolderColorPalette(Ljava/util/List;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->folderColorPalette:Ljava/util/List;

    return-object p0
.end method

.method public setImportFormats(Ljava/util/List;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$ImportFormats;",
            ">;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->importFormats:Ljava/util/List;

    return-object p0
.end method

.method public setIsCurrentAppInstalled(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->isCurrentAppInstalled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->languageCode:Ljava/lang/String;

    return-object p0
.end method

.method public setLargestChangeId(Ljava/lang/Long;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->largestChangeId:Ljava/lang/Long;

    return-object p0
.end method

.method public setMaxUploadSizes(Ljava/util/List;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$MaxUploadSizes;",
            ">;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->maxUploadSizes:Ljava/util/List;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPermissionId(Ljava/lang/String;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->permissionId:Ljava/lang/String;

    return-object p0
.end method

.method public setQuotaBytesByService(Ljava/util/List;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/About$QuotaBytesByService;",
            ">;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->quotaBytesByService:Ljava/util/List;

    return-object p0
.end method

.method public setQuotaBytesTotal(Ljava/lang/Long;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->quotaBytesTotal:Ljava/lang/Long;

    return-object p0
.end method

.method public setQuotaBytesUsed(Ljava/lang/Long;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->quotaBytesUsed:Ljava/lang/Long;

    return-object p0
.end method

.method public setQuotaBytesUsedAggregate(Ljava/lang/Long;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->quotaBytesUsedAggregate:Ljava/lang/Long;

    return-object p0
.end method

.method public setQuotaBytesUsedInTrash(Ljava/lang/Long;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->quotaBytesUsedInTrash:Ljava/lang/Long;

    return-object p0
.end method

.method public setQuotaType(Ljava/lang/String;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->quotaType:Ljava/lang/String;

    return-object p0
.end method

.method public setRemainingChangeIds(Ljava/lang/Long;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->remainingChangeIds:Ljava/lang/Long;

    return-object p0
.end method

.method public setRootFolderId(Ljava/lang/String;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->rootFolderId:Ljava/lang/String;

    return-object p0
.end method

.method public setSelfLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->selfLink:Ljava/lang/String;

    return-object p0
.end method

.method public setUser(Lcom/google/api/services/drive/model/User;)Lcom/google/api/services/drive/model/About;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->user:Lcom/google/api/services/drive/model/User;

    return-object p0
.end method
