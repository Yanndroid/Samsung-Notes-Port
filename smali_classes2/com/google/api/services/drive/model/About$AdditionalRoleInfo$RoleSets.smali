.class public final Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/About$AdditionalRoleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RoleSets"
.end annotation


# instance fields
.field private additionalRoles:Ljava/util/List;
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

.field private primaryRole:Ljava/lang/String;
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

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;->clone()Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;->clone()Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;
    .locals 1

    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;->clone()Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalRoles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;->additionalRoles:Ljava/util/List;

    return-object v0
.end method

.method public getPrimaryRole()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;->primaryRole:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;

    return-object p1
.end method

.method public setAdditionalRoles(Ljava/util/List;)Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;->additionalRoles:Ljava/util/List;

    return-object p0
.end method

.method public setPrimaryRole(Ljava/lang/String;)Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/About$AdditionalRoleInfo$RoleSets;->primaryRole:Ljava/lang/String;

    return-object p0
.end method
