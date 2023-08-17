.class public Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCreatedTime:J

.field private mCreator:Ljava/lang/String;

.field private mIsOwnedByMe:Z

.field private mItemId:Ljava/lang/String;

.field private mLastModifier:Ljava/lang/String;

.field private mLeaderId:Ljava/lang/String;

.field private mMemo:Ljava/lang/String;

.field private mMetaData:Ljava/util/Map;

.field private mMimeType:Ljava/lang/String;

.field private mModifiedTime:J

.field private mOriginalContentPath:Ljava/lang/String;

.field private mOriginalContentUri:Landroid/net/Uri;

.field private mReferredResourceId:Ljava/lang/String;

.field private mSize:J

.field private mSourceCid:Ljava/lang/String;

.field private mSpaceId:Ljava/lang/String;

.field private mStreamingUrl:Ljava/lang/String;

.field private mThumbnailContentUri:Landroid/net/Uri;

.field private mThumbnailFileUri:Landroid/net/Uri;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->setItemId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->setSpaceId(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->setLeaderId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mCreatedTime:J

    return-wide v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mCreator:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mLastModifier:Ljava/lang/String;

    return-object v0
.end method

.method public getLeaderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mLeaderId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mMemo:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaData()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mMetaData:Ljava/util/Map;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mModifiedTime:J

    return-wide v0
.end method

.method public getOriginalContentPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mOriginalContentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mOriginalContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mReferredResourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mSize:J

    return-wide v0
.end method

.method public getSourceCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mSourceCid:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mStreamingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mThumbnailContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getThumbnailFileUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mThumbnailFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isOwnedByMe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mIsOwnedByMe:Z

    return v0
.end method

.method public setCreatedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mCreatedTime:J

    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mCreator:Ljava/lang/String;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mItemId:Ljava/lang/String;

    return-void
.end method

.method public setLastModifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mLastModifier:Ljava/lang/String;

    return-void
.end method

.method public setLeaderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mLeaderId:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mMemo:Ljava/lang/String;

    return-void
.end method

.method public setMetaData(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mMetaData:Ljava/util/Map;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setModifiedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mModifiedTime:J

    return-void
.end method

.method public setOriginalContentPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mOriginalContentPath:Ljava/lang/String;

    return-void
.end method

.method public setOriginalContentUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mOriginalContentUri:Landroid/net/Uri;

    return-void
.end method

.method public setOwnedByMe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mIsOwnedByMe:Z

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mReferredResourceId:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mSize:J

    return-void
.end method

.method public setSourceCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mSourceCid:Ljava/lang/String;

    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mSpaceId:Ljava/lang/String;

    return-void
.end method

.method public setStreamingUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mStreamingUrl:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailContentUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mThumbnailContentUri:Landroid/net/Uri;

    return-void
.end method

.method public setThumbnailFileUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mThumbnailFileUri:Landroid/net/Uri;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->mTitle:Ljava/lang/String;

    return-void
.end method
