.class public Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupContract$Group;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Group"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupContract$Group$Status;,
        Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupContract$Group$Type;
    }
.end annotation


# static fields
.field public static final AUTHORITY_MANAGE:Ljava/lang/String; = "authorityManage"

.field public static final CONTENTS_UPDATE_TIME:Ljava/lang/String; = "contents_update_time"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COVER_IMAGE:Ljava/lang/String; = "groupCoverImage"

.field public static final COVER_THUMBNAIL_CONTENT_URI:Ljava/lang/String; = "coverThumbnailContentUri"

.field public static final CREATED_TIME:Ljava/lang/String; = "createdTime"

.field public static final EXPIRE_TIME:Ljava/lang/String; = "expireTime"

.field public static final GROUP_ID:Ljava/lang/String; = "groupId"

.field public static final GROUP_NAME:Ljava/lang/String; = "groupName"

.field public static final LAST_SPACE_SYNCED_TIME:Ljava/lang/String; = "last_space_synced_time"

.field public static final LEADER_ID:Ljava/lang/String; = "ownerId"

.field public static final MAX_MEMBER_COUNT:Ljava/lang/String; = "maxMemberCount"

.field public static final MEMBERS_COUNT:Ljava/lang/String; = "membersCount"

.field public static final MEMBER_STATUS:Ljava/lang/String; = "memberStatus"

.field public static final META_DATA:Ljava/lang/String; = "metadata"

.field public static final PATTERN_WITH_DUMMY_FAMILY:Ljava/lang/String; = "with_family"

.field public static final SERVICE_ID:Ljava/lang/String; = "serviceId"

.field public static final THUMBNAIL_LOCAL_PATH:Ljava/lang/String; = "thumbnail_local_path"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UPDATED_TIME:Ljava/lang/String; = "updatedTime"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.mobileservice.social.group/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupContract$Group;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
