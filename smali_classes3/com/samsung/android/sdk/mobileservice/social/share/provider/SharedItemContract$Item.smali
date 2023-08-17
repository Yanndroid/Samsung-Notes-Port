.class public Lcom/samsung/android/sdk/mobileservice/social/share/provider/SharedItemContract$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/share/provider/SharedItemContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final CONTENT_LOCAL_PATH:Ljava/lang/String; = "original_content_path"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_TIME:Ljava/lang/String; = "createTime"

.field public static final DOWNLOAD_URL:Ljava/lang/String; = "download_url"

.field public static final IS_OWNED_BY_ME:Ljava/lang/String; = "is_owned_by_me"

.field public static final ITEM_ID:Ljava/lang/String; = "itemId"

.field public static final LAST_SYNCED_TIME:Ljava/lang/String; = "last_synced_time"

.field public static final MEMO:Ljava/lang/String; = "memo"

.field public static final META_DATA:Ljava/lang/String; = "meta_data"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final MODIFIED_TIME:Ljava/lang/String; = "modifiedTime"

.field public static final ORIGINAL_URL:Ljava/lang/String; = "original_url"

.field public static final OWNER:Ljava/lang/String; = "owner"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final SOURCE_CID:Ljava/lang/String; = "source_cid"

.field public static final SPACE_ID:Ljava/lang/String; = "spaceId"

.field public static final STREAMING_URL:Ljava/lang/String; = "streaming_url"

.field public static final THUMBNAIL_LOCAL_PATH:Ljava/lang/String; = "thumbnail_local_path"

.field public static final THUMBNAIL_URL:Ljava/lang/String; = "thumbnail_url"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.mobileservice.social.share.item/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/social/share/provider/SharedItemContract$Item;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
