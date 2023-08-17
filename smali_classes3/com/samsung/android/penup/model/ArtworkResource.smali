.class public final Lcom/samsung/android/penup/model/ArtworkResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/penup/model/Resource;


# static fields
.field private static final MAX_DESCRIPTION_LENGTH:I = 0x1f4

.field private static final MAX_TITLE_LENGTH:I = 0x2d


# instance fields
.field private mArtistId:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mArtworkId:Ljava/lang/String;

.field private mCollectionId:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mFavoriteCount:I

.field private mImageRatio:D

.field private mImageUrl:Ljava/lang/String;

.field private mIsDownloadable:Ljava/lang/Boolean;

.field private mLargeThumbnailImageUrl:Ljava/lang/String;

.field private mOriginalArtistId:Ljava/lang/String;

.field private mOriginalArtworkId:Ljava/lang/String;

.field private mThumbnailImageUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mFavoriteCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mImageRatio:D

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/penup/model/ArtworkResource;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/penup/model/ArtworkResource;
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

    invoke-virtual {p0}, Lcom/samsung/android/penup/model/ArtworkResource;->clone()Lcom/samsung/android/penup/model/ArtworkResource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/penup/model/ArtworkResource;->clone()Lcom/samsung/android/penup/model/ArtworkResource;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mArtistId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mCollectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadable()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mIsDownloadable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFavoriteCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mFavoriteCount:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mArtworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageRatio()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mImageRatio:D

    return-wide v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeThumbnailImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mLargeThumbnailImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalArtistId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mOriginalArtistId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalArtworkId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mOriginalArtworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mThumbnailImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setArtistId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mArtistId:Ljava/lang/String;

    return-void
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mArtistName:Ljava/lang/String;

    return-void
.end method

.method public setCollectionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mCollectionId:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x1f4

    const-string v1, "description"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/penup/internal/Validator;->checkLength(Ljava/lang/String;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setDownloadable(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mIsDownloadable:Ljava/lang/Boolean;

    return-void
.end method

.method public setFavoriteCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mFavoriteCount:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mArtworkId:Ljava/lang/String;

    return-void
.end method

.method public setImageRatio(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mImageRatio:D

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLargeThumbnailImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mLargeThumbnailImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLongDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setLongTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setOriginalArtistId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mOriginalArtistId:Ljava/lang/String;

    return-void
.end method

.method public setOriginalArtworkId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mOriginalArtworkId:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mThumbnailImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x2d

    const-string/jumbo v1, "title"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/penup/internal/Validator;->checkLength(Ljava/lang/String;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/penup/model/ArtworkResource;->mTitle:Ljava/lang/String;

    return-void
.end method
