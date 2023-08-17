.class public Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native WNoteFile_getBodyTextString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native WNoteFile_getCachePath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native WNoteFile_getCreatedTime(Ljava/lang/String;)J
.end method

.method private static native WNoteFile_getDisplayCreatedTime(Ljava/lang/String;)J
.end method

.method private static native WNoteFile_getDisplayModifiedTime(Ljava/lang/String;)J
.end method

.method private static native WNoteFile_getDocumentType(Ljava/lang/String;)I
.end method

.method private static native WNoteFile_getFixedBackgroundTheme(Ljava/lang/String;)I
.end method

.method private static native WNoteFile_getFixedFont(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native WNoteFile_getFixedTextDirection(Ljava/lang/String;)I
.end method

.method private static native WNoteFile_getFormatVersion(Ljava/lang/String;)I
.end method

.method private static native WNoteFile_getHeight(Ljava/lang/String;)I
.end method

.method private static native WNoteFile_getLastModifiedTime(Ljava/lang/String;)J
.end method

.method private static native WNoteFile_getLastRecognizedDataModifiedTime(Ljava/lang/String;)J
.end method

.method private static native WNoteFile_getMinFormatVersion(Ljava/lang/String;)I
.end method

.method private static native WNoteFile_getOrientation(Ljava/lang/String;)I
.end method

.method private static native WNoteFile_getOwnerId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native WNoteFile_getPageMode(Ljava/lang/String;)I
.end method

.method private static native WNoteFile_getSdkFormatVersion()I
.end method

.method private static native WNoteFile_getServerCheckPoint(Ljava/lang/String;)J
.end method

.method private static native WNoteFile_getWidth(Ljava/lang/String;)I
.end method

.method private static native WNoteFile_hasSnapSavedData(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native WNoteFile_isValid(Ljava/lang/String;)Z
.end method

.method private static native WNoteFile_removeAllClosedCache(Ljava/lang/String;)Z
.end method

.method private static native WNoteFile_removeCache(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native WNoteFile_removeCacheByName(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native WNoteFile_removeCacheDirectory(Ljava/lang/String;I)Z
.end method

.method private static native WNoteFile_removeClosedCache(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native WNoteFile_setDisplayCreatedTime(Ljava/lang/String;J)Z
.end method

.method private static native WNoteFile_setDisplayModifiedTime(Ljava/lang/String;J)Z
.end method

.method private static native WNoteFile_setDocumentType(Ljava/lang/String;I)Z
.end method

.method private static native WNoteFile_setFixedBackgroundTheme(Ljava/lang/String;I)Z
.end method

.method private static native WNoteFile_setFixedFont(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native WNoteFile_setFixedTextDirection(Ljava/lang/String;I)Z
.end method

.method private static native WNoteFile_setOwnerId(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native WNoteFile_setServerCheckPoint(Ljava/lang/String;J)Z
.end method

.method private static deleteFile(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to delete ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBodyTextString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getBodyTextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-object p0
.end method

.method public static getCachePath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getCachePath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCreatedTime(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getCreatedTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDisplayCreatedTime(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getDisplayCreatedTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDisplayModifiedTime(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getDisplayModifiedTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDocumentType(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getDocumentType(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->values()[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getFixedBackgroundTheme(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getFixedBackgroundTheme(Ljava/lang/String;)I

    move-result p0

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;->THEME_LIGHT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;->THEME_MAX:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-gt p0, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;->values()[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background Theme ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] is invalid."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFixedFont(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getFixedFont(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFixedTextDirection(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getFixedTextDirection(Ljava/lang/String;)I

    move-result p0

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;->TEXT_DIRECTION_LTR:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;->TEXT_DIRECTION_MAX:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-gt p0, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;->values()[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text Direction ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] is invalid."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFormatVersion(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getFormatVersion(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getHeight(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getHeight(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "filePath can not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLastModifiedTime(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastRecognizedDataModifiedTime(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getLastRecognizedDataModifiedTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMinFormatVersion(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getMinFormatVersion(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getOrientation(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getOrientation(Ljava/lang/String;)I

    move-result p0

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->LANDSCAPE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    :goto_0
    return-object v0
.end method

.method public static getOwnerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-object p0
.end method

.method public static getPageMode(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getPageMode(Ljava/lang/String;)I

    move-result p0

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-gt p0, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->values()[Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Page Mode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] is invalid."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSdkFormatVersion()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getSdkFormatVersion()I

    move-result v0

    return v0
.end method

.method public static getServerCheckPoint(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getServerCheckPoint(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getWidth(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_getWidth(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "filePath can not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hasSnapSavedData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_hasSnapSavedData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEncrypted(Ljava/lang/String;)Z
    .locals 6

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "]"

    const-string v3, "WNoteFile"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEncrypted() - the file isn\'t exist.["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->isEncrypted()Z

    move-result p0

    return p0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEncrypted() - fail to read endtag.["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] ["

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "isEncrypted() - invalid argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isLocked(Ljava/lang/String;)Z
    .locals 6

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, "]"

    const-string v3, "WNoteFile"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLocked() - the file isn\'t exist.["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->getDocumentType()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->UNLOCKED_DOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    if-eq p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLocked() - fail to read endtag.["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "isLocked() - invalid argument"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_isValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static lock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lock() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WNoteFile"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eq v0, v2, :cond_7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->getDocumentType()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->UNLOCKED_DOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    if-ne v4, v5, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->isEncrypted()Z

    move-result v4

    if-eq v4, v2, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-ne v4, v2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".enc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-ne v5, v2, :cond_1

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->deleteFile(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eq v5, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock() - fail to make file.["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->makeFile(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->LOCKED_WDOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->setDocumentType(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->replace(Ljava/lang/String;)V

    invoke-static {v3, p1}, Lcom/samsung/android/sdk/pen/worddoc/util/WLockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".bak"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->deleteFile(Ljava/io/File;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock() - fail to recover backup.["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock() - fail to make backup.["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->LOCKED_WDOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->setDocumentType(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;)V

    invoke-virtual {v3, p0}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->replace(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/util/WLockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_5
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

    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock() - the file isn\'t exist.["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lock() - invalid argument2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lock() - invalid argument1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeAllClosedCache(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_removeAllClosedCache(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static removeCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_removeCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    const/16 p1, 0xb

    if-eq p0, p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static removeCacheByName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_removeCacheByName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    const/16 p1, 0xb

    if-eq p0, p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static removeCacheDirectory(Landroid/content/Context;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_removeCacheDirectory(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static removeClosedCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_removeClosedCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    const/16 p1, 0xb

    if-eq p0, p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static setDisplayCreatedTime(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_setDisplayCreatedTime(Ljava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static setDisplayModifiedTime(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_setDisplayModifiedTime(Ljava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static setDocumentType(Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_setDocumentType(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static setFixedBackgroundTheme(Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$BackgroundTheme;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_setFixedBackgroundTheme(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static setFixedFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_setFixedFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setFixedTextDirection(Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$TextDirection;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_setFixedTextDirection(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static setOwnerId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_setOwnerId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static setServerCheckPoint(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNoteFile;->WNoteFile_setServerCheckPoint(Ljava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static unlock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlock() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WNoteFile"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eq v0, v3, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->getDocumentType()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->LOCKED_WDOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->isEncrypted()Z

    move-result v1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/worddoc/util/WLockUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unlock - decrypt fail. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->removeEncryptionInfo()V

    sget-object p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;->UNLOCKED_DOC:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->setDocumentType(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$DocumentType;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/worddoc/util/WEndTagUtil;->replace(Ljava/lang/String;)V

    return-void

    :cond_1
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

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlock() - the file isn\'t exist.["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unlock() - invalid argument2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unlock() - invalid argument1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
