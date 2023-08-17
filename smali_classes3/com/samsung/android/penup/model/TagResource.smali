.class public final Lcom/samsung/android/penup/model/TagResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/penup/model/Resource;


# instance fields
.field private mArtworkCount:I

.field private mName:Ljava/lang/String;

.field private mTagId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/penup/model/TagResource;->mArtworkCount:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/samsung/android/penup/model/Resource;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/penup/model/TagResource;->clone()Lcom/samsung/android/penup/model/TagResource;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/penup/model/TagResource;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/penup/model/TagResource;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Cannot clone this object"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/penup/model/TagResource;->clone()Lcom/samsung/android/penup/model/TagResource;

    move-result-object v0

    return-object v0
.end method

.method public getArtworkCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/penup/model/TagResource;->mArtworkCount:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/TagResource;->mTagId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/TagResource;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setArtworkCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/penup/model/TagResource;->mArtworkCount:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/TagResource;->mTagId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/TagResource;->mName:Ljava/lang/String;

    return-void
.end method
