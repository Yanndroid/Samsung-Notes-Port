.class public final Lio/netty/handler/codec/rtsp/RtspResponseStatuses;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AGGREGATE_OPERATION_NOT_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_GATEWAY:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_REQUEST:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONFERENCE_NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONTINUE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final CREATED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final DESTINATION_UNREACHABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final FORBIDDEN:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final GATEWAY_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final GONE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final HEADER_FIELD_NOT_VALID:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final INTERNAL_SERVER_ERROR:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final INVALID_RANGE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final KEY_MANAGEMENT_FAILURE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final LENGTH_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final LOW_STORAGE_SPACE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final METHOD_NOT_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final METHOD_NOT_VALID:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final MOVED_PERMANENTLY:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final MOVED_TEMPORARILY:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final MULTIPLE_CHOICES:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_ACCEPTABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_ENOUGH_BANDWIDTH:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_IMPLEMENTED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_MODIFIED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final OK:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final ONLY_AGGREGATE_OPERATION_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final OPTION_NOT_SUPPORTED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PARAMETER_IS_READONLY:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PARAMETER_NOT_UNDERSTOOD:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PAYMENT_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PRECONDITION_FAILED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final PROXY_AUTHENTICATION_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_ENTITY_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_URI_TOO_LONG:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final RTSP_VERSION_NOT_SUPPORTED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final SERVICE_UNAVAILABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final SESSION_NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNAUTHORIZED:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNSUPPORTED_MEDIA_TYPE:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNSUPPORTED_TRANSPORT:Lio/netty/handler/codec/http/HttpResponseStatus;

.field public static final USE_PROXY:Lio/netty/handler/codec/http/HttpResponseStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->CONTINUE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->OK:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->OK:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->CREATED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->CREATED:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xfa

    const-string v2, "Low on Storage Space"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->LOW_STORAGE_SPACE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->MULTIPLE_CHOICES:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->MULTIPLE_CHOICES:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->MOVED_PERMANENTLY:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->MOVED_PERMANENTLY:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x12e

    const-string v2, "Moved Temporarily"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->MOVED_TEMPORARILY:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_MODIFIED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_MODIFIED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->USE_PROXY:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->USE_PROXY:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->BAD_REQUEST:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->UNAUTHORIZED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->UNAUTHORIZED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PAYMENT_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->PAYMENT_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->FORBIDDEN:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->FORBIDDEN:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->METHOD_NOT_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->METHOD_NOT_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_ACCEPTABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_ACCEPTABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PROXY_AUTHENTICATION_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->PROXY_AUTHENTICATION_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->REQUEST_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->GONE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->GONE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->LENGTH_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->LENGTH_REQUIRED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->PRECONDITION_FAILED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->PRECONDITION_FAILED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_ENTITY_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->REQUEST_ENTITY_TOO_LARGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->REQUEST_URI_TOO_LONG:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->REQUEST_URI_TOO_LONG:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->UNSUPPORTED_MEDIA_TYPE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->UNSUPPORTED_MEDIA_TYPE:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c3

    const-string v2, "Parameter Not Understood"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_NOT_UNDERSTOOD:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c4

    const-string v2, "Conference Not Found"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->CONFERENCE_NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c5

    const-string v2, "Not Enough Bandwidth"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_ENOUGH_BANDWIDTH:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c6

    const-string v2, "Session Not Found"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->SESSION_NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c7

    const-string v2, "Method Not Valid in This State"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->METHOD_NOT_VALID:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c8

    const-string v2, "Header Field Not Valid for Resource"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->HEADER_FIELD_NOT_VALID:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1c9

    const-string v2, "Invalid Range"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->INVALID_RANGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1ca

    const-string v2, "Parameter Is Read-Only"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_IS_READONLY:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1cb

    const-string v2, "Aggregate operation not allowed"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->AGGREGATE_OPERATION_NOT_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1cc

    const-string v2, "Only Aggregate operation allowed"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->ONLY_AGGREGATE_OPERATION_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1cd

    const-string v2, "Unsupported transport"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->UNSUPPORTED_TRANSPORT:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1ce

    const-string v2, "Destination unreachable"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->DESTINATION_UNREACHABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1cf

    const-string v2, "Key management failure"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->KEY_MANAGEMENT_FAILURE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->INTERNAL_SERVER_ERROR:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->INTERNAL_SERVER_ERROR:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_IMPLEMENTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_IMPLEMENTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->BAD_GATEWAY:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->BAD_GATEWAY:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->SERVICE_UNAVAILABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->SERVICE_UNAVAILABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->GATEWAY_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->GATEWAY_TIMEOUT:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1f9

    const-string v2, "RTSP Version not supported"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->RTSP_VERSION_NOT_SUPPORTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    new-instance v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x227

    const-string v2, "Option not supported"

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->OPTION_NOT_SUPPORTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static valueOf(I)Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 1

    const/16 v0, 0xfa

    if-eq p0, v0, :cond_3

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1f9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x227

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lio/netty/handler/codec/http/HttpResponseStatus;->valueOf(I)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->KEY_MANAGEMENT_FAILURE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :pswitch_1
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->DESTINATION_UNREACHABLE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :pswitch_2
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->UNSUPPORTED_TRANSPORT:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :pswitch_3
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->ONLY_AGGREGATE_OPERATION_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :pswitch_4
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->AGGREGATE_OPERATION_NOT_ALLOWED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :pswitch_5
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_IS_READONLY:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :pswitch_6
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->INVALID_RANGE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :pswitch_7
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->HEADER_FIELD_NOT_VALID:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :pswitch_8
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->METHOD_NOT_VALID:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :pswitch_9
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->SESSION_NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :pswitch_a
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->NOT_ENOUGH_BANDWIDTH:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :pswitch_b
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->CONFERENCE_NOT_FOUND:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :pswitch_c
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->PARAMETER_NOT_UNDERSTOOD:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :cond_0
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->OPTION_NOT_SUPPORTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :cond_1
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->RTSP_VERSION_NOT_SUPPORTED:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :cond_2
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->MOVED_TEMPORARILY:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    :cond_3
    sget-object p0, Lio/netty/handler/codec/rtsp/RtspResponseStatuses;->LOW_STORAGE_SPACE:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1c3
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
