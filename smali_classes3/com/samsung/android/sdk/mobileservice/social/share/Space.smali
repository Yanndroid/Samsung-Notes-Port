.class public Lcom/samsung/android/sdk/mobileservice/social/share/Space;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContentUpdatedTime:J

.field private mCoverThumbnailFileUri:Landroid/net/Uri;

.field private mCreatedTime:J

.field private mGroupId:Ljava/lang/String;

.field private mIsOwnedByMe:Z

.field private mIsStandAlone:Z

.field private mItemCount:I

.field private mLeaderId:Ljava/lang/String;

.field private mMemo:Ljava/lang/String;

.field private mMetaData:Ljava/util/Map;

.field private mModifiedTime:J

.field private mMyCountUsage:J

.field private mMyUsage:J

.field private mSize:J

.field private mSourceCid:Ljava/lang/String;

.field private mSpaceId:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUnreadCount:I

.field private mWebLink:Lcom/samsung/android/sdk/mobileservice/social/share/WebLink;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mIsStandAlone:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mGroupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mSpaceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mLeaderId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentUpdatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mContentUpdatedTime:J

    return-wide v0
.end method

.method public getCoverThumbnailFileUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mCoverThumbnailFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mCreatedTime:J

    return-wide v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mItemCount:I

    return v0
.end method

.method public getLeaderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mLeaderId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mMemo:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaData()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mMetaData:Ljava/util/Map;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mModifiedTime:J

    return-wide v0
.end method

.method public getMyCountUsage()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mMyCountUsage:J

    return-wide v0
.end method

.method public getMyUsage()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mMyUsage:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mSize:J

    return-wide v0
.end method

.method public getSourceCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mSourceCid:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStandAlone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mIsStandAlone:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mUnreadCount:I

    return v0
.end method

.method public getWebLink()Lcom/samsung/android/sdk/mobileservice/social/share/WebLink;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mWebLink:Lcom/samsung/android/sdk/mobileservice/social/share/WebLink;

    return-object v0
.end method

.method public isOwnedByMe()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mIsOwnedByMe:Z

    return v0
.end method

.method public setContentUpdatedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mContentUpdatedTime:J

    return-void
.end method

.method public setCoverThumbnailFileUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mCoverThumbnailFileUri:Landroid/net/Uri;

    return-void
.end method

.method public setCreatedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mCreatedTime:J

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public setItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mItemCount:I

    return-void
.end method

.method public setLeaderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mLeaderId:Ljava/lang/String;

    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mMemo:Ljava/lang/String;

    return-void
.end method

.method public setMetaData(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mMetaData:Ljava/util/Map;

    return-void
.end method

.method public setModifiedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mModifiedTime:J

    return-void
.end method

.method public setMyCountUsage(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mMyCountUsage:J

    return-void
.end method

.method public setMyUsage(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mMyUsage:J

    return-void
.end method

.method public setOwnedByMe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mIsOwnedByMe:Z

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mSize:J

    return-void
.end method

.method public setSourceCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mSourceCid:Ljava/lang/String;

    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mSpaceId:Ljava/lang/String;

    return-void
.end method

.method public setStandAlone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mIsStandAlone:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setUnreadCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mUnreadCount:I

    return-void
.end method

.method public setWebLink(Lcom/samsung/android/sdk/mobileservice/social/share/WebLink;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->mWebLink:Lcom/samsung/android/sdk/mobileservice/social/share/WebLink;

    return-void
.end method
