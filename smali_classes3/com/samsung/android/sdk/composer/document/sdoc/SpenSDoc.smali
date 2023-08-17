.class public Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SDocHistoryListener;,
        Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ContentTextChangedListener;,
        Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ContentEventListener;,
        Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$UpdateInfo;,
        Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;,
        Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$TextSearchData;,
        Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;,
        Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;
    }
.end annotation


# static fields
.field private static final EXTRA_VALUE_LOCK_CONFIRMED:Ljava/lang/String; = "CONFIRMED_PASSWORD"

.field private static final LOCKED_SDOC:I = 0x1

.field private static final LOCKED_SNB:I = 0x3

.field private static final LOCKED_SPD:I = 0x2

.field private static final LOCKED_TMEMO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SpenSDoc"

.field private static final UNLOCKED_SDOC:I


# instance fields
.field private final SDOC_TEMP_PATH:Ljava/lang/String;

.field private mHandle:I

.field private mTempDirPath:Ljava/lang/String;

.field private mTempFilePath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    const-string v0, "/SPenSDK30/SdocTemp"

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDOC_TEMP_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempDirPath:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    const-string p1, "/SPenSDK30/SdocTemp"

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDOC_TEMP_PATH:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempFilePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempDirPath:Ljava/lang/String;

    const-string p1, "SpenSDoc"

    const-string v0, "SpenSDoc1()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    const-string v0, "/SPenSDK30/SdocTemp"

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDOC_TEMP_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempDirPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenSDoc2() - fileFullPath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSDoc"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    const-string v0, "/SPenSDK30/SdocTemp"

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDOC_TEMP_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempDirPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenSDoc4() - fileFullPath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], mode = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSDoc"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    const-string v0, "/SPenSDK30/SdocTemp"

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDOC_TEMP_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempDirPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenSDoc3() - fileFullPath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], restoreUnsavedData = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSDoc"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    const-string v0, "/SPenSDK30/SdocTemp"

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDOC_TEMP_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempDirPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenSDoc5() - fileFullPath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], mode = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSDoc"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "CONFIRMED_PASSWORD"

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)V

    return-void
.end method

.method private native SDoc_SelectRegion(ILcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;)Z
.end method

