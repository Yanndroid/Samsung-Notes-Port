.class public Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CACHE_LIMIT_SIZE:I = 0x1f400000

.field private static final TAG:Ljava/lang/String; = "SpenSDocFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native SDocFile_checkValidity(Ljava/lang/String;)Z
.end method

.method private static native SDocFile_deleteCacheDirectory(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private static native SDocFile_getCachePath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native SDocFile_getCreatedTime(Ljava/lang/String;Z)J
.end method

.method private static native SDocFile_getDocumentType(Ljava/lang/String;)I
.end method

.method private static native SDocFile_getFormatVersion(Ljava/lang/String;)I
.end method

.method private static native SDocFile_getModifiedTime(Ljava/lang/String;Z)J
.end method

.method private static native SDocFile_getReminderData(Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;",
            ">;"
        }
    .end annotation
.end method

.method private static native SDocFile_getTitle(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private static native SDocFile_getTitleSpan(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;",
            ">;"
        }
    .end annotation
.end method

.method private static native SDocFile_getUncompressedSize(Ljava/lang/String;)J
.end method

.method private static native SDocFile_hasUnsavedData(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native SDocFile_isCacheAvailable(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private static native SDocFile_isEncrypted(Ljava/lang/String;)Z
.end method

.method private static native SDocFile_isFavorite(Ljava/lang/String;)Z
.end method

.method private static native SDocFile_isLocked(Ljava/lang/String;)Z
.end method

.method private static native SDocFile_isTrimmingCache()Z
.end method

.method private static native SDocFile_setFavorite(Ljava/lang/String;Z)Z
.end method

.method private static native SDocFile_setReminderData(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;",
            ">;)Z"
        }
    .end annotation
.end method

.method private static native SDocFile_stopTrimCache()Z
.end method

.method private static native SDocFile_trimCache(Ljava/lang/String;ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public static checkValidity(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_checkValidity(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static convertTo32bitEncryption(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    const-string v0, "SpenSDocFile"

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    array-length v2, p1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "]"

    if-eqz v2, :cond_6

    new-instance v2, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, p0, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->parse(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getDocumentType()I

    move-result v3

    const-string v5, "convertTo32bitEncryption() - the file["

    if-eq v3, v4, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is not locked."

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->isEncrypted()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is not encrypted."

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v1

    aget-object p1, p1, v4

    if-eqz v3, :cond_5

    if-nez p1, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    return v1

    :cond_4
    :try_start_1
    invoke-static {p0, v2, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/LockUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/util/LockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {v2, p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->forceRenameTo(Ljava/lang/String;Ljava/lang/String;)Z

    return v4

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertTo32bitEncrypt() - encryption fail. : "

    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertTo32bitEncrypt() - decryption fail. : "

    goto :goto_3

    :cond_5
    :goto_4
    const-string p0, "convertTo32bitEncrypt() - invalid password List2"

    goto :goto_2

    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertTo32bitEncryption() - fail to parse file["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertTo32bitEncryption() - the file isn\'t exist.["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_5
    const-string p0, "convertTo32bitEncrypt() - invalid password List"

    goto/16 :goto_2
.end method

.method public static deleteCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_deleteCacheDirectory(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return p0
.end method

.method public static deleteCacheDirectory(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_deleteCacheDirectory(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return p0
.end method

.method private static forceRenameTo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const-string v1, "SpenSDocFile"

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "]"

    if-nez v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceRenameTo() - Fail to get source File. ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v6

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceRenameTo() - Cannot delete dest file ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceRenameTo() - Cannot rename file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] to ["

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    return v6

    :cond_5
    :goto_0
    const-string p0, "forceRenameTo() - Invalid argument."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getCachePath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_getCachePath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCreatedTime(Ljava/lang/String;)J
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_getCreatedTime(Ljava/lang/String;Z)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->throwUncheckedException(I)V

    :cond_0
    return-wide v0
.end method

.method public static getCreatedTime(Ljava/lang/String;Z)J
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_getCreatedTime(Ljava/lang/String;Z)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->throwUncheckedException(I)V

    :cond_0
    return-wide p0
.end method

.method public static getDocumentType(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_getDocumentType(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->throwUncheckedException(I)V

    :cond_0
    return p0
.end method

.method public static getEncryptedCode(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "getEncryptedCode() - fail to delete temp file. ["

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_8

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "]"

    const/4 v3, 0x0

    const-string v4, "SpenSDocFile"

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getEncryptedCode() - the file isn\'t exist.["

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;

    invoke-direct {v1, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v1, p0, v5}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->parse(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getDocumentType()I

    move-result v6

    const-string v7, "getEncryptedCode() - the file["

    if-eq v6, v5, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is not locked."

    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->isEncrypted()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is not encrypted."

    goto :goto_2

    :cond_2
    array-length v1, p1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_7

    aget-object v7, p1, v6

    if-nez v7, :cond_3

    goto/16 :goto_7

    :cond_3
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p0, v8, v7}, Lcom/samsung/android/sdk/composer/document/sdoc/util/LockUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-ne p1, v5, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v3, v7

    goto :goto_7

    :catch_0
    move-exception v7

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v8, v3

    goto :goto_5

    :catch_1
    move-exception v7

    move-object v8, v3

    :goto_4
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEncryptedCode() - Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-ne v9, v5, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :catchall_1
    move-exception p0

    :goto_5
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v5, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_6
    throw p0

    :cond_7
    :goto_7
    return-object v3

    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getEncryptedCode() - fail to parse file["

    goto/16 :goto_0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getEncryptedCode() - invalid argument"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFormatVersion(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_getFormatVersion(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->throwUncheckedException(I)V

    :cond_0
    return p0
.end method

.method public static getModifiedTime(Ljava/lang/String;)J
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_getModifiedTime(Ljava/lang/String;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->throwUncheckedException(I)V

    :cond_0
    return-wide v0
.end method

.method public static getModifiedTime(Ljava/lang/String;Z)J
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_getModifiedTime(Ljava/lang/String;Z)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->throwUncheckedException(I)V

    :cond_0
    return-wide p0
.end method

.method public static getReminderData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_getReminderData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->throwUncheckedException(I)V

    :cond_0
    return-object p0
.end method

.method public static getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->getTitle(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTitle(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_getTitle(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->throwUncheckedException(I)V

    :cond_0
    return-object p0
.end method

.method public static getTitleSpan(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->getTitleSpan(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static getTitleSpan(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_getTitleSpan(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->throwUncheckedException(I)V

    :cond_0
    return-object p0
.end method

.method public static getUncompressedSize(Ljava/lang/String;)J
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_getUncompressedSize(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->throwUncheckedException(I)V

    :cond_0
    return-wide v0
.end method

.method public static hasUnsavedData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_hasUnsavedData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isCacheAvailable(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_isCacheAvailable(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isEncrypted(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_isEncrypted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isFavorite(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_isFavorite(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isLocked(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_isLocked(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTrimmingCache()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_isTrimmingCache()Z

    move-result v0

    return v0
.end method

.method public static lock(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "SpenSDocFile"

    const-string v1, "lock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->parse(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getDocumentType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->setDocumentType(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getCreatedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->setCreatedTime(J)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getModifiedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->setModifiedTime(J)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->update(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/LockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lock() - the file["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is locked already."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lock() - the file isn\'t exist.["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lock() - invalid argument2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lock() - invalid argument1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setFavorite(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_setFavorite(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static setReminderData(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_setReminderData(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static stopTrimCache()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_stopTrimCache()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private static throwUncheckedException(I)V
    .locals 1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-void

    :pswitch_0
    new-instance p0, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException;

    const-string v0, "E_UNSUPPORTED_TYPE : It does not correspond to the SDoc file format"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException;

    const-string v0, "E_UNSUPPORTED_VERSION : code version can note support this file"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    const-string v0, "SpenSDocFile is already closed"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static trimCache(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->trimCache(Landroid/content/Context;ILjava/util/ArrayList;)V

    return-void
.end method

.method public static trimCache(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;->SDocFile_trimCache(Ljava/lang/String;ILjava/util/ArrayList;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static unlock(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "SpenSDocFile"

    const-string/jumbo v1, "unlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "unlock() - invalid argument"

    if-eqz p0, :cond_5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v2, p0, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->parse(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getDocumentType()I

    move-result v5

    if-ne v5, v4, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->isEncrypted()Z

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v4, :cond_2

    if-eqz p1, :cond_1

    array-length v3, p1

    const/4 v5, 0x2

    if-lt v3, v5, :cond_1

    aget-object v3, p1, v6

    :try_start_0
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/util/LockUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlock - step 1 fail. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object p1, p1, v4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, "unlock - try step 2."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/LockUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p1

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->removeEncryptionInfo()V

    invoke-virtual {v2, v6}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->setDocumentType(I)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getCreatedTime()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->setCreatedTime(J)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getModifiedTime()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->setModifiedTime(J)V

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->resetStartPosition(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->update(Ljava/lang/String;)V

    return-object v3

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlock() - the file["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is not locked."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlock() - the file isn\'t exist.["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static updateModifiedTime(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    const-string v0, "SpenSDocFile"

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    array-length v2, p1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "]"

    if-eqz v2, :cond_8

    new-instance v2, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2, p0, v5}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->parse(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getDocumentType()I

    move-result v3

    const-string/jumbo v6, "updateModifiedTime() - the file["

    if-eq v3, v5, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is not locked."

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->isEncrypted()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] is not encrypted."

    goto :goto_0

    :cond_2
    aget-object v2, p1, v1

    aget-object p1, p1, v5

    if-eqz v2, :cond_7

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/LockUtil;->isInvalidDecryption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v5, :cond_6

    :try_start_1
    invoke-static {p0, v3, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/LockUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v5, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    const-string/jumbo p1, "updateModifiedTime() - fail to delete temporary file."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;

    invoke-direct {p1, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;-><init>(Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {p1, p0, v5}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->parse(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getCreatedTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->setCreatedTime(J)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getModifiedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->setModifiedTime(J)V

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->update(Ljava/lang/String;)V

    return v5

    :catch_0
    const-string/jumbo p0, "updateModifiedTime() - fail to parse endtag"

    goto/16 :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateModifiedTime() - invalid file : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_3
    const-string/jumbo p0, "updateModifiedTime() - invalid password List2"

    goto/16 :goto_2

    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateModifiedTime() - fail to parse file["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateModifiedTime() - the file isn\'t exist.["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_4
    const-string/jumbo p0, "updateModifiedTime() - invalid password List"

    goto/16 :goto_2
.end method
