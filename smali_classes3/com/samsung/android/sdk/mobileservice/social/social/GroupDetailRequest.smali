.class public Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;
    }
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ";"

.field private static final KEY_APP_ID:Ljava/lang/String; = "app_id"

.field private static final KEY_FEATURE_ID:Ljava/lang/String; = "feature_id"

.field private static final KEY_GROUP_ID:Ljava/lang/String; = "group_id"

.field private static final KEY_IGNORE_APP_ID:Ljava/lang/String; = "ignore_app_id"

.field private static final KEY_INVITABLE:Ljava/lang/String; = "invitable"

.field private static final KEY_MAX_GROUP_MEMBER_COUNT:Ljava/lang/String; = "max_group_member_count"

.field private static final KEY_SPACE_NAME:Ljava/lang/String; = "space_name"


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private mFeatureId:I

.field private final mFeatureIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupId:Ljava/lang/String;

.field private final mInvitable:Z

.field private final mMaxGroupMemberCount:I

.field private final mSpaceName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->access$000(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mAppId:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->access$100(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mGroupId:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->access$200(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mSpaceName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->access$300(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mFeatureIdList:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->access$400(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mMaxGroupMemberCount:I

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->access$500(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mInvitable:Z

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;->access$600(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mFeatureId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;-><init>(Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mAppId:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mGroupId:Ljava/lang/String;

    const-string v2, "group_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mInvitable:Z

    const-string v2, "invitable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ignore_app_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mMaxGroupMemberCount:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v3, "max_group_member_count"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mSpaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mSpaceName:Ljava/lang/String;

    const-string/jumbo v3, "space_name"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mFeatureId:I

    const-string v3, "feature_id"

    if-eq v1, v2, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mFeatureIdList:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/GroupDetailRequest;->mFeatureIdList:Ljava/util/List;

    const-string v2, ";"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method
