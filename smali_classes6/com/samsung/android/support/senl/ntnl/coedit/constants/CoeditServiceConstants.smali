.class public Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$LastUpdateState;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$AbnormalReleaseState;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$GrpcInterval;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$CacheFilePath;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponseCode;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerResponse;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$MetaData;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ContentFile;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$MimeType;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$Extension;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$Annotation;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$Attribute;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$Element;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$Document;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$CONCURRNCY_RESULT;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$CONCURRNCY_KEY;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$WorkspaceError;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ClientError;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ConcurrencyError;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$SnapError;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$ServerError;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$Extra;,
        Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants$Action;
    }
.end annotation


# static fields
.field public static final CHECKPOINT_DEFAULT:J = -0x1L

.field public static final CHECKPOINT_INVALID:J = -0x2L

.field public static final CHECKPOINT_START:J = 0x0L

.field public static final FEATURE_TEST_DEBUG_INFO:Z = false

.field public static final RICH_TEXT_START_INDEX:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isClientError(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "CLIENT_ERROR_FORCE_REFRESH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CLIENT_ERROR_UPDATE_OBJECT_GET_XML"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CLIENT_ERROR_UPDATE_OBJECT_SET_XML"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/constants/CoeditServiceConstants;->isClientUpdateError(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isClientUpdateError(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "CLIENT_ERROR_ADD_ANNOTATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CLIENT_ERROR_ADD_OBJECT_SPAN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CLIENT_ERROR_UPDATE_TEXT_VIEW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CLIENT_ERROR_INSERT_CONTENT_FILE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CLIENT_ERROR_REMOVE_CONTENT_FILE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CLIENT_ERROR_INSERT_OBJECT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CLIENT_ERROR_REMOVE_OBJECT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CLIENT_ERROR_REQUEST_PARTIAL_UPDATE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isConcurrencyError(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "CONCURRENCY_ERROR_SERVER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CONCURRENCY_ERROR_SUBMIT_FAILED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CONCURRENCY_ERROR_TRANSFORM_FAILED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CONCURRENCY_ERROR_MULTIPLE_TRANSFORM_FAILED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CONCURRENCY_ERROR_TRANSFORM_WITH_MULTIPLE_FAILED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CONCURRENCY_ERROR_CATCHUP_FAILED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isServerError(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "SERVER_ERROR_UPDATE_XML_VERSION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SERVER_ERROR_UPDATE_APP_VERSION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SERVER_ERROR_MAINTENANCE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
