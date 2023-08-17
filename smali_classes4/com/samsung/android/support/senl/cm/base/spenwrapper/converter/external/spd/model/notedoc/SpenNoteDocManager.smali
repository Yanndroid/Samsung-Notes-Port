.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenNoteDocManager"

.field private static final VOICE_MEMO_KEY:Ljava/lang/String; = "VoiceMemo"


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mFilePath:Ljava/lang/String;

.field private mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

.field private mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

.field private mResourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;

.field private mVoiceCreateTimeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceMemoTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVoicePathMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoiceCreateTimeMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoicePathMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoiceMemoTable:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mContextRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mResourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;

    return-void
.end method


# virtual methods
.method public closeSpenNoteDoc()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " close spen note doc failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenNoteDocManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public createSpenNoteDoc(Ljava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "SpenNoteDocManager"

    if-nez v0, :cond_0

    const-string p1, "create spen note doc failed : null context"

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mFilePath:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string p1, "create spen note doc failed : null file path"

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    if-nez p1, :cond_2

    :try_start_0
    invoke-static {v0, v3, p2, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->makeSpenNoteDoc(Landroid/content/Context;Ljava/lang/String;II)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    goto :goto_3

    :cond_2
    invoke-static {v0, v3, p1, p2, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->makeSpenNoteDoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    move-result-object p1
    :try_end_0
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create spen note doc failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    return-object p1
.end method

.method public extractVoice()Z
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    const-string v1, "SpenNoteDocManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "extractVoice: noteDoc is null"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v3, "VoiceMemo"

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v3, v0

    if-eqz v3, :cond_7

    aget-object v3, v0, v2

    if-eqz v3, :cond_7

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoiceMemoTable:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoiceMemoTable:Ljava/util/ArrayList;

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoicePathMap:Landroid/util/ArrayMap;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    goto :goto_1

    :cond_3
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoicePathMap:Landroid/util/ArrayMap;

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoiceCreateTimeMap:Landroid/util/ArrayMap;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    goto :goto_2

    :cond_4
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoiceCreateTimeMap:Landroid/util/ArrayMap;

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mResourceGetter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;->getCacheDir()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    array-length v4, v0

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_6

    aget-object v6, v0, v5

    iget-object v7, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    invoke-virtual {v7, v6}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getAttachedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v11, v10}, Lcom/samsung/android/support/senl/document/util/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v7, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoiceCreateTimeMap:Landroid/util/ArrayMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoiceMemoTable:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoicePathMap:Landroid/util/ArrayMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v3, "initVoiceMemo fail copy voice file"

    invoke-static {v1, v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_6
    const/4 v0, 0x1

    return v0

    :cond_7
    :goto_4
    const-string v0, "extractVoice : voiceMemoKeyList is null"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getBackgroundImageMode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getBackgroundImageMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundImagePathPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getBackgroundImagePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNoteDoc()Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    return-object v0
.end method

.method public getObjectCountInPage()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getObjectCount(Z)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    return-object p1
.end method

.method public getPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getPageCount()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mFilePath:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SpenNoteDocManager"

    const-string v2, "get title failed: file path is null"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mFilePath:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v0, :cond_1

    if-ltz v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mFilePath:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getVoiceCreateTimeMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoiceCreateTimeMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getVoiceMemoTable()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoiceMemoTable:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVoicePathMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoicePathMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->getWidth()I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "SpenNoteDocManager"

    const-string v1, "check valid spd failed : file path is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mNoteDoc:Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mPageDoc:Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoiceMemoTable:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoicePathMap:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoicePathMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SpenNoteDocManager"

    const-string v3, "can\'t delete voice file"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoiceMemoTable:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoicePathMap:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notedoc/SpenNoteDocManager;->mVoiceCreateTimeMap:Landroid/util/ArrayMap;

    return-void
.end method
