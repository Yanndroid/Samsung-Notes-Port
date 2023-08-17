.class public Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Model_WDocSyncData"


# instance fields
.field private isInitialized:Z

.field private mContext:Landroid/content/Context;

.field private mNativeHandle:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->isInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->isInitialized:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_init(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method private native WDocSyncData_composeXml(I)Ljava/lang/String;
.end method

.method private native WDocSyncData_finalize(I)V
.end method

.method private native WDocSyncData_getAppNoteUuid(I)Ljava/lang/String;
.end method

.method private native WDocSyncData_getBodyObjectCount(I)I
.end method

.method private native WDocSyncData_getBookmark(I)Ljava/lang/String;
.end method

.method private native WDocSyncData_getCommitId(I)Ljava/lang/String;
.end method

.method private native WDocSyncData_getContentFileDirPath(I)Ljava/lang/String;
.end method

.method private native WDocSyncData_getContentFileList(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;",
            ">;"
        }
    .end annotation
.end method

.method private native WDocSyncData_getDisplayCreatedTime(I)J
.end method

.method private native WDocSyncData_getDisplayModifiedTime(I)J
.end method

.method private native WDocSyncData_getDownSyncInstance(I)Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;
.end method

.method private native WDocSyncData_getMappedAt(I)J
.end method

.method private native WDocSyncData_getMappedUuid(I)Ljava/lang/String;
.end method

.method private native WDocSyncData_getModelName(I)Ljava/lang/String;
.end method

.method private native WDocSyncData_getMsLastSyncTime(I)J
.end method

.method private native WDocSyncData_getMsSyncAccountId(I)Ljava/lang/String;
.end method

.method private native WDocSyncData_getMsSyncDocumentUuid(I)Ljava/lang/String;
.end method

.method private native WDocSyncData_getNonObjectStrokeCount(I)I
.end method

.method private native WDocSyncData_getNoteTree(I)Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncNoteTree;
.end method

.method private native WDocSyncData_getObjectStrokeCount(I)I
.end method

.method private native WDocSyncData_getObjectStrokeMap(I)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncObjectStroke;",
            ">;"
        }
    .end annotation
.end method

.method private native WDocSyncData_getState(I)Ljava/lang/String;
.end method

.method private native WDocSyncData_getSyncModifiedTime(I)J
.end method

