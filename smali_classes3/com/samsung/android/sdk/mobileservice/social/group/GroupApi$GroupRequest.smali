.class public Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupRequest"
.end annotation


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

.field public static final GROUP_TYPE_LOCAL:Ljava/lang/String; = "UNM1"


# instance fields
.field private mCoverImageUri:Landroid/net/Uri;

.field private mDefaultMemberAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

.field private mGroupName:Ljava/lang/String;

.field private mGroupType:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mUseInvitationLink:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mUseInvitationLink:Z

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;->INVALID:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mDefaultMemberAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mGroupName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mUseInvitationLink:Z

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;->INVALID:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mDefaultMemberAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mGroupName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mCoverImageUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mUseInvitationLink:Z

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;->INVALID:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mDefaultMemberAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mGroupName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mGroupType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mUseInvitationLink:Z

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;->INVALID:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mDefaultMemberAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mGroupName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mGroupType:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mCoverImageUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mUseInvitationLink:Z

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;->INVALID:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mDefaultMemberAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mGroupName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mGroupType:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mUseInvitationLink:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mUseInvitationLink:Z

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;->INVALID:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mGroupName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mGroupType:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mUseInvitationLink:Z

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mDefaultMemberAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    return-void
.end method


# virtual methods
.method public getCoverImageUri()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mCoverImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDefaultMemberAuthorityType()Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mDefaultMemberAuthority:Lcom/samsung/android/sdk/mobileservice/social/group/GroupAuthority$AuthorityType;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mGroupType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getUseInvitationLink()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupRequest;->mUseInvitationLink:Z

    return v0
.end method
