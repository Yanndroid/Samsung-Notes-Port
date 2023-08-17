.class public Lcom/samsung/android/support/senl/cm/base/common/util/LockFileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LockFileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLockType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, ".spd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".spdbak"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ".memo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, ".snb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ".snbbak"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/LockFileUtils;->isLockedSNB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x3

    :goto_0
    move v1, p0

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/LockFileUtils;->isLockedSPD(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x2

    goto :goto_0

    :cond_5
    :goto_2
    return v1
.end method

.method public static getLockTypeFromSdoc(Landroid/content/Context;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)I
    .locals 2

    :try_start_0
    sget v0, Lcom/samsung/android/support/senl/cm/base/common/constants/Constants$SNote;->SDOC_LOCKED_FILE_KEY:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getBoundFilePath(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLockTypeFromSdoc, e : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockFileUtils"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/common/util/LockFileUtils;->getLockType(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLockTypeFromSdocx(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/common/constants/Constants$SNote;->WNOTE_LOCKED_FILE_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->hasAttachedFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/cm/base/common/constants/Constants$SNote;->WNOTE_LOCKED_FILE_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getAttachedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLockTypeFromSdocx, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LockFileUtils"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/LockFileUtils;->getLockType(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static isLockedSNB(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/SNBConverter;->isLocked(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isLockedSPD(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/SPDConverter;->isLocked(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
