.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;


# instance fields
.field private mReleaseType:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;

.field private final mSDocPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSDocXPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "LegacyPinnedNoteConverter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mSDocPathList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mSDocXPathList:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;->NONE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mReleaseType:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;

    return-void
.end method

.method private convertToSDoc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    const-string v1, "convertToSDoc#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/ConverterWrapperFactory;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/ConverterWrapperFactory;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/ConverterWrapperFactory;->createDocumentConverter(I)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;->convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;->getPathList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;->getPathList()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object v0
.end method

.method private convertToSDocX(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "convertToSDocX# getMessage "

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, ".sdoc"

    const-string v3, ".sdocx"

    invoke-virtual {p3, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertToSDocX# uuid/sDocPath/sDocXPath "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->createSDoc(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    move-result-object p3

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->createSpenWNote(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v3

    if-eqz p3, :cond_5

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v4, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;

    invoke-direct {v4, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p3, v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->convert(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getTitle()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setText(Ljava/lang/String;)V

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$color;->screenoff_main_background:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setBackgroundColor(IZ)V

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->saveAsDirectory(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    sget-object v8, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0, p1, v3, p2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->saveToDB(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    :cond_2
    :try_start_1
    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p3, v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->close(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v3, v6}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/SDocXConverterWrapper;->release()V

    if-eqz v5, :cond_5

    move-object v2, v1

    :cond_5
    :goto_3
    return-object v2
.end method

.method private createDocumentEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    const-string v1, "createDocumentEntity#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFilePath(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->SCREEN_OFF_MEMO:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    return-object v0
.end method

.method private createSDoc(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    const-string v1, "createSDoc#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/creator/SpenDocCreator;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/creator/SpenDocCreator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/creator/SpenDocCreator;->createSDoc(Ljava/lang/String;)Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    move-result-object p1

    return-object p1
.end method

.method private createSpenWNote(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 10

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    const-string v1, "createSpenWNote#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result v8

    :try_start_0
    new-instance v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    sget-object v4, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    sget-object v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    const/4 v7, 0x0

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;IZ)V

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageDefaultWidth(I)V

    mul-int/lit8 v8, v8, 0x64

    invoke-virtual {v9, v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageDefaultHeight(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSpenWNote# getMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private saveToDB(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    const-string v1, "saveToDB#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->createDocumentEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    move-object v4, p4

    move-object v6, p2

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->save(Landroid/content/Context;ZLjava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public convert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convert# uuid/ path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->convertToSDoc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v0, ".sdocx"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mSDocPathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->convertToSDocX(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mSDocXPathList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3
.end method

.method public isConverted()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mSDocXPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public release()V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mSDocPathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "release# getMessage "

    const-string v4, ", "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release# lSDocPathList "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mReleaseType:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;->DISCARD:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mSDocXPathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v5, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release# lSDocXPathList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mSDocPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mSDocXPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setReleaseType(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mReleaseType:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReleaseType# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter;->mReleaseType:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/controller/pin/LegacyPinnedNoteConverter$ReleaseType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
