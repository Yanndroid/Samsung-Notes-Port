.class public Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConvertTaskFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkWrappedSdocx(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;)V
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".sdocx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getUuid()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->setDstUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getIsAuthenticated()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    invoke-interface {p2, p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->setLockType(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    :cond_1
    return-void
.end method

.method public static createTaskWithValidCheck(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Ljava/util/List;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;)Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;
    .locals 2
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;",
            ")",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;"
        }
    .end annotation

    invoke-static {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory;->isValid(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0, p1, v1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory;->createTaskWithoutValidCheck(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;)Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    move-result-object p0

    return-object p0
.end method

.method public static createTaskWithoutValidCheck(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;)Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;
    .locals 10
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;",
            ")",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getSrcPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ConvertUtils;->getConverterType(Ljava/lang/String;)I

    move-result v0

    new-instance v7, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    invoke-direct {v7, p1, p4}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/IConvertTaskCallback;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createTaskWithoutValidCheck : srcType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConvertTaskFactory"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    new-instance p3, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/ConverterWrapperFactory;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/ConverterWrapperFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/ConverterWrapperFactory;->createDocumentConverter(I)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;->getResultType()I

    move-result p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createTaskWithoutValidCheck: convertType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    const-string v4, "createTaskWithoutValidCheck - info.getSrcPath(): "

    if-ne p3, v1, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getSrcPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getSrcPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;

    move-result-object v4

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/reflect/DocumentContractImpl;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getCallback()Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;

    move-result-object v6

    move-object v1, p3

    move v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;-><init>(ILcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;)V

    invoke-virtual {v7, p3}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->addSubTask(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask;)V

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getCallback()Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$ISDocXConvertTaskCallback;)V

    invoke-virtual {v7, p3}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->addSubTask(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p3, v1, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getSrcPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getSrcPath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v3, p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;->getStatus(Ljava/lang/String;)I

    move-result p3

    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertItem;->isWrappingWhenLocked()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance v3, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/WrappingConverter;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/sdocx/WrappingConverter;-><init>()V

    :cond_1
    move-object p3, v3

    new-instance v9, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/ExternalToSDocXConvertTask;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getSrcPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;

    move-result-object v4

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getSrcPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getCallback()Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;

    move-result-object v6

    move-object v1, v9

    move v2, v0

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/ExternalToSDocXConvertTask;-><init>(ILcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$ISDocXConvertTaskCallback;)V

    invoke-virtual {v7, v9}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->addSubTask(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask;)V

    instance-of v1, p3, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;

    if-eqz v1, :cond_2

    check-cast p3, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;

    invoke-interface {p1, p3}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->setConverter(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    invoke-interface {p1, v8}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->enableIndividualPage(Z)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    :cond_2
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v8

    invoke-static {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory;->checkWrappedSdocx(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesLockDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    move-result-object p2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->getLockType(Ljava/lang/String;)I

    move-result p2

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getSrcPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->getCallback()Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask$TaskCallback;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;-><init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$ISDocXConvertTaskCallback;)V

    invoke-virtual {v7, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;->addSubTask(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask;)V

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLockedSdocType(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x5

    :cond_4
    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->setLockType(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    move-result-object p2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p3}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory;->isWidget(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->setIsWidgetMemo(Z)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    :goto_1
    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->setSrcType(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    if-eqz p4, :cond_5

    invoke-interface {p4}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;->onCreated()V

    :cond_5
    return-object v7
.end method

.method private static isValid(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;)Z
    .locals 7

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getSrcPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;-><init>(I)V

    :goto_0
    invoke-interface {p2, p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;->onPreFailed(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;)V

    return v2

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ConvertUtils;->getConverterType(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_2

    const/16 v5, 0x9

    if-eq v1, v5, :cond_2

    new-instance v5, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/ConverterWrapperFactory;

    invoke-direct {v5, p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/ConverterWrapperFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/ConverterWrapperFactory;->createDocumentConverter(I)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;->getStatus(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertItem;->isWrappingWhenLocked()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/common/util/LockFileUtils;->getLockType(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->setLockType(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    return v3

    :cond_1
    if-eqz v5, :cond_2

    new-instance p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;

    invoke-direct {p0, v5, v1, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;-><init>(IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object p0

    const-string p1, "trash:///"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;

    invoke-direct {p0, v4, v1, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback$ErrorMsg;-><init>(IILjava/lang/String;)V

    goto :goto_0

    :cond_3
    return v3
.end method

.method private static isWidget(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/notes/widget/AppWidgetUtils;->getWidgetUuidList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p2

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
