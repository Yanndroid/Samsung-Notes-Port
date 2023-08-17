.class public Lcom/sec/spp/push/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_DEREGISTRATION_ID:Ljava/lang/String; = "com.sec.spp.DeRegistrationFail"

.field public static final DEFAULT_REGISTRATION_ID:Ljava/lang/String; = "com.sec.spp.RegistrationFail"

.field public static final EXTRA_APPID:Ljava/lang/String; = "appId"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "Error"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "ErrorCode"

.field public static final EXTRA_ERROR_MESSAGE:Ljava/lang/String; = "ErrorMessage"

.field public static final EXTRA_PUSH_STATUS:Ljava/lang/String; = "com.sec.spp.Status"

.field public static final EXTRA_REGID:Ljava/lang/String; = "RegistrationID"

.field public static final EXTRA_REQTYPE:Ljava/lang/String; = "reqType"

.field public static final EXTRA_USERDATA:Ljava/lang/String; = "userdata"

.field public static final KEYVALUE_PACKAGENAME:Ljava/lang/String; = "packageName="

.field public static final KEYVALUE_SPLIT:Ljava/lang/String; = ";"

.field public static final NOTIFICATION_ACK_RESULT_ACTION:Ljava/lang/String; = "com.sec.spp.NotificationAckResultAction"

.field public static final NOTIFICATION_INTENT_ACK:Ljava/lang/String; = "ack"

.field public static final NOTIFICATION_INTENT_ACK_RESULT:Ljava/lang/String; = "ackResult"

.field public static final NOTIFICATION_INTENT_APPID:Ljava/lang/String; = "appId"

.field public static final NOTIFICATION_INTENT_APP_DATA:Ljava/lang/String; = "appData"

.field public static final NOTIFICATION_INTENT_CONNECTION_TERM:Ljava/lang/String; = "connectionTerm"

.field public static final NOTIFICATION_INTENT_MSG:Ljava/lang/String; = "msg"

.field public static final NOTIFICATION_INTENT_NOTIID:Ljava/lang/String; = "notificationId"

.field public static final NOTIFICATION_INTENT_SENDER:Ljava/lang/String; = "sender"

.field public static final NOTIFICATION_INTENT_SESSION_INFO:Ljava/lang/String; = "sessionInfo"

.field public static final NOTIFICATION_INTENT_TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field public static final PUSH_DEREGISTRATION_FAIL:I = 0x3

.field public static final PUSH_DEREGISTRATION_SUCCESS:I = 0x2

.field public static final PUSH_REGISTRATION_CHANGED_ACTION:Ljava/lang/String; = "com.sec.spp.RegistrationChangedAction"

.field public static final PUSH_REGISTRATION_FAIL:I = 0x1

.field public static final PUSH_REGISTRATION_SUCCESS:I = 0x0

.field public static final PUSH_REQ_TYPE_DEFAULT:I = 0x0

.field public static final PUSH_REQ_TYPE_DEREGISTRATION:I = 0x2

.field public static final PUSH_REQ_TYPE_MAX:I = 0x3

.field public static final PUSH_REQ_TYPE_REGISTRATION:I = 0x1

.field public static final PUSH_SERVICE_REQUEST:Ljava/lang/String; = "com.sec.spp.action.SPP_REQUEST"

.field public static final SERVICE_ABNORMALLY_STOPPED_ACTION:Ljava/lang/String; = "com.sec.spp.ServiceAbnormallyStoppedAction"

.field public static final SERVICE_DATA_DELETED_ACTION:Ljava/lang/String; = "com.sec.spp.ServiceDataDeletedAction"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
