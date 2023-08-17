.class public Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEnableRecentInvitation:Z

.field private mEnableSharingAccount:Z

.field private mEnableSkip:Z

.field private mExceptionGuidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterAppId:Ljava/lang/String;

.field private mFilterFeatureIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInviteTitleUri:Ljava/lang/String;

.field private mMaxRecipientCount:I

.field private mRequestGroupPermission:Z

.field private mShowEditAuthority:Z

.field private mShowInvitationChoice:Z

.field private mStandalone:Z


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mFilterAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mFilterFeatureIdList:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mShowInvitationChoice:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mShowEditAuthority:Z

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mExceptionGuidList:Ljava/util/List;

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mMaxRecipientCount:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mEnableSharingAccount:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mEnableRecentInvitation:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mRequestGroupPermission:Z

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mInviteTitleUri:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mEnableSkip:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mStandalone:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mShowInvitationChoice:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mShowEditAuthority:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mExceptionGuidList:Ljava/util/List;

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mMaxRecipientCount:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mEnableSharingAccount:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mEnableRecentInvitation:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mRequestGroupPermission:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mInviteTitleUri:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mEnableSkip:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mStandalone:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mFilterAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mFilterFeatureIdList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mFilterAppId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mFilterFeatureIdList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mEnableSkip:Z

    return p0
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mStandalone:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mShowInvitationChoice:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mShowEditAuthority:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mExceptionGuidList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mMaxRecipientCount:I

    return p0
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mEnableSharingAccount:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mEnableRecentInvitation:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mRequestGroupPermission:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mInviteTitleUri:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;-><init>(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$1;)V

    return-object v0
.end method

.method public setEnableRecentInvitation(Z)Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mEnableRecentInvitation:Z

    return-object p0
.end method

.method public setEnableSharingAccount(Z)Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mEnableSharingAccount:Z

    return-object p0
.end method

.method public setEnableSkip(Z)Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mEnableSkip:Z

    return-object p0
.end method

.method public setExceptionGuidList(Ljava/util/List;)Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mExceptionGuidList:Ljava/util/List;

    return-object p0
.end method

.method public setFilterAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mFilterAppId:Ljava/lang/String;

    return-object p0
.end method

.method public setFilterFeatureIdList(Ljava/util/List;)Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mFilterFeatureIdList:Ljava/util/List;

    return-object p0
.end method

.method public setInviteTitleUri(Landroid/content/Context;I)Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mInviteTitleUri:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxRecipientCount(I)Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mMaxRecipientCount:I

    return-object p0
.end method

.method public setRequestGroupPermission(Z)Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mRequestGroupPermission:Z

    return-object p0
.end method

.method public setShowEditAuthority(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mShowEditAuthority:Z

    return-object p0
.end method

.method public setShowInvitationChoice(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mShowInvitationChoice:Z

    return-object p0
.end method

.method public setStandalone(Z)Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->mStandalone:Z

    return-object p0
.end method