.method private native WDocSyncData_getTagList(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native WDocSyncData_init(Ljava/lang/String;)I
.end method

.method private native WDocSyncData_isConverted(I)Z
.end method

.method private native WDocSyncData_isFavorite(I)Z
.end method

.method private native WDocSyncData_isLocked(I)Z
.end method

.method private native WDocSyncData_parseXml(ILjava/lang/String;)Z
.end method

.method private native WDocSyncData_readWDoc(ILjava/lang/String;)Z
.end method

.method private native WDocSyncData_removeUnchangedData(IJ)Z
.end method

.method private native WDocSyncData_setAppNoteUuid(ILjava/lang/String;)Z
.end method

.method private native WDocSyncData_setBookmark(ILjava/lang/String;)Z
.end method

.method private native WDocSyncData_setCommitId(ILjava/lang/String;)Z
.end method

.method private native WDocSyncData_setConverted(IZ)Z
.end method

.method private native WDocSyncData_setDisplayCreatedTime(IJ)Z
.end method

.method private native WDocSyncData_setDisplayModifiedTime(IJ)Z
.end method

.method private native WDocSyncData_setFavorite(IZ)Z
.end method

.method private native WDocSyncData_setLocked(IZ)Z
.end method

.method private native WDocSyncData_setMappedAt(IJ)Z
.end method

.method private native WDocSyncData_setMappedUuid(ILjava/lang/String;)Z
.end method

.method private native WDocSyncData_setModelName(ILjava/lang/String;)Z
.end method

.method private native WDocSyncData_setMsLastSyncTime(IJ)Z
.end method

.method private native WDocSyncData_setMsSyncAccountId(ILjava/lang/String;)Z
.end method

.method private native WDocSyncData_setMsSyncDocumentUuid(ILjava/lang/String;)Z
.end method

.method private native WDocSyncData_setState(ILjava/lang/String;)Z
.end method

.method private native WDocSyncData_setSyncModifiedTime(IJ)Z
.end method

.method private native WDocSyncData_setTagList(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native WDocSyncData_update(IJ)Z
.end method

.method private native WDocSyncData_writeWDoc(ILjava/lang/String;)Z
.end method

.method private checkInitialized()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->isInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WDocSyncData is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "native handle is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static printXml(Ljava/lang/String;)V
    .locals 8

    const-string v0, "Model_WDocSyncData"

    const-string v1, "printXml"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "<"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, p0, v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " : <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    aget-object v6, v5, v2

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private throwCheckedExceptionLoadWNote()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_3

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-void

    :pswitch_0
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_UNSUPPORTED_TYPE - It does not correspond to the WNote file format. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_UNSUPPORTED_VERSION - Unsupported version of WNote file format. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errno("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidCacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_INVALID_CACHE - Cache is invalid.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidCacheException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_BOUND_FILE_NOT_FOUND - Can not find bound file.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenWDocSyncData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_INVALID_PASSWORD : the password is wrong. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private throwCheckedExceptionSaveWNote()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidCacheException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_INVALID_CACHE - Cache is invalid.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidCacheException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E_BOUND_FILE_NOT_FOUND - Can not find bound file.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenBoundFileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenWDocSyncData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errno("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getErrorModule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private throwUncheckedException()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenWDocSyncData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public composeXml()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_composeXml(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finalize()V
    .locals 3

    :try_start_0
    const-string v0, "Model_WDocSyncData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalize() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_finalize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAppNoteUuid()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getAppNoteUuid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyObjectCount()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getBodyObjectCount(I)I

    move-result v0

    return v0
.end method

.method public getBookmark()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getBookmark(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommitId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getCommitId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentFileDirPath()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getContentFileDirPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentFileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncContentFile;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getContentFileList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCreatedTime()J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getDisplayCreatedTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisplayModifiedTime()J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getDisplayModifiedTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDownSyncInstance()Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getDownSyncInstance(I)Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;

    move-result-object v0

    return-object v0
.end method

.method public getMappedAt()J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getMappedAt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMappedUuid()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getMappedUuid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getModelName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsLastSyncTime()J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getMsLastSyncTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMsSyncAccountId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getMsSyncAccountId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsSyncDocumentUuid()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getMsSyncDocumentUuid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonObjectStrokeCount()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getNonObjectStrokeCount(I)I

    move-result v0

    return v0
.end method

.method public getNoteTree()Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncNoteTree;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getNoteTree(I)Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncNoteTree;

    move-result-object v0

    return-object v0
.end method

.method public getObjectStrokeCount()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getObjectStrokeCount(I)I

    move-result v0

    return v0
.end method

.method public getObjectStrokeMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncObjectStroke;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getObjectStrokeMap(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getState(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncModifiedTime()J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getSyncModifiedTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTagList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_getTagList(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isConverted()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_isConverted(I)Z

    move-result v0

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_isFavorite(I)Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_isLocked(I)Z

    move-result v0

    return v0
.end method

.method public parseXml(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->isInitialized:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_parseXml(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwCheckedExceptionLoadWNote()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->isInitialized:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parseXml() - xml string is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "parseXml() - WDocSyncData is already initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readWDoc(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->isInitialized:Z

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_readWDoc(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwCheckedExceptionLoadWNote()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->isInitialized:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "readWDoc() - sdocx path is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "readWDoc() - WDocSyncData is already initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeUnchangedData(Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncNoteTree;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncNoteTree;->getNativeHandle()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_removeUnchangedData(IJ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setAppNoteUuid(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setAppNoteUuid(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setBookmark(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setBookmark(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setCommitId(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setCommitId(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setConverted(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setConverted(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setDisplayCreatedTime(J)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setDisplayCreatedTime(IJ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setDisplayModifiedTime(J)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setDisplayModifiedTime(IJ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setFavorite(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setFavorite(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setLocked(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setLocked(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setMappedAt(J)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setMappedAt(IJ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setMappedUuid(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setMappedUuid(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setModelName(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setMsLastSyncTime(J)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setMsLastSyncTime(IJ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setMsSyncAccountId(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setMsSyncAccountId(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setMsSyncDocumentUuid(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setMsSyncDocumentUuid(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setState(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setSyncModifiedTime(J)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setSyncModifiedTime(IJ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public setTagList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_setTagList(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public update(Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    iget p1, p1, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    int-to-long v1, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_update(IJ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwUncheckedException()V

    :cond_0
    return-void
.end method

.method public writeWDoc(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->checkInitialized()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->WDocSyncData_writeWDoc(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/worddocsync/SpenWDocSyncData;->throwCheckedExceptionSaveWNote()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "writeWDoc() - sdocx path is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
