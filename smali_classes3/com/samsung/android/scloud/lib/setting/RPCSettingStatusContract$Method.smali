.class public interface abstract Lcom/samsung/android/scloud/lib/setting/RPCSettingStatusContract$Method;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/lib/setting/RPCSettingStatusContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Method"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final GET_STATUS_BY_ID:Ljava/lang/String; = "get_status_by_id"

.field public static final GET_STATUS_BY_TAG:Ljava/lang/String; = "get_status_by_tag"

.field public static final GET_STATUS_CHANGED_URI:Ljava/lang/String; = "get_status_changed_uri"

.field public static final GET_STATUS_IDS:Ljava/lang/String; = "get_status_ids"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.scloud.statusprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/lib/setting/RPCSettingStatusContract$Method;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
