.class public final Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoMediaMetadata"
.end annotation


# instance fields
.field private durationMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private height:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private width:Ljava/lang/Integer;
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

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->clone()Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->clone()Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
    .locals 1

    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->clone()Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDurationMillis()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->durationMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;

    return-object p1
.end method

.method public setDurationMillis(Ljava/lang/Long;)Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->durationMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setHeight(Ljava/lang/Integer;)Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->height:Ljava/lang/Integer;

    return-object p0
.end method

.method public setWidth(Ljava/lang/Integer;)Lcom/google/api/services/drive/model/File$VideoMediaMetadata;
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/model/File$VideoMediaMetadata;->width:Ljava/lang/Integer;

    return-object p0
.end method
