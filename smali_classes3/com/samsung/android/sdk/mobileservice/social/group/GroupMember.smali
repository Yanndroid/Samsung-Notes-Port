.class public Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ID_TYPE_ACCOUNT_ID:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_TYPE_DUID:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_TYPE_GUID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID_TYPE_MSISDN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

.field private mId:Ljava/lang/String;

.field private mIsLeader:Z

.field private mName:Ljava/lang/String;

.field private mOptionalId:Ljava/lang/String;

.field private mOptionalIdType:I

.field private mStatus:I

.field private mThumbnailContentUri:Landroid/net/Uri;

.field private mThumbnailFileUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mOptionalIdType:I

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mOptionalId:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mStatus:I

    iput-object p5, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mIsLeader:Z

    iput-object p7, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mThumbnailFileUri:Landroid/net/Uri;

    iput-object p8, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mThumbnailContentUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLandroid/net/Uri;Landroid/net/Uri;Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mOptionalIdType:I

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mOptionalId:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mStatus:I

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mIsLeader:Z

    iput-object p6, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mThumbnailFileUri:Landroid/net/Uri;

    iput-object p7, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mThumbnailContentUri:Landroid/net/Uri;

    iput-object p8, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    return-void
.end method


# virtual methods
.method public getAuthority()Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mOptionalId:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalIdType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mOptionalIdType:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mStatus:I

    return v0
.end method

.method public getThumbnailContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mThumbnailContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getThumbnailFileUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mThumbnailFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isLeader()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupMember;->mIsLeader:Z

    return v0
.end method
