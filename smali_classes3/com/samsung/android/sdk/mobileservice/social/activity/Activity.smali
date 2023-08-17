.class public Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIVITY_TYPE_POSTING:I = 0x4

.field public static final ACTIVITY_TYPE_PROFILE_CHANGE:I = 0x3

.field public static final ACTIVITY_TYPE_PROFILE_IMAGE:I = 0x2

.field public static final ACTIVITY_TYPE_STATUS_MESSAGE:I = 0x1

.field public static final READ_TYPE_READ:I = 0x1

.field public static final READ_TYPE_UNREAD:I = 0x2


# instance fields
.field private mActivityId:Ljava/lang/String;

.field private mActivityImageContentUri:Landroid/net/Uri;

.field private mContentInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/activity/ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCreatedTime:J

.field private mMemo:Ljava/lang/String;

.field private mMeta:Ljava/lang/String;

.field private mModifiedTime:J

.field private mOwnerGuid:Ljava/lang/String;

.field private mOwnerName:Ljava/lang/String;

.field private mProfileImageContentUri:Landroid/net/Uri;

.field private mStatusMessage:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/activity/ContentInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mActivityId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mMemo:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mType:I

    iput-wide p4, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mCreatedTime:J

    iput-wide p6, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mModifiedTime:J

    iput-object p8, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mOwnerGuid:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mOwnerName:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mActivityImageContentUri:Landroid/net/Uri;

    iput-object p11, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mProfileImageContentUri:Landroid/net/Uri;

    iput-object p12, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mMeta:Ljava/lang/String;

    iput-object p13, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mContentInfoList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mActivityId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mStatusMessage:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mType:I

    iput-wide p4, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mCreatedTime:J

    iput-object p6, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mOwnerGuid:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mOwnerName:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mActivityImageContentUri:Landroid/net/Uri;

    iput-object p9, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mProfileImageContentUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mActivityId:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityImageContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mActivityImageContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getContentInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/activity/ContentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mContentInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mCreatedTime:J

    return-wide v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mMemo:Ljava/lang/String;

    return-object v0
.end method

.method public getMeta()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mMeta:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mModifiedTime:J

    return-wide v0
.end method

.method public getOwnerGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mOwnerGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mOwnerName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mProfileImageContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mStatusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/Activity;->mType:I

    return v0
.end method
