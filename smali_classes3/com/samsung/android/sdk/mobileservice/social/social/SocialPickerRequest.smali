.class public Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;
    }
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ";"

.field private static final KEY_ENABLE_RECENT_INVITATION:Ljava/lang/String; = "enable_recent_invitation"

.field private static final KEY_ENABLE_SHARING_ACCOUNT:Ljava/lang/String; = "enable_sharing_account"

.field private static final KEY_ENABLE_SKIP:Ljava/lang/String; = "enable_skip_button"

.field private static final KEY_EXCEPTION_GUID:Ljava/lang/String; = "exception_guid_list"

.field private static final KEY_FILTER_APP_ID:Ljava/lang/String; = "filter_app_id"

.field private static final KEY_FILTER_FEATURE_ID:Ljava/lang/String; = "filter_feature_id"

.field private static final KEY_IGNORE_APP_ID:Ljava/lang/String; = "ignore_app_id"

.field private static final KEY_INVITE_TITLE_URI:Ljava/lang/String; = "invite_title_uri"

.field private static final KEY_MAX_RECIPIENT_COUNT:Ljava/lang/String; = "maxRecipientCount"

.field private static final KEY_REQUEST_GROUP_PERMISSION:Ljava/lang/String; = "request_group_permission"

.field private static final KEY_SHOW_EDIT_AUTHORITY:Ljava/lang/String; = "show_edit_authority"

.field private static final KEY_SHOW_INVITATION_CHOICE:Ljava/lang/String; = "show_invitation_choice"

.field private static final KEY_STANDALONE_GROUP:Ljava/lang/String; = "standalone_group"


# instance fields
.field private final mEnableRecentInvitation:Z

.field private final mEnableSharingAccount:Z

.field private final mEnableSkip:Z

.field private final mExceptionGuidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilterAppId:Ljava/lang/String;

.field private final mFilterFeatureIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInviteTitleUri:Ljava/lang/String;

.field private final mMaxRecipientCount:I

.field private final mRequestGroupPermission:Z

.field private final mShowEditAuthority:Z

.field private final mShowInvitationChoice:Z

.field private final mStandalone:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->access$000(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mFilterAppId:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->access$100(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mFilterFeatureIdList:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->access$200(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mShowInvitationChoice:Z

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->access$300(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mShowEditAuthority:Z

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->access$400(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mExceptionGuidList:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->access$500(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mMaxRecipientCount:I

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->access$600(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mEnableSharingAccount:Z

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->access$700(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mEnableRecentInvitation:Z

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->access$800(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mRequestGroupPermission:Z

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->access$900(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mInviteTitleUri:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->access$1000(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mEnableSkip:Z

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;->access$1100(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mStandalone:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;-><init>(Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mFilterAppId:Ljava/lang/String;

    const-string v2, "filter_app_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mFilterFeatureIdList:Ljava/util/List;

    const-string v2, ";"

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mFilterFeatureIdList:Ljava/util/List;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "filter_feature_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mExceptionGuidList:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mExceptionGuidList:Ljava/util/List;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exception_guid_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mMaxRecipientCount:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v2, "maxRecipientCount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mEnableSharingAccount:Z

    const-string v2, "enable_sharing_account"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mEnableRecentInvitation:Z

    const-string v2, "enable_recent_invitation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mRequestGroupPermission:Z

    const-string v2, "request_group_permission"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    const-string v2, "ignore_app_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mShowInvitationChoice:Z

    const-string/jumbo v2, "show_invitation_choice"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mShowEditAuthority:Z

    const-string/jumbo v2, "show_edit_authority"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mEnableSkip:Z

    const-string v2, "enable_skip_button"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mStandalone:Z

    const-string/jumbo v2, "standalone_group"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mInviteTitleUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/SocialPickerRequest;->mInviteTitleUri:Ljava/lang/String;

    const-string v2, "invite_title_uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method
