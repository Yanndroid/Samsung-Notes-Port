.class public final Lcom/google/api/services/drive/model/User;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/model/User$Picture;
    }
.end annotation


# instance fields
.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private emailAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isAuthenticatedUser:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private permissionId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private picture:Lcom/google/api/services/drive/model/User$Picture;
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

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/User;->clone()Lcom/google/api/services/drive/model/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/User;->clone()Lcom/google/api/services/drive/model/User;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/User;
    .locals 1

    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/User;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/User;->clone()Lcom/google/api/services/drive/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAuthenticatedUser()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->isAuthenticatedUser:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->permissionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPicture()Lcom/google/api/services/drive/model/User$Picture;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/User;->picture:Lcom/google/api/services/drive/model/User$Picture;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/User;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/User;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/User;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/User;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/User;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/User;

    return-object p1
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/api/services/drive/model/User;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/google/api/services/drive/model/User;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->emailAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setIsAuthenticatedUser(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/User;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->isAuthenticatedUser:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/User;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->kind:Ljava/lang/String;

    return-object p0
.end method

.method public setPermissionId(Ljava/lang/String;)Lcom/google/api/services/drive/model/User;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->permissionId:Ljava/lang/String;

    return-object p0
.end method

.method public setPicture(Lcom/google/api/services/drive/model/User$Picture;)Lcom/google/api/services/drive/model/User;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/User;->picture:Lcom/google/api/services/drive/model/User$Picture;

    return-object p0
.end method
