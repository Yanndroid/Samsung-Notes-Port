.class public Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffConstant$Caller;,
        Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffConstant$DeviceType;,
        Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffConstant$ActivityType;
    }
.end annotation


# static fields
.field public static final DISABLE_HANDOFF:Ljava/lang/String; = "disableHandoff"

.field public static final ENABLE_HANDOFF:Ljava/lang/String; = "enableHandoff"

.field public static final GET_HANDOFF_DATA:Ljava/lang/String; = "getHandoffData"

.field public static final GET_HANDOFF_INFO:Ljava/lang/String; = "getHandoffInfo"

.field public static HANDOFF_DEFAULT_TIME_OUT:I = 0x927c0

.field public static final HANDOFF_ENABLED:Z = true

.field public static final HANDOFF_VERSION:Ljava/lang/String; = "0.1.0"

.field public static final KEY_ACTIVITY_TYPE:Ljava/lang/String; = "activity_type"

.field public static final KEY_APP_ID:Ljava/lang/String; = "app_id"

.field public static final KEY_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final KEY_EXPIRY_TIME:Ljava/lang/String; = "expiryTime"

.field public static final KEY_HANDOFF_DATA:Ljava/lang/String; = "handoffData"

.field public static final KEY_HANDOFF_VERSION:Ljava/lang/String; = "version"

.field public static final KEY_IS_HANDOFF_LAUNCH:Ljava/lang/String; = "handoff"

.field public static final KEY_LAST_MODIFIED_TYPE:Ljava/lang/String; = "lastModificationTime"

.field public static final KEY_SYNC_ENABLED:Ljava/lang/String; = "sync_on"

.field public static final REQUEST_SYNC_HANDOFF_DATA:Ljava/lang/String; = "requestSyncHandoffData"

.field public static final URI_HANDOFF:Ljava/lang/String; = "content://com.samsung.android.mcfds.HandoffProvider"

.field public static final URI_HANDOFF_DATA_RECEIVEING_SUCCESS:Ljava/lang/String; = "content://com.samsung.android.mcfds.HandoffProvider/DataReceivingSuccess/com.samsung.android.app.notes"

.field public static final URI_HANDOFF_DATA_SENDING_SUCCESS:Ljava/lang/String; = "content://com.samsung.android.mcfds.HandoffProvider/DataSendingSuccess/com.samsung.android.app.notes"

.field public static final URI_HANDOFF_EVENT_CHANGED:Ljava/lang/String; = "content://com.samsung.android.mcfds.HandoffProvider/EventChanged"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
