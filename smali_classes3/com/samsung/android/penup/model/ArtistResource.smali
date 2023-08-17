.class public final Lcom/samsung/android/penup/model/ArtistResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/penup/model/Resource;


# instance fields
.field private mArtistId:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mFavoritedCount:I

.field private mFollowerCount:I

.field private mFollowingCount:I

.field private mImageUrl:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPostCount:I

.field private mRepostCount:I

.field private mRepostedCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/penup/model/ArtistResource;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/penup/model/ArtistResource;
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

.method public bridge synthetic clone()Lcom/samsung/android/penup/model/Resource;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/penup/model/ArtistResource;->clone()Lcom/samsung/android/penup/model/ArtistResource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/penup/model/ArtistResource;->clone()Lcom/samsung/android/penup/model/ArtistResource;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtistResource;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFavoritedCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/penup/model/ArtistResource;->mFavoritedCount:I

    return v0
.end method

.method public getFollowerCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/penup/model/ArtistResource;->mFollowerCount:I

    return v0
.end method

.method public getFollowingCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/penup/model/ArtistResource;->mFollowingCount:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtistResource;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtistResource;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtistResource;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPostCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/penup/model/ArtistResource;->mPostCount:I

    return v0
.end method

.method public getRepostCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/penup/model/ArtistResource;->mRepostCount:I

    return v0
.end method

.method public getRepostedCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/penup/model/ArtistResource;->mRepostedCount:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtistResource;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setFavoritedCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/penup/model/ArtistResource;->mFavoritedCount:I

    return-void
.end method

.method public setFollowerCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/penup/model/ArtistResource;->mFollowerCount:I

    return-void
.end method

.method public setFollowingCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/penup/model/ArtistResource;->mFollowingCount:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtistResource;->mArtistId:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtistResource;->mImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtistResource;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPostCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/penup/model/ArtistResource;->mPostCount:I

    return-void
.end method

.method public setRepostCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/penup/model/ArtistResource;->mRepostCount:I

    return-void
.end method

.method public setRepostedCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/penup/model/ArtistResource;->mRepostedCount:I

    return-void
.end method
