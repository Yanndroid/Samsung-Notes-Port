.class public Lcom/samsung/android/sdk/mobileservice/social/group/Group;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GROUP_TYPE_AUTO_HOTSPOT:Ljava/lang/String; = "AHSP"

.field public static final GROUP_TYPE_FAMILY:Ljava/lang/String; = "FMLY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GROUP_TYPE_GENERAL:Ljava/lang/String; = "GNRL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GROUP_TYPE_SA_FAMILY_GROUP:Ljava/lang/String; = "SAFM"

.field public static final GROUP_TYPE_UNNAMED:Ljava/lang/String; = "UNM1"


# instance fields
.field private mActiveMemberCount:I

.field private mAuthorityManage:Z

.field private mContentsUpdatedTime:J

.field private mCoverThumbnailContentUri:Landroid/net/Uri;

.field private mCoverThumbnailFileUri:Landroid/net/Uri;

.field private mCreatedTime:J

.field private mDefaultMemberAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

.field private mExpireTime:J

.field private mGroupId:Ljava/lang/String;

.field private mGroupName:Ljava/lang/String;

.field private mGroupType:Ljava/lang/String;

.field private mInvitationLink:Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

.field private mLeaderId:Ljava/lang/String;

.field private mMaxMemberCount:I

.field private mMetaData:Ljava/util/Map;

.field private mUpdatedTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIJJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mAuthorityManage:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupType:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mLeaderId:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCoverThumbnailFileUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCoverThumbnailContentUri:Landroid/net/Uri;

    iput-wide p5, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCreatedTime:J

    iput p7, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mMaxMemberCount:I

    iput p8, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mActiveMemberCount:I

    iput-wide p9, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mUpdatedTime:J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mMetaData:Ljava/util/Map;

    iput-wide p11, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mContentsUpdatedTime:J

    iput-wide p13, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mExpireTime:J

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mAuthorityManage:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIJJJZLcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mAuthorityManage:Z

    move-object v1, p1

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupId:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupName:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupType:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mLeaderId:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCoverThumbnailFileUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCoverThumbnailContentUri:Landroid/net/Uri;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCreatedTime:J

    move v1, p7

    iput v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mMaxMemberCount:I

    move v1, p8

    iput v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mActiveMemberCount:I

    move-wide v1, p9

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mUpdatedTime:J

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mMetaData:Ljava/util/Map;

    move-wide v1, p11

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mContentsUpdatedTime:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mExpireTime:J

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mAuthorityManage:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mInvitationLink:Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mDefaultMemberAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIJLjava/util/Map;JJZ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupId:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupName:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupType:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mLeaderId:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCoverThumbnailFileUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCoverThumbnailContentUri:Landroid/net/Uri;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCreatedTime:J

    move v1, p7

    iput v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mMaxMemberCount:I

    move v1, p8

    iput v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mActiveMemberCount:I

    move-wide v1, p9

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mUpdatedTime:J

    move-object v1, p11

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mMetaData:Ljava/util/Map;

    move-wide v1, p12

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mContentsUpdatedTime:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mExpireTime:J

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mAuthorityManage:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIJLjava/util/Map;JJZLcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupId:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupName:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupType:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mLeaderId:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCoverThumbnailFileUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCoverThumbnailContentUri:Landroid/net/Uri;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCreatedTime:J

    move v1, p7

    iput v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mMaxMemberCount:I

    move v1, p8

    iput v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mActiveMemberCount:I

    move-wide v1, p9

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mUpdatedTime:J

    move-object v1, p11

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mMetaData:Ljava/util/Map;

    move-wide v1, p12

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mContentsUpdatedTime:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mExpireTime:J

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mAuthorityManage:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mInvitationLink:Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupType:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mLeaderId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCoverThumbnailFileUri:Landroid/net/Uri;

    iput-object p6, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCoverThumbnailContentUri:Landroid/net/Uri;

    iput-wide p7, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCreatedTime:J

    iput p9, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mMaxMemberCount:I

    iput p10, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mActiveMemberCount:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mAuthorityManage:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JIIJLjava/util/Map;JJZLcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupId:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupName:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupType:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mLeaderId:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCoverThumbnailFileUri:Landroid/net/Uri;

    move-object v1, p6

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCoverThumbnailContentUri:Landroid/net/Uri;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCreatedTime:J

    move v1, p9

    iput v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mMaxMemberCount:I

    move v1, p10

    iput v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mActiveMemberCount:I

    move-wide v1, p11

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mUpdatedTime:J

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mMetaData:Ljava/util/Map;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mContentsUpdatedTime:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mExpireTime:J

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mAuthorityManage:Z

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mInvitationLink:Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    return-void
.end method


# virtual methods
.method public getActiveMemberCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mActiveMemberCount:I

    return v0
.end method

.method public getAuthorityManage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mAuthorityManage:Z

    return v0
.end method

.method public getContentsUpdatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mContentsUpdatedTime:J

    return-wide v0
.end method

.method public getCoverThumbnailContentUri()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCoverThumbnailContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCoverThumbnailFileUri()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCoverThumbnailFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mCreatedTime:J

    return-wide v0
.end method

.method public getDefaultMemberAuthority()Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mDefaultMemberAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mExpireTime:J

    return-wide v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mGroupType:Ljava/lang/String;

    return-object v0
.end method

.method public getInvitationLink()Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mInvitationLink:Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    return-object v0
.end method

.method public getLeaderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mLeaderId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxMemberCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mMaxMemberCount:I

    return v0
.end method

.method public getMetaData()Ljava/util/Map;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mMetaData:Ljava/util/Map;

    return-object v0
.end method

.method public getUpdatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/Group;->mUpdatedTime:J

    return-wide v0
.end method