.method private native SDoc_appendContent(ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z
.end method

.method private native SDoc_backupContentList(ILjava/util/ArrayList;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method private native SDoc_beginTransaction(I)Z
.end method

.method private native SDoc_bindFile1(ILjava/lang/String;)I
.end method

.method private native SDoc_bindFile2(II)I
.end method

.method private native SDoc_clearAllBoundFiles(I)Z
.end method

.method private native SDoc_clearChangedFlag(I)Z
.end method

.method private native SDoc_clearCursorInfo(I)Z
.end method

.method private native SDoc_clearHistory(I)Z
.end method

.method private native SDoc_clearSelection(I)Z
.end method

.method private native SDoc_close(IZ)Z
.end method

.method private native SDoc_commitHistory(I)Z
.end method

.method private native SDoc_containContent(ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z
.end method

.method private native SDoc_discard(I)Z
.end method

.method private native SDoc_endTransaction(I)Z
.end method

.method private native SDoc_finalize(I)V
.end method

.method private native SDoc_findVoiceName(ILjava/lang/String;)Z
.end method

.method private native SDoc_getBoundFilePath(II)Ljava/lang/String;
.end method

.method private native SDoc_getBoundFilesSize(I)J
.end method

.method private native SDoc_getCachePath(I)Ljava/lang/String;
.end method

.method private native SDoc_getContent(II)Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;
.end method

.method private native SDoc_getContentCount(I)I
.end method

.method private native SDoc_getContentIndex(ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)I
.end method

.method private native SDoc_getContentList(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;"
        }
    .end annotation
.end method

.method private native SDoc_getCreatedTime(I)J
.end method

.method private native SDoc_getCursorPosition(I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;
.end method

.method private native SDoc_getDocumentType(I)I
.end method

.method private native SDoc_getExtraDataByteArray(ILjava/lang/String;)[B
.end method

.method private native SDoc_getExtraDataInt(ILjava/lang/String;)I
.end method

.method private native SDoc_getExtraDataString(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native SDoc_getMode(I)I
.end method

.method private native SDoc_getModifiedTime(I)J
.end method

.method private native SDoc_getNewVoiceName(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native SDoc_getReminderData(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;",
            ">;"
        }
    .end annotation
.end method

.method private native SDoc_getSearchData(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;",
            ">;"
        }
    .end annotation
.end method

.method private native SDoc_getSearchData2(ILjava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;",
            ">;"
        }
    .end annotation
.end method

.method private native SDoc_getSelectedRegionBegin(I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;
.end method

.method private native SDoc_getSelectedRegionEnd(I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;
.end method

.method private native SDoc_getTextLength(I)I
.end method

.method private native SDoc_getTextMaxCount(I)I
.end method

.method private native SDoc_getThumbnailCount(I)I
.end method

.method private native SDoc_getThumbnailMaxCount(I)I
.end method

.method private native SDoc_getTitle(I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;
.end method

.method private native SDoc_hasExtraDataByteArray(ILjava/lang/String;)Z
.end method

.method private native SDoc_hasExtraDataInt(ILjava/lang/String;)Z
.end method

.method private native SDoc_hasExtraDataString(ILjava/lang/String;)Z
.end method

.method private native SDoc_init(Ljava/lang/String;Ljava/lang/String;ZI)I
.end method

.method private native SDoc_insertContent(ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;I)Z
.end method

.method private native SDoc_isClosed(I)Z
.end method

.method private native SDoc_isContentChanged(I)Z
.end method

.method private native SDoc_isContentChangedByApp(I)Z
.end method

.method private native SDoc_isFavorite(I)Z
.end method

.method private native SDoc_isLocked(I)Z
.end method

.method private native SDoc_isRedoable(I)Z
.end method

.method private native SDoc_isRedoing(I)Z
.end method

.method private native SDoc_isSaving(I)Z
.end method

.method private native SDoc_isSelected(I)Z
.end method

.method private native SDoc_isTransaction(I)Z
.end method

.method private native SDoc_isUndoable(I)Z
.end method

.method private native SDoc_isUndoing(I)Z
.end method

.method private native SDoc_lock(I)Z
.end method

.method private native SDoc_quickSave(I)Z
.end method

.method private native SDoc_redo(I)Z
.end method

.method private native SDoc_registContentEventListener(IILcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ContentEventListener;)Z
.end method

.method private native SDoc_releaseFile1(ILjava/lang/String;)Z
.end method

.method private native SDoc_releaseFile2(II)Z
.end method

.method private native SDoc_reload(I)Z
.end method

.method private native SDoc_removeAllContent(I)Z
.end method

.method private native SDoc_removeContent(ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z
.end method

.method private native SDoc_removeEmptyContentHandwriting(I)Z
.end method

.method private native SDoc_removeExtraDataByteArray(ILjava/lang/String;)Z
.end method

.method private native SDoc_removeExtraDataInt(ILjava/lang/String;)Z
.end method

.method private native SDoc_removeExtraDataString(ILjava/lang/String;)Z
.end method

.method private native SDoc_reserveDiscard(IZ)Z
.end method

.method private native SDoc_restoreContentList(ILjava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;"
        }
    .end annotation
.end method

.method private native SDoc_save1(ILjava/lang/String;)Z
.end method

.method private native SDoc_save2(ILjava/lang/String;Z)Z
.end method

.method private native SDoc_save3(ILjava/lang/String;JJ)Z
.end method

.method private native SDoc_save4(ILjava/lang/String;ZJJ)Z
.end method

.method private native SDoc_setAppVersion(ILjava/lang/String;)Z
.end method

.method private native SDoc_setContentTextChangedListener(ILcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ContentTextChangedListener;)Z
.end method

.method private native SDoc_setCursorPosition(ILcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;)Z
.end method

.method private native SDoc_setDocumentType(II)Z
.end method

.method private native SDoc_setExtraDataByteArray(ILjava/lang/String;[BI)Z
.end method

.method private native SDoc_setExtraDataInt(ILjava/lang/String;I)Z
.end method

.method private native SDoc_setExtraDataString(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native SDoc_setFavorite(IZ)Z
.end method

.method private native SDoc_setReminderData(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native SDoc_setSDocHistoryListener(ILcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SDocHistoryListener;)Z
.end method

.method private native SDoc_setSearchData(ILjava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native SDoc_setSearchData2(ILjava/lang/String;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native SDoc_setTextMaxCount(II)Z
.end method

.method private native SDoc_setThumbnailMaxCount(II)Z
.end method

.method private native SDoc_stopSave(I)Z
.end method

.method private native SDoc_undo(I)Z
.end method

.method private native SDoc_unlock(I)Z
.end method

.method private native SDoc_unregistContentEventListener(II)Z
.end method

.method private addExtraZipFileList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private declared-synchronized checkTempDirectory()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SpenSDoc"

    const-string v1, "Fail to create temp directory."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fail to create temp directory."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private clearExtraZipFileList()V
    .locals 0

    return-void
.end method

.method private decryptSdoc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempDirPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempFilePath:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/LockUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempFilePath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempFilePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->parse(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SpenSDoc"

    const-string p2, "decryptSdoc() - fail to delete temporary file."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException;

    const-string p2, "decryptSdoc() - decrypt fail."

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException;

    const-string p2, "decryptSdoc() - fail to unlock file"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1
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

    invoke-static {v3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->deleteFile(Ljava/io/File;)V

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

.method private static forceRenameTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "SpenSDoc"

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "]"

    if-ne v1, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceRenameTo() - cur path is same as new path. ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".tmp"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v7, "] to ["

    if-eqz v6, :cond_3

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceRenameTo() - Cannot rename origin dest file ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p0

    if-ne p0, v2, :cond_4

    invoke-static {v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->deleteFile(Ljava/io/File;)V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceRenameTo() - Cannot rename temp file ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceRenameTo() - Fail to get current path File. ["

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
    :goto_1
    const-string p0, "forceRenameTo() - Invalid argument."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() - fileFullPath = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], mode = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SpenSDoc"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/SPenSDK30/SdocTemp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempDirPath:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->preConstruct(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempFilePath:Ljava/lang/String;

    if-eqz p3, :cond_1

    move-object p2, p3

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p2, p5, p6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_init(Ljava/lang/String;Ljava/lang/String;ZI)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->postConstruct()V

    iget p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    const/16 p3, 0x13

    if-eq p2, p3, :cond_2

    packed-switch p2, :pswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_1

    :pswitch_0
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException;

    const-string p2, "E_UNSUPPORTED_TYPE : It does not correspond to the SDoc file format"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException;

    const-string p2, "E_UNSUPPORTED_VERSION : It can not support SDoc version"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SpenSDoc("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") is already closed"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    :try_start_0
    iget p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setAppVersion(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "init() - Fail to get app version."

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    const-string p2, "Unknown"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setAppVersion(ILjava/lang/String;)Z

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private postConstruct()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SpenSDoc"

    const-string v1, "load() - fail to delete temporary file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mTempFilePath:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private preConstruct(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    const-string v0, "SpenSDoc"

    const-string v1, "preConstruct()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "preConstruct() - new"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->parse(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preConstruct() - ct = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getCreatedTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getModifiedTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getDocumentType()I

    move-result v3

    if-eq v3, v2, :cond_1

    const-string p1, "preConstruct() - normal"

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preConstruct() - Locked file ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getDocumentType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->getCurrentFormatVersion()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->isEncrypted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    const-string v3, "CONFIRMED_PASSWORD"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->isEncrypted()Z

    move-result p2

    if-ne p2, v2, :cond_5

    if-eqz p3, :cond_4

    array-length p2, p3

    const/4 v1, 0x2

    if-lt p2, v1, :cond_4

    const/4 p2, 0x0

    aget-object p2, p3, p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eq v1, v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->checkTempDirectory()V

    :try_start_0
    const-string v1, "preConstruct - step 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->decryptSdoc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preConstruct - step 1 fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object p3, p3, v2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "preConstruct - step 2"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->decryptSdoc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    throw v1

    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException;

    const-string p2, "preConstruct() - open locked file with no password2"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException;

    const-string p2, "preConstruct() - open locked file with no password"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void

    :cond_6
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException;

    const-string p2, "preConstruct() - open locked file without confirmation"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private throwUncheckedException(I)V
    .locals 2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-void

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenSDoc("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public appendContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_appendContent(ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedTextLimitException;

    const-string v0, "Exceed text limit"

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedTextLimitException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedImageLimitException;

    const-string v0, "Exceed image limit"

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedImageLimitException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public backupContentList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_backupContentList(ILjava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public beginTransaction()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_beginTransaction(I)Z

    move-result v0

    return v0
.end method

.method public bindFile(I)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_bindFile2(II)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return p1
.end method

.method public bindFile(Ljava/lang/String;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_bindFile1(ILjava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return p1
.end method

.method public clearAllBoundFiles()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_clearAllBoundFiles(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public clearChangedFlag()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_clearChangedFlag(I)Z

    move-result v0

    return v0
.end method

.method public clearCursorPosition()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_clearCursorInfo(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_clearHistory(I)Z

    return-void
.end method

.method public clearSelection()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_clearSelection(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_close(IZ)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    const/16 v2, 0x13

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenSDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_3
    :goto_0
    iput v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    return-void
.end method

.method public close(Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_close(IZ)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iput v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    return-void
.end method

.method public commitHistory()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_commitHistory(I)Z

    move-result v0

    return v0
.end method

.method public containContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_containContent(ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z

    move-result p1

    return p1
.end method

.method public discard()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_discard(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_2
    :goto_0
    iput v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    return-void
.end method

.method public endTransaction()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_endTransaction(I)Z

    move-result v0

    return v0
.end method

.method public finalize()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_finalize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iput v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findVoiceName(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_findVoiceName(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBoundFilePath(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getBoundFilePath(II)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getBoundFilesSize()J
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getBoundFilesSize(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getCachePath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent(I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getContent(II)Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getContentCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getContentCount(I)I

    move-result v0

    return v0
.end method

.method public getContentIndex(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)I
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "SpenSDoc"

    const-string v0, "content is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getContentIndex(ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)I

    move-result p1

    return p1
.end method

.method public getContentList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getContentList(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getCreatedTime()J
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getCreatedTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCursorPosition()Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getCursorPosition(I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getDocumentType(I)I

    move-result v0

    return v0
.end method

.method public getExtraDataByteArray(Ljava/lang/String;)[B
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getExtraDataByteArray(ILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getExtraDataInt(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getExtraDataInt(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getExtraDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getExtraDataString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHandle()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getMode(I)I

    move-result v0

    return v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getModifiedTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNewVoiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getNewVoiceName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getReminderData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getReminderData(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSearchData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getSearchData(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSearchData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getSearchData2(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedRegionBegin()Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getSelectedRegionBegin(I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedRegionEnd()Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getSelectedRegionEnd(I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getTextLength(I)I

    move-result v0

    return v0
.end method

.method public getTextMaxCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getTextMaxCount(I)I

    move-result v0

    return v0
.end method

.method public getThumbnailCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getThumbnailCount(I)I

    move-result v0

    return v0
.end method

.method public getThumbnailMaxCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getThumbnailMaxCount(I)I

    move-result v0

    return v0
.end method

.method public getTitle()Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getTitle(I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    move-result-object v0

    return-object v0
.end method

.method public hasExtraDataByteArray(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_hasExtraDataByteArray(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasExtraDataInt(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_hasExtraDataInt(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasExtraDataString(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_hasExtraDataString(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public insertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_insertContent(ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0x14

    if-eq p1, p2, :cond_1

    const/16 p2, 0x15

    if-eq p1, p2, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedTextLimitException;

    const-string p2, "Exceed text limit"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedTextLimitException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedImageLimitException;

    const-string p2, "Exceed image limit"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedImageLimitException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_isClosed(I)Z

    move-result v0

    return v0
.end method

.method public isContentChanged()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_isContentChanged(I)Z

    move-result v0

    return v0
.end method

.method public isContentChangedByApp()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_isContentChangedByApp(I)Z

    move-result v0

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_isFavorite(I)Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 2

    const-string v0, "SpenSDoc"

    const-string v1, "isLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_isLocked(I)Z

    move-result v0

    return v0
.end method

.method public isRedoable()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_isRedoable(I)Z

    move-result v0

    return v0
.end method

.method public isRedoing()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_isRedoing(I)Z

    move-result v0

    return v0
.end method

.method public isSaving()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_isSaving(I)Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_isSelected(I)Z

    move-result v0

    return v0
.end method

.method public isTransaction()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_isTransaction(I)Z

    move-result v0

    return v0
.end method

.method public isUndoable()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_isUndoable(I)Z

    move-result v0

    return v0
.end method

.method public isUndoing()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_isUndoing(I)Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 2

    const-string v0, "SpenSDoc"

    const-string v1, "lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_lock(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public quickSave()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_quickSave(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public redoInSdoc()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_redo(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public registContentListener(ILcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ContentEventListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_registContentEventListener(IILcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ContentEventListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public releaseFile(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_releaseFile2(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public releaseFile(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_releaseFile1(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public reload()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_reload(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public removeAllContent()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_removeAllContent(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_removeContent(ILcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeEmptyContentHandwriting()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_removeEmptyContentHandwriting(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataByteArray(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_removeExtraDataByteArray(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataInt(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_removeExtraDataInt(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataString(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_removeExtraDataString(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public reserveDiscard(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_reserveDiscard(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public restoreContentList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_restoreContentList(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public save(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->save(Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method public save(Ljava/lang/String;[Ljava/lang/String;JJ)V
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->save(Ljava/lang/String;[Ljava/lang/String;ZJJ)V

    return-void
.end method

.method public save(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save2() - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSDoc"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getDocumentType(I)I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    if-eqz p2, :cond_4

    array-length v0, p2

    const/4 v3, 0x2

    if-lt v0, v3, :cond_4

    const/4 v0, 0x0

    aget-object p2, p2, v0

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->checkTempDirectory()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v3, v0, p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_save2(ILjava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p3

    if-eq p3, v1, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {v0, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/LockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->forceRenameTo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-ne p2, v2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->deleteFile(Ljava/io/File;)V

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "save2() - Fail to lock file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "save2() - invalid argument2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "save2() - invalid argument1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_save2(ILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    if-eq p1, v1, :cond_6

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_7
    :goto_1
    return-void
.end method

.method public save(Ljava/lang/String;[Ljava/lang/String;ZJJ)V
    .locals 14

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v0, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save4() - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpenSDoc"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v8, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getDocumentType(I)I

    move-result v1

    const/16 v10, 0xb

    const/4 v11, 0x1

    if-ne v1, v11, :cond_5

    if-eqz v0, :cond_4

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    const/4 v1, 0x0

    aget-object v12, v0, v1

    if-eqz v12, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->checkTempDirectory()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget v1, v8, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    move-object v0, p0

    move-object v2, v13

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_save4(ILjava/lang/String;ZJJ)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    if-eq v0, v10, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {v13, v12}, Lcom/samsung/android/sdk/composer/document/sdoc/util/LockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v13, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->forceRenameTo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v11, :cond_2

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->deleteFile(Ljava/io/File;)V

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "save4() - Fail to lock file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "save4() - invalid argument2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "save4() - invalid argument1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v1, v8, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    move-object v0, p0

    move-object v2, p1

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_save4(ILjava/lang/String;ZJJ)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    if-eq v0, v10, :cond_6

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_7
    :goto_1
    return-void
.end method

.method public saveEx(Ljava/lang/String;[Ljava/lang/String;ZJJ)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveEx() - ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/pen/document/util/LogUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSDoc"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v8, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {v8, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_getDocumentType(I)I

    move-result v0

    const-string v11, "Save cancel."

    const/16 v12, 0x16

    const/16 v13, 0xb

    const/4 v14, 0x1

    if-ne v0, v14, :cond_5

    if-eqz v10, :cond_4

    array-length v0, v10

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->checkTempDirectory()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget v1, v8, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    move-object/from16 v0, p0

    move-object v2, v15

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_save4(ILjava/lang/String;ZJJ)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    if-eq v0, v13, :cond_1

    if-eq v0, v12, :cond_0

    invoke-direct {v8, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocCancelException;

    invoke-direct {v0, v11}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v10, v0

    invoke-static {v15, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/LockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v15, v9}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->forceRenameTo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, v14, :cond_3

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->deleteFile(Ljava/io/File;)V

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "saveEx() - Fail to lock file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "saveEx() - invalid argument1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v1, v8, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_save4(ILjava/lang/String;ZJJ)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    if-eq v0, v13, :cond_7

    if-eq v0, v12, :cond_6

    invoke-direct {v8, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocCancelException;

    invoke-direct {v0, v11}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_8
    :goto_1
    return-void
.end method

.method public selectRegion(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_SelectRegion(ILcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public setContentTextChangedListener(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ContentTextChangedListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setContentTextChangedListener(ILcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ContentTextChangedListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setCursorPosition(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setCursorPosition(ILcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$CursorInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setDocumentType(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setDocumentType(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataByteArray(Ljava/lang/String;[B)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    if-eqz p2, :cond_0

    array-length v1, p2

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setExtraDataByteArray(ILjava/lang/String;[BI)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setExtraDataByteArray(ILjava/lang/String;[BI)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_1
    return-void
.end method

.method public setExtraDataInt(Ljava/lang/String;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setExtraDataInt(ILjava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setExtraDataString(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setFavorite(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setFavorite(IZ)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setReminderData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$ReminderData;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setReminderData(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setSDocHistoryListener(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SDocHistoryListener;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setSDocHistoryListener(ILcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SDocHistoryListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setSearchData(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setSearchData2(ILjava/lang/String;Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setSearchData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc$SearchData;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setSearchData(ILjava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTextMaxCount(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setTextMaxCount(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setThumbnailMaxCount(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_setThumbnailMaxCount(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public stopSave()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_stopSave(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public undoInSdoc()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_undo(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 2

    const-string v0, "SpenSDoc"

    const-string/jumbo v1, "unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_unlock(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public unregistContentListener(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->SDoc_unregistContentEventListener(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
