.class public Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfValidation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LIMIT_OPERATION:I = 0x14

.field public static final LIMIT_SUBOPERATION:I = 0xa

.field private static final MAX_LEN_OPERATION_NAME:I = 0x64

.field private static final MAX_LEN_SUBOPERATION_NAME:I = 0x1e

.field private static final MAX_LEN_TAGS:I = 0x3

.field private static final MAX_LEN_TAG_KEY:I = 0x1e

.field private static final MAX_LEN_TAG_VALUE:I = 0x1e

.field private static final SEP_VER_12_1:I = 0x1d524


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStartOpPreCondition(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/diagmonagent/dma/aperf/Operation;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfValidation;->isAvailableDMA(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p2, 0x64

    if-le p0, p2, :cond_0

    const-string p0, "The maximum number of OperationName is limited by 100 characters."

    :goto_0
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 p1, 0x14

    if-lt p0, p1, :cond_1

    const-string p0, "The maximum number of Operation are limited by 20 operations"

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public static checkStartSubOpPreCondition(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/diagmonagent/dma/aperf/Operation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const-string p0, "No Operation, you have to made Operation"

    :goto_0
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0x1e

    if-le p2, v1, :cond_1

    const-string p0, "The maximum number of subOperationName is limited by 30 characters."

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfUtil;->getTheOperation(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/sec/android/diagmonagent/dma/aperf/Operation;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/diagmonagent/dma/aperf/Operation;->getSubOps()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 p1, 0xa

    if-lt p0, p1, :cond_2

    const-string p0, "The maximum number of subOperation is limited by 10 subOperations."

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    const-string p0, "It Couldn\'t find Operation that you made."

    goto :goto_0
.end method

.method public static checkStopOpPreCondition(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/diagmonagent/dma/aperf/Tag;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const-string p0, "Your operationId is empty."

    :goto_0
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfValidation;->isValidTags(Ljava/util/ArrayList;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "The Tags that you made aren\'t available."

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static checkStopSubOpPreCondition(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/diagmonagent/dma/aperf/Operation;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const-string p0, "No Operation, you have to made Operation"

    :goto_0
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "subOperation ID is empty."

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isAvailableDMA(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfValidation;->morePalette()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "It can\'t be supported on this device."

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isValidTags(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/diagmonagent/dma/aperf/Tag;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    const-string p0, "The operation can\'t have tags over 3"

    :goto_0
    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/diagmonagent/dma/aperf/Tag;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/dma/aperf/Tag;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    const-string p0, "The maximum of Key length is limited by 30 characters."

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/dma/aperf/Tag;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/dma/aperf/Tag;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_1

    const-string p0, "The maximum of Value length is limited by 30 characters."

    invoke-static {p0}, Lcom/sec/android/diagmonagent/common/logger/AppLog;->w(Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/dma/aperf/Tag;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static morePalette()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1d524

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
