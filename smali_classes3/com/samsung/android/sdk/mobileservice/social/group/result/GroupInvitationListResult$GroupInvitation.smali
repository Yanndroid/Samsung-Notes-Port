.class public Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupInvitation"
.end annotation


# instance fields
.field private mExpiredTime:J

.field private mGroupCoverThumbnailContentUri:Landroid/net/Uri;

.field private mGroupCoverThumbnailFileUri:Landroid/net/Uri;

.field private mGroupCoverThumbnailUrl:Ljava/lang/String;

.field private mGroupId:Ljava/lang/String;

.field private mGroupName:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mRequestedTime:J

.field private mRequesterId:Ljava/lang/String;

.field private mRequesterImageContentUri:Landroid/net/Uri;

.field private mRequesterImageFileUri:Landroid/net/Uri;

.field private mRequesterImageUrl:Ljava/lang/String;

.field private mRequesterName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mGroupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mGroupName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mGroupCoverThumbnailUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mGroupCoverThumbnailFileUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mGroupCoverThumbnailContentUri:Landroid/net/Uri;

    iput-object p6, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mMessage:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequesterId:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequesterName:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequesterImageUrl:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequesterImageFileUri:Landroid/net/Uri;

    iput-object p11, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequesterImageContentUri:Landroid/net/Uri;

    iput-wide p12, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequestedTime:J

    iput-wide p14, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mExpiredTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mGroupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mGroupName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mGroupCoverThumbnailUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mGroupCoverThumbnailFileUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mGroupCoverThumbnailContentUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequesterId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequesterName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequesterImageUrl:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequesterImageFileUri:Landroid/net/Uri;

    iput-object p8, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequesterImageContentUri:Landroid/net/Uri;

    iput-wide p9, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequestedTime:J

    iput-wide p11, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mExpiredTime:J

    return-void
.end method


# virtual methods
.method public getExpiredTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mExpiredTime:J

    return-wide v0
.end method

.method public getGroupCoverThumbnailContentUri()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mGroupCoverThumbnailContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getGroupCoverThumbnailFileUri()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mGroupCoverThumbnailFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getGroupCoverThumbnailUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mGroupCoverThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequestedTime:J

    return-wide v0
.end method

.method public getRequesterId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequesterId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequesterImageContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequesterImageContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRequesterImageFileUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequesterImageFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRequesterImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequesterImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequesterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;->mRequesterName:Ljava/lang/String;

    return-object v0
.end method
