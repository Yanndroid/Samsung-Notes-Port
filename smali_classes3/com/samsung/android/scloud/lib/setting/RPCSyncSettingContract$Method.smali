.class public interface abstract Lcom/samsung/android/scloud/lib/setting/RPCSyncSettingContract$Method;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/lib/setting/RPCSyncSettingContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Method"
.end annotation


# static fields
.field public static final CANCEL_SYNC:Ljava/lang/String; = "cancel_sync"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final GET_AUTO_SYNC:Ljava/lang/String; = "get_auto_sync"

.field public static final GET_DENIED_PERMISSIONS:Ljava/lang/String; = "get_denied_permissions"

.field public static final GET_LAST_SUCCESS_TIME:Ljava/lang/String; = "get_last_success_time"

.field public static final GET_NETWORK_OPTION:Ljava/lang/String; = "get_network_option"

.field public static final GET_PROFILE:Ljava/lang/String; = "get_profile"

.field public static final IS_PERMISSION_GRANTED:Ljava/lang/String; = "is_permission_granted"

.field public static final IS_SUPPORTED:Ljava/lang/String; = "is_supported"

.field public static final IS_SYNCABLE:Ljava/lang/String; = "is_syncable"

.field public static final IS_SYNC_ACTIVE:Ljava/lang/String; = "is_sync_active"

.field public static final REQUEST_SYNC:Ljava/lang/String; = "start_sync"

.field public static final SET_AUTO_SYNC:Ljava/lang/String; = "set_auto_sync"

.field public static final SET_NETWORK_OPTION:Ljava/lang/String; = "set_network_option"

.field public static final SHOW_SETTING:Ljava/lang/String; = "show_setting"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.scloud.sync.rpc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/lib/setting/RPCSyncSettingContract$Method;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
