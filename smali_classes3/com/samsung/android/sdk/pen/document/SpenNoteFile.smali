.class public Lcom/samsung/android/sdk/pen/document/SpenNoteFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native NoteFile_copy(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native NoteFile_getAppMajorVersion(Ljava/lang/String;)I
.end method

.method private static native NoteFile_getAppMinorVersion(Ljava/lang/String;)I
.end method

.method private static native NoteFile_getAppName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native NoteFile_getAppPatchName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native NoteFile_getAppVersion(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/StringBuffer;)Z
.end method

.method private static native NoteFile_getCoverImage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native NoteFile_getCreatedTime(Ljava/lang/String;)J
.end method

.method private static native NoteFile_getFormatVersion(Ljava/lang/String;)I
.end method

.method private static native NoteFile_getHeight(Ljava/lang/String;)I
.end method

.method private static native NoteFile_getLastEditedCacheDataTime(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native NoteFile_getLastModifiedTime(Ljava/lang/String;)J
.end method

.method private static native NoteFile_getOrientation(Ljava/lang/String;)I
.end method

.method private static native NoteFile_getSize(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z
.end method

.method private static native NoteFile_getWidth(Ljava/lang/String;)I
.end method

.method private static native NoteFile_hasUnsavedData(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native NoteFile_hasUnsavedData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
.end method

.method private static native NoteFile_isFavorite(Ljava/lang/String;)Z
.end method

.method private static native NoteFile_isLocked(Ljava/lang/String;)Z
.end method

.method private static native NoteFile_isRightPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native NoteFile_isValid(Ljava/lang/String;)Z
.end method

.method private static native NoteFile_lock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native NoteFile_removeCache(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native NoteFile_removeNote(Ljava/lang/String;)Z
.end method

.method private static native NoteFile_setCoverImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native NoteFile_setFavorite(Ljava/lang/String;Z)Z
.end method

.method private static native NoteFile_unlock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E_UNSUPPORTED_TYPE : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] does not correspond to the SPD file format"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method private static deleteFile(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static getAppMajorVersion(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getAppMajorVersion(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "filePath can not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAppMinorVersion(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getAppMinorVersion(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "filePath can not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppPatchName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getAppPatchName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "filePath can not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCoverImagePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getCoverImage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCreatedTime(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getCreatedTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFormatVersion(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getFormatVersion(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getHeight(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getHeight(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "filePath can not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLastEditedCacheDataTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getLastEditedCacheDataTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLastModifiedTime(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOrientation(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getOrientation(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getWidth(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getWidth(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "filePath can not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hasUnsavedData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_hasUnsavedData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isBuildTypeEngMode()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFavorite(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_isFavorite(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isLocked(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_isLocked(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_isValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isrightPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_isRightPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_2

    const/16 v0, 0xb

    if-eq p2, v0, :cond_2

    const/16 v0, 0xd

    if-eq p2, v0, :cond_1

    const/16 p1, 0x11

    if-eq p2, p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    const-string p1, "SpenNoteFile"

    const-string/jumbo p2, "the password is wrong"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "E_UNSUPPORTED_TYPE : ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] does not correspond to the SPD file format"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_3
    :goto_0
    return p0
.end method

.method public static lock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_lock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    const/16 p2, 0xa

    if-eq p0, p2, :cond_1

    const/16 p2, 0xb

    if-eq p0, p2, :cond_1

    const/16 p2, 0xd

    if-eq p0, p2, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "E_UNSUPPORTED_TYPE : ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] does not correspond to the SPD file format"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static releaseCoverImagePath(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->deleteFile(Ljava/io/File;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static removeCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_removeCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static removeNote(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_removeNote(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_UNSUPPORTED_TYPE : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] does not correspond to the SPD file format"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static setCoverImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_setCoverImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    const/16 p2, 0xa

    if-eq p0, p2, :cond_1

    const/16 p2, 0xb

    if-eq p0, p2, :cond_1

    const/16 p2, 0xd

    if-eq p0, p2, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "E_UNSUPPORTED_TYPE : ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] does not correspond to the SPD file format"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static setFavorite(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_setFavorite(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E_UNSUPPORTED_TYPE : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] does not correspond to the SPD file format"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static unlock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_unlock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    const/16 p2, 0xa

    if-eq p0, p2, :cond_2

    const/16 p2, 0xb

    if-eq p0, p2, :cond_2

    const/16 p2, 0xd

    if-eq p0, p2, :cond_1

    const/16 p1, 0x11

    if-eq p0, p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string p1, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "E_UNSUPPORTED_TYPE : ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] does not correspond to the SPD file format"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method
