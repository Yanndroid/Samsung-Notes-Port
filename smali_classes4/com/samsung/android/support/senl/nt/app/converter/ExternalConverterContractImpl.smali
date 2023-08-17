.class public Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$SNoteFolderNameCreator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalConverterContractImpl"


# instance fields
.field private mDocDataContractImpl:Lcom/samsung/android/app/notes/reflect/DocumentDataContractImpl;

.field private mIsActive:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deletePrevFile(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->findConvertedSNoteFileByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->getDocumentDataContract()Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;->getSDocUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->getDocumentDataContract()Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, p1, v2}, Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;->deleteSDoc(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private findConvertedSNoteFileByPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->findConvertedSNoteFileByTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private findConvertedSNoteFileByTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->getDocumentDataContract()Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;->getNoteFilePathList(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->isConvertedFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private getDocumentDataContract()Lcom/samsung/android/support/senl/document/contract/DocumentDataContract;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->mDocDataContractImpl:Lcom/samsung/android/app/notes/reflect/DocumentDataContractImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/notes/reflect/DocumentDataContractImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/reflect/DocumentDataContractImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->mDocDataContractImpl:Lcom/samsung/android/app/notes/reflect/DocumentDataContractImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->mDocDataContractImpl:Lcom/samsung/android/app/notes/reflect/DocumentDataContractImpl;

    return-object v0
.end method

.method private isConvertedFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v1, :cond_1

    if-ltz v2, :cond_1

    if-le v2, v1, :cond_1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    sub-int v4, v2, v1

    if-lez v4, :cond_1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :cond_1
    return v0
.end method


# virtual methods
.method public convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertItem;Lx/c$a;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->convert(Ljava/util/List;Lx/c$a;)V

    return-void
.end method

.method public convert(Ljava/util/List;Lx/c$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertItem;",
            ">;",
            "Lx/c$a;",
            ")V"
        }
    .end annotation

    new-instance v5, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;Ljava/util/List;Lx/c$a;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertItem;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertItem;->getSrcPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertItem;->getWritingMode()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->deletePrevFile(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$SNoteFolderNameCreator;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$SNoteFolderNameCreator;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/b;)V

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$SNoteFolderNameCreator;->a(Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl$SNoteFolderNameCreator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->setDstFilePrefix(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertItem;->getWritingMode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->setWriteMode(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertItem;->isWrappingWhenLocked()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->setIsWrappingWhenLocked(Z)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->setFolderName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;-><init>(Landroid/content/Context;Ljava/util/List;IILcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->put(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;)V

    return-void
.end method

.method public getLastModifiedTime(Ljava/lang/String;)J
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ConvertUtils;->getConverterType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->getLastModifiedTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->connect(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->mIsActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAlreadyConverted(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ConvertUtils;->getConverterType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->findConvertedSNoteFileByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->mIsActive:Z

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ExternalConverterContractImpl;->mIsActive:Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->disconnect()V

    return-void
.end method
