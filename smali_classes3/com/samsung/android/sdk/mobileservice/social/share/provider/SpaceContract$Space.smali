.class public Lcom/samsung/android/sdk/mobileservice/social/share/provider/SpaceContract$Space;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/share/provider/SpaceContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Space"
.end annotation


# static fields
.field public static final CONTENTS_UPDATE_TIME:Ljava/lang/String; = "contents_update_time"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_TIME:Ljava/lang/String; = "createTime"

.field public static final DOWNLOAD_URL:Ljava/lang/String; = "download_url"

.field public static final GROUP_ID:Ljava/lang/String; = "groupId"

.field public static final IS_OWNED_BY_ME:Ljava/lang/String; = "is_owned_by_me"

.field public static final LAST_SYNCED_TIME:Ljava/lang/String; = "last_synced_time"

.field public static final MEDIA_COUNT:Ljava/lang/String; = "media_count"

.field public static final MEMO:Ljava/lang/String; = "memo"

.field public static final META_DATA:Ljava/lang/String; = "meta_data"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final MODIFIED_TIME:Ljava/lang/String; = "modifiedTime"

.field public static final MY_COUNT_USAGE:Ljava/lang/String; = "my_count_usage"

.field public static final MY_USAGE:Ljava/lang/String; = "my_usage"

.field public static final OWNER:Ljava/lang/String; = "owner"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final SORUCE_CID:Ljava/lang/String; = "sourceCid"

.field public static final SPACE_ID:Ljava/lang/String; = "spaceId"

.field public static final STREAMING_URL:Ljava/lang/String; = "streaming_url"

.field public static final THUMBNAIL_LOCAL_PATH:Ljava/lang/String; = "thumbnail_local_path"

.field public static final THUMBNAIL_URL:Ljava/lang/String; = "thumbnail_url"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final UNREAD_COUNT:Ljava/lang/String; = "unread_count"

.field public static final WEBLINK_CREATED_TIME:Ljava/lang/String; = "weblink_created_time"

.field public static final WEBLINK_CREATOR:Ljava/lang/String; = "weblink_creator"

.field public static final WEBLINK_EXPIRED_TIME:Ljava/lang/String; = "weblink_expired_time"

.field public static final WEBLINK_URL:Ljava/lang/String; = "weblink_url"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.mobileservice.social.share.space/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/social/share/provider/SpaceContract$Space;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
