.class public Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerResponseCode"
.end annotation


# static fields
.field public static final FAILED_PRECONDITION_WORKSPACE_NOT_BLOCKED_MSG:Ljava/lang/String; = "9026"

.field public static final FAILED_PRECONDITION_WORKSPACE_RESET_NO_CHANGE_MSG:Ljava/lang/String; = "9027"

.field public static final SERVER_RESPONSE_CODE_ABORTED:Ljava/lang/String; = "ABORTED"

.field public static final SERVER_RESPONSE_CODE_ABORTED_METRIC:Ljava/lang/String; = "ABORTED_METRIC"

.field public static final SERVER_RESPONSE_CODE_ALREADY_EXISTS:Ljava/lang/String; = "ALREADY_EXISTS"

.field public static final SERVER_RESPONSE_CODE_CANCELLED:Ljava/lang/String; = "CANCELLED"

.field public static final SERVER_RESPONSE_CODE_DATA_LOSS:Ljava/lang/String; = "DATA_LOSS"

.field public static final SERVER_RESPONSE_CODE_DEADLINE_EXCEEDED:Ljava/lang/String; = "DEADLINE_EXCEEDED"

.field public static final SERVER_RESPONSE_CODE_FAILED_PRECONDITION:Ljava/lang/String; = "FAILED_PRECONDITION"

.field public static final SERVER_RESPONSE_CODE_INTERNAL:Ljava/lang/String; = "INTERNAL"

.field public static final SERVER_RESPONSE_CODE_INVALID_ARGUMENT:Ljava/lang/String; = "INVALID_ARGUMENT"

.field public static final SERVER_RESPONSE_CODE_NOT_FOUND:Ljava/lang/String; = "NOT_FOUND"

.field public static final SERVER_RESPONSE_CODE_OK:Ljava/lang/String; = "OK"

.field public static final SERVER_RESPONSE_CODE_OUT_OF_RANGE:Ljava/lang/String; = "OUT_OF_RANGE"

.field public static final SERVER_RESPONSE_CODE_PERMISSION_DENIED:Ljava/lang/String; = "PERMISSION_DENIED"

.field public static final SERVER_RESPONSE_CODE_RESOURCE_EXHAUSTED:Ljava/lang/String; = "RESOURCE_EXHAUSTED"

.field public static final SERVER_RESPONSE_CODE_UNAUTHENTICATED:Ljava/lang/String; = "UNAUTHENTICATED"

.field public static final SERVER_RESPONSE_CODE_UNAVAILABLE:Ljava/lang/String; = "UNAVAILABLE"

.field public static final SERVER_RESPONSE_CODE_UNIMPLEMENTED:Ljava/lang/String; = "UNIMPLEMENTED"

.field public static final SERVER_RESPONSE_CODE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final SERVER_RESPONSE_NOT_FOUND_DEVICE:Ljava/lang/String; = "5002"

.field private static final WORKSPACE_NOT_BLOCKED_MSG:Ljava/lang/String; = "workspace is not blocked"

.field private static final WORKSPACE_RESET_NO_CHANGE_MSG:Ljava/lang/String; = "change no need reset"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConnectNeeded(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "NOT_FOUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "5002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isDeadlineExceeded(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "DEADLINE_EXCEEDED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isResetNotNeeded(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "9026"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "9027"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "workspace is not blocked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "change no need reset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isRetryNeeded(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;->isUnavailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ABORTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ABORTED_METRIC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isUnavailable(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isWorkspaceBlocked(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "workspace has been blocked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
