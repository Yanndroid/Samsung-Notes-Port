.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_SCREEN_OFF_CLOSE_STRATEGY:I = 0xc40

.field public static final DEFAULT_SCREEN_OFF_SAVE_CACHE_STRATEGY:I = 0x440

.field public static final DEFAULT_SCREEN_OFF_SAVE_STRATEGY:I = 0x10808

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

.field private mDefaultBackgroundColor:I

.field private mNotePath:Ljava/lang/String;

.field private mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

.field private mSaveResult:Z

.field private mUuid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SaveModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createServiceCache(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;)V"
        }
    .end annotation

    const-string v0, "createServiceCache# : "

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/samsung/android/support/senl/nt/model/utils/DocumentCacheUtils;->saveDocumentDat(Landroid/content/Context;Ljava/lang/String;Landroid/os/Parcelable;)Ljava/io/File;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private isValidDocState()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private saveCachedNotePath(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCachedNotePath# notePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_save_screenoffmemo_v0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "PREF_KEY_CACHED_NOTE_PATH"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveCachedNoteUuid(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveCacheNoteUuid# uuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_save_screenoffmemo_v0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "PREF_KEY_CACHED_NOTE_UUID"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createAdjustData()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;
    .locals 9

    new-instance v8, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mDefaultBackgroundColor:I

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v4, "settings_pen_color_for_saved_notes"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->getConvertingColorSet()Ljava/util/HashMap;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;-><init>(IIIIIILjava/util/Map;)V

    return-object v8
.end method

.method public discard()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    const-string v1, "discard"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->discard(Z)V

    return-void
.end method

.method public getSaveResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mSaveResult:Z

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;I)V
    .locals 7

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getPrimitiveStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init# primitiveStartCommand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/LoadNoteByDoubleTapOnAOD;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, ".sdocx"

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentFileUtils;->createSavedPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getOrientation()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    move-result-object v3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result v4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->create(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Z)Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageDefaultHeight(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->copyPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getLastPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->getSpenSettingPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object p1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setLastPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init# primitiveDocument "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->hashCode()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mUuid:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getDocPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mNotePath:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mDefaultBackgroundColor:I

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init# uuid/defaultBackgroundColor "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mUuid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const v1, 0xffffff

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mDefaultBackgroundColor:I

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    const-string v0, "#%06X"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmpty# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public loadCacheNotePath()Ljava/lang/String;
    .locals 4

    const-string v0, "_save_screenoffmemo_v0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "PREF_KEY_CACHED_NOTE_PATH"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadCacheNotePath# notPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public loadCachedNoteUuid()Ljava/lang/String;
    .locals 4

    const-string v0, "_save_screenoffmemo_v0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "PREF_KEY_CACHED_NOTE_UUID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadCachedNoteUuid# uuid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeCachedNotePath()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    const-string v1, "removeCachedNotePath#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_save_screenoffmemo_v0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "PREF_KEY_CACHED_NOTE_PATH"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeCachedNoteUuid()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    const-string v1, "removeCachedNoteUuid#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_save_screenoffmemo_v0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "PREF_KEY_CACHED_NOTE_UUID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestReadyForSave()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    const-string v1, "requestReadyForSave#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->requestReadyForSave()V

    :cond_0
    return-void
.end method

.method public save()V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->isValidDocState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->releaseView(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDirty(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->createAdjustData()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setAdjustData(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save# start entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x10808

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->save(ZZZIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mSaveResult:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save# end entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveCache()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->isValidDocState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    const-string v1, "saveCache#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->saveCachedNoteUuid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mNotePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->saveCachedNotePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->requestReadyForSave()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDirty(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->createAdjustData()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setAdjustData(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    const/4 v1, 0x0

    const/16 v2, 0x440

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->saveCache(ZI)V

    return-void
.end method

.method public saveCacheEditedPinDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "saveCacheEditedPinDocument#, fail to close : "

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->isValidDocState()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCacheEditedPinDocument# uuid/path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->saveCachedNoteUuid(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->saveCachedNotePath(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, ".sdocx"

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentFileUtils;->createSavedPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getOrientation()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->create(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;ILcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Z)Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageDefaultHeight(I)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->copyPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getLastPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->getSpenSettingPenInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    move-result-object v4

    :cond_1
    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setLastPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v4

    const-string v5, "ScreenOffMemo"

    invoke-static {v5, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->create(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->cloneDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDirty(Z)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDoc(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setNewDocument(Z)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->savePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->loadPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->createAdjustData()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setAdjustData(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v4

    const/16 v5, 0x440

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v4, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    sget-object v4, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->quickSave(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->createServiceCache(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->close(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_0
    :try_start_3
    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveCacheEditedPinDocument# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->isClosed()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->close(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->isClosed()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->close(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    throw p1
.end method

.method public saveCachePrimitiveDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "saveCachePrimitiveDocument#, fail to close : "

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->isValidDocState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCachePrimitiveDocument# primitiveDocument/uuid/path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v2

    const-string v3, "ScreenOffMemo"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->create(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->cloneDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDirty(Z)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDoc(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setNewDocument(Z)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->savePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->loadPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->createAdjustData()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setAdjustData(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v3

    const/16 v4, 0x440

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    sget-object v3, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->quickSave(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->createServiceCache(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->close(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_2
    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCachePrimitiveDocument# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->close(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :goto_2
    :try_start_4
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->isClosed()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->close(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    throw p1

    :cond_3
    :goto_4
    return-void
.end method

.method public saveChanged()V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->isValidDocState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDirty(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->createAdjustData()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setAdjustData(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveChanged# start entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x10808

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->save(ZZZIZ)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveChanged# end entity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentEntityContainer()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public savePinCache(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->isValidDocState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savePinCache# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getSubscriptionId()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentServiceIntent;->restoreCaches(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    return-void
.end method

.method public savePrimitiveDocument()V
    .locals 8

    const-string v0, "savePrimitiveDocument#, fail to close : "

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->isValidDocState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePrimitiveDocument# primitiveDocument "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ".sdocx"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentFileUtils;->createSavedPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v3

    const-string v4, "ScreenOffMemo"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->create(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->cloneDocument(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDirty(Z)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDoc(Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setNewDocument(Z)V

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->savePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->loadPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    const v4, 0x10808

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->setSaveStrategy(I)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getDocumentRepository()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentRepository;->getDocumentEntity()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    sget-object v4, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->createAdjustData()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getPageIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getDefaultPageHeight()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getPageDefaultNumber()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/support/senl/nt/model/utils/SpenDocumentDisplayUtils;->adjustSize(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getPenColorType()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getPageIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getDefaultBackgroundColor()I

    move-result v6

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getColorSet()Ljava/util/Map;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/support/senl/nt/model/utils/SpenDocumentDisplayUtils;->convertColors(ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;ILjava/util/Map;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getPenColorType()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentAdjustData;->getColorSet()Ljava/util/Map;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/senl/nt/model/utils/SpenDocumentDisplayUtils;->convertLastPenInfo(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;ILjava/util/Map;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->save(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->close(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savePrimitiveDocument# : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->close(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->mPrimitiveDocument:Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;->close(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    throw v2

    :cond_3
    :goto_4
    return-void
.end method
