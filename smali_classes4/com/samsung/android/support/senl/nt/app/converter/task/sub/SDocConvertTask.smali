.class public Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;
.super Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask<",
        "Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private mConvertParams:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;

.field private mConverterResult:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

.field private mDocumentConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;

.field private mSdocDirPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0, p5}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;-><init>(IILcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->mDocumentConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->mConvertParams:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->mSdocDirPath:Ljava/lang/String;

    return-void
.end method

.method private checkUuidResults()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->mConverterResult:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;->getPathList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->mConverterResult:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;->getUuidList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->mConverterResult:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;->getUuidList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->mConverterResult:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;->getUuidList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->getResultFromUuidList(Ljava/util/List;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->mConverterResult:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    :cond_1
    return-void
.end method

.method private getResultFromUuidList(Ljava/util/List;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->mSdocDirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ".sdoc"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    invoke-direct {p1, v0, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public getSrcSize()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->mConvertParams:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;

    instance-of v1, v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocPathConvertParams;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocPathConvertParams;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocPathConvertParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public postConvert()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->mConverterResult:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->setState(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;->getPathList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->setPathList(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    :goto_0
    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->postConvert()V

    return-void
.end method

.method public preConvert()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->getSrcSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->isAvailableMemoryForSdocConverting(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->setState(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->preConvert()V

    return-void
.end method

.method public run()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->preConvert()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->mDocumentConverter:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->mConvertParams:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/IDocumentConverter;->convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ISDocConvertParams;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->mConverterResult:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/model/ConverterResult;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->checkUuidResults()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocConvertTask;->postConvert()V

    return-void
.end method

.method public setParams(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$IConvertParams;)V
    .locals 0

    return-void
.end method
