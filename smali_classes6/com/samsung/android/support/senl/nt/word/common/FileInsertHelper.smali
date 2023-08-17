.class public Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$InsertTask;,
        Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$TaskName;
    }
.end annotation


# static fields
.field private static final PPT_PATH:Ljava/lang/String; = "ppt/media"

.field private static final TAG:Ljava/lang/String; = "FileInsertHelper"

.field private static final WORD_PATH:Ljava/lang/String; = "word/media"


# instance fields
.field public bgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/word/common/OfficeBackground;",
            ">;"
        }
    .end annotation
.end field

.field public cropBg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;",
            ">;"
        }
    .end annotation
.end field

.field public cropHw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;",
            ">;"
        }
    .end annotation
.end field

.field private finish:Z

.field public hwHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public imageHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field private mBgHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBgKey:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

.field private newOfficeFile:Ljava/io/File;

.field public partHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/openxml4j/opc/PackagePart;",
            ">;"
        }
    .end annotation
.end field

.field private spenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

.field public voiceData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;",
            ">;"
        }
    .end annotation
.end field

.field public voiceHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->initialize()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;)Lcom/samsung/android/support/senl/nt/word/base/OfficeView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->newOfficeFile:Ljava/io/File;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->finish:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->newOfficeFile:Ljava/io/File;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->insertAudioFile(Ljava/io/File;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->insertBackground(Ljava/io/File;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->insertHandwriting(Ljava/io/File;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->insertImage(Ljava/io/File;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->insertVoiceData(Ljava/io/File;)V

    return-void
.end method

.method private initialize()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->voiceHashMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->partHashMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->hwHashMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->voiceData:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->imageHashMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->cropBg:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->cropHw:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->bgList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mBgHashMap:Ljava/util/HashMap;

    return-void
.end method

.method private insertAudioFile(Ljava/io/File;)V
    .locals 5

    const-string v0, "FileInsertHelper"

    const-string v1, "insertAudioFile(), start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->voiceHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->voiceHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Sound created failed"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->writeFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_3
    const-string p1, "Don\'t have any voice"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p1, "insertAudioFile(), end"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private insertBackground(Ljava/io/File;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "insertBackground# close SpenWNote fail e : "

    const-string v3, "FileInsertHelper"

    const-string v0, "insertBackground(), start"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->bgList:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_f

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-instance v13, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getWidth()I

    move-result v11

    const/4 v12, 0x0

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v6, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v6, v13}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->bgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v7, v5

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/senl/nt/word/common/OfficeBackground;

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/word/common/OfficeBackground;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/word/common/OfficeBackground;->getPageId()I

    move-result v8

    iget-object v10, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v11, v10, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    const/4 v12, 0x0

    if-eqz v11, :cond_2

    iget-object v11, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->spenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    if-nez v11, :cond_2

    iget-object v10, v10, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v10

    invoke-virtual {v10, v12}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v10

    :goto_1
    iput-object v10, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->spenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    goto :goto_2

    :cond_2
    iget-object v10, v10, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v10}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v10

    goto :goto_1

    :goto_2
    iput-object v5, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mBgKey:Ljava/lang/String;

    iget-object v10, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->spenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v10, v10, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-nez v10, :cond_3

    iget-object v10, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->spenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v1, v10}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->getExistBgPath(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_3
    move-object v10, v5

    :goto_3
    iget-object v11, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v11, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-nez v11, :cond_5

    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/16 :goto_7

    :cond_5
    :goto_4
    if-nez v7, :cond_7

    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->spenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->spenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v11

    invoke-virtual {v13, v7, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->copyPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->removeAllObject()V

    goto :goto_5

    :cond_6
    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->spenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v7

    iget-object v11, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->spenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v11

    invoke-virtual {v13, v7, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->appendPage(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v7

    iget-object v11, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->spenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundImagePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundImage(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->spenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundColor()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundColor(I)V

    iget-object v11, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->spenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundImageMode()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundImageMode(I)V

    iget-object v11, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->spenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setTemplateType(I)V

    iget-object v11, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->spenWPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateURI()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setTemplateURI(Ljava/lang/String;)V

    :cond_7
    :goto_5
    iget-object v11, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v11, v11, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-eqz v11, :cond_9

    new-instance v8, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-direct {v8}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;-><init>()V

    invoke-virtual {v6, v7, v8, v12}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V

    iget-object v8, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->cropBg:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;->getPrevious()I

    move-result v11

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;->getCurrent()I

    move-result v8

    new-instance v12, Landroid/graphics/RectF;

    const/4 v14, 0x0

    int-to-float v11, v11

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v15

    int-to-float v15, v15

    int-to-float v8, v8

    invoke-direct {v12, v14, v11, v15, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v12}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_6

    :cond_8
    move-object v8, v5

    goto :goto_6

    :cond_9
    new-instance v11, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-direct {v11}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;-><init>()V

    invoke-virtual {v6, v7, v11, v8}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v8}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->capturePage(F)Landroid/graphics/Bitmap;

    move-result-object v8

    :goto_6
    if-eqz v8, :cond_a

    invoke-static {v8}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->bitmapToInputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v8

    goto :goto_7

    :cond_a
    move-object v8, v5

    :goto_7
    if-eqz v8, :cond_e

    new-instance v11, Ljava/io/File;

    move-object/from16 v12, p1

    invoke-direct {v11, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_8

    :cond_b
    new-instance v0, Ljava/lang/Exception;

    const-string v5, "Background file created failed"

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_8
    invoke-direct {v1, v8, v11}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->writeFile(Ljava/io/InputStream;Ljava/io/File;)V

    iget-object v9, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mBgKey:Ljava/lang/String;

    if-eqz v9, :cond_d

    if-nez v10, :cond_d

    iget-object v10, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mBgHashMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :cond_e
    move-object/from16 v12, p1

    :goto_9
    iget-object v8, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v8, v8, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_1

    goto/16 :goto_0

    :cond_f
    :try_start_3
    invoke-virtual {v13, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V

    const-string v0, "insertBackground(), end"

    :goto_b
    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v7, v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v6, v5

    :goto_c
    move-object v5, v13

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object v7, v0

    move-object v6, v5

    :goto_d
    if-eqz v5, :cond_10

    :try_start_4
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_e
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V

    :cond_11
    throw v7

    :cond_12
    :goto_f
    const-string v0, "Don\'t have any background"

    goto :goto_b
.end method

.method private insertHandwriting(Ljava/io/File;)V
    .locals 14

    const-string v0, "insertHandwriting# close SpenWNote fail e : "

    const-string v1, "FileInsertHelper"

    const-string v2, "insertHandwriting(), start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->hwHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    new-instance v11, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v4, v4, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getWidth()I

    move-result v9

    const/4 v10, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v4, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4, v11}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->hwHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v2

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v9, v9, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getSpenWNoteP()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v9

    if-eqz v6, :cond_2

    iget-object v10, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v10, v10, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-nez v10, :cond_3

    :cond_2
    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v6

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v10

    invoke-virtual {v11, v6, v10}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->appendPage(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v6

    invoke-virtual {v9, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList(I)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    new-instance v13, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-direct {v13}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;-><init>()V

    invoke-virtual {v13, v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual {v6, v13}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList(I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v10

    invoke-virtual {v4, v6, v10, v7}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setBackgroundColorEnabled(Z)V

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->cropHw:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;

    iget-object v10, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v10, v10, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-eqz v10, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;->getPrevious()I

    move-result v10

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;->getCurrent()I

    move-result v7

    new-instance v12, Landroid/graphics/RectF;

    const/4 v13, 0x0

    int-to-float v10, v10

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v9

    int-to-float v9, v9

    int-to-float v7, v7

    invoke-direct {v12, v13, v10, v9, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v12}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_2

    :cond_4
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v7}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->capturePage(F)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_2

    :cond_5
    move-object v7, v2

    :goto_2
    if-nez v7, :cond_6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_6
    if-nez v7, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->bitmapToInputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/Exception;

    const-string v2, "Handwriting created failed"

    invoke-direct {p1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    invoke-direct {p0, v7, v9}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->writeFile(Ljava/io/InputStream;Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_a
    :try_start_3
    invoke-virtual {v11, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V

    const-string p1, "insertHandwriting(), end"

    :goto_5
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object v4, v2

    :goto_6
    move-object v2, v11

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object v4, v2

    :goto_7
    if-eqz v2, :cond_b

    :try_start_4
    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_8
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V

    :cond_c
    throw p1

    :cond_d
    :goto_9
    const-string p1, "Don\'t have any handwriting"

    goto :goto_5
.end method

.method private insertImage(Ljava/io/File;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "FileInsertHelper"

    const-string v0, "insertImage(), start"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->imageHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->imageHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/16 v6, 0xe

    const/16 v7, 0x8

    const/4 v8, 0x3

    const/4 v9, 0x7

    const/4 v10, 0x0

    if-eq v0, v8, :cond_3

    const/16 v11, 0xa

    if-eq v0, v11, :cond_2

    const/16 v11, 0x11

    if-eq v0, v11, :cond_1

    if-eq v0, v9, :cond_3

    if-eq v0, v7, :cond_3

    const/16 v11, 0xd

    if-eq v0, v11, :cond_0

    if-eq v0, v6, :cond_3

    goto/16 :goto_4

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    iget-object v6, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v6, v6, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getContentTextSize()I

    move-result v6

    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v7, v7, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getWidth()I

    move-result v7

    invoke-static {v0, v5, v6, v7}, Lcom/samsung/android/support/senl/nt/word/base/utils/ItemUtils;->drawWeb(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    iget-object v6, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v6, v6, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getContentTextSize()I

    move-result v6

    iget-object v7, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v7, v7, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getWidth()I

    move-result v7

    invoke-static {v0, v5, v6, v7}, Lcom/samsung/android/support/senl/nt/word/base/utils/ItemUtils;->drawLink(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectLink;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getContentTextSize()I

    move-result v14

    iget-object v11, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getPlayTime()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getContentTextColor()I

    move-result v15

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getBorderColor()I

    move-result v16

    iget-object v0, v1, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getWidth()I

    move-result v17

    invoke-static/range {v11 .. v17}, Lcom/samsung/android/support/senl/nt/word/base/utils/ItemUtils;->drawVoice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_c

    :goto_1
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->bitmapToInputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v11, 0x1

    const-string v12, ""

    if-ne v0, v6, :cond_5

    move-object v0, v5

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;->getThumbnailPath()Ljava/lang/String;

    move-result-object v12

    :cond_4
    move-object v0, v10

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    if-ne v0, v8, :cond_6

    move-object v0, v5

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->getImagePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x2e

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "spi"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v12}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->decodeSpi(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v12, v10

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    if-ne v0, v9, :cond_7

    move-object v0, v5

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/word/common/SpenToBitmap;->drawShape(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    if-ne v0, v7, :cond_4

    move-object v0, v5

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectLine;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/word/common/SpenToBitmap;->drawLine(Lcom/samsung/android/sdk/pen/document/SpenObjectLine;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->getCropRect(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_8

    if-nez v6, :cond_8

    :try_start_0
    invoke-static {v12}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->filePathToInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Object type "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " error : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    if-nez v0, :cond_9

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_c

    if-nez v6, :cond_a

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->isStrokeType(I)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v10

    iget v12, v10, Landroid/graphics/RectF;->right:F

    iget v13, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, v10, Landroid/graphics/RectF;->bottom:F

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v13, v10

    float-to-int v10, v13

    div-int/2addr v7, v8

    div-int v8, v12, v10

    if-eq v7, v8, :cond_a

    invoke-static {v0, v12, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_a
    move-object v7, v0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    if-eq v0, v9, :cond_b

    :try_start_1
    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v0

    invoke-static {v7, v0, v6}, Lcom/samsung/android/support/senl/nt/word/base/utils/ItemUtils;->processBitmap(Landroid/graphics/Bitmap;FLandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertImage# fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->bitmapToInputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v10

    :cond_c
    :goto_4
    if-eqz v10, :cond_f

    new-instance v0, Ljava/io/File;

    move-object/from16 v5, p1

    invoke-direct {v0, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Image created failed"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_5
    invoke-direct {v1, v10, v0}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->writeFile(Ljava/io/InputStream;Ljava/io/File;)V

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v5, p1

    goto/16 :goto_0

    :cond_10
    const-string v0, "Don\'t have any image"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const-string v0, "insertImage(), end"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private insertVoiceData(Ljava/io/File;)V
    .locals 12

    const-string v0, "FileInsertHelper"

    const-string v1, "insertVoiceData(), start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->voiceData:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getContentTextSize()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->wNoteData:Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/word/common/data/WNoteData;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v9

    if-nez v9, :cond_1

    const-string p1, "Failed to get spenWPage"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->voiceData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getPlayTime()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getContentTextColor()I

    move-result v6

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getBorderColor()I

    move-result v7

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v2

    div-int/lit8 v8, v2, 0x2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v1

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/support/senl/nt/word/base/utils/ItemUtils;->drawVoice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->bitmapToInputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Voice created failed"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->writeFile(Ljava/io/InputStream;Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :cond_6
    const-string p1, "insertVoiceData(), end"

    goto :goto_0

    :cond_7
    :goto_3
    const-string p1, "Don\'t have any voice data"

    goto :goto_0
.end method

.method private writeFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-direct {p2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/high16 v1, 0x100000

    :try_start_2
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
.end method


# virtual methods
.method public getExistBgPath(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string p1, "TT"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "IP"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mBgKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mBgHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mBgHashMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mBgKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public insertFile(Ljava/io/File;)Ljava/io/File;
    .locals 6

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->newOfficeFile:Ljava/io/File;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->finish:Z

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v3, "FileInsertHelper"

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper$1;-><init>(Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;Landroid/os/CancellationSignal;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean p1, p1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isAlive:Z

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->finish:Z

    if-nez v2, :cond_0

    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleep when insert background error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iput-boolean v0, p1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isAlive:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->newOfficeFile:Ljava/io/File;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->newOfficeFile:Ljava/io/File;

    return-object p1
.end method
