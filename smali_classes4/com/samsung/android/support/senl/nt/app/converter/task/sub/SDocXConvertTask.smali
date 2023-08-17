.class public Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;
.super Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$ISDocXConvertTaskCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask<",
        "Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$ISDocXConvertTaskCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SDocXConvertTask"


# instance fields
.field private mIsOriginFile:Z

.field private mListener:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

.field private mPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUUIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$ISDocXConvertTaskCallback;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;-><init>(IILcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mPathList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mUUIDList:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mIsOriginFile:Z

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mListener:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mPathList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$ISDocXConvertTaskCallback;)V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;-><init>(IILcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mPathList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mUUIDList:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mIsOriginFile:Z

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$1;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mListener:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$ISDocXConvertTaskCallback;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$ISDocXConvertTaskCallback;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mPathList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mIsOriginFile:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mPathList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mUUIDList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getSrcSize()J
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->getTargetFileSize(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-gtz v7, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSrcSize, totalSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDocXConvertTask"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3
.end method

.method public getTargetFileSize(Ljava/lang/String;)J
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->getUncompressedSdocSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public postConvert()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mUUIDList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;->setUuidList(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->postConvert()V

    return-void
.end method

.method public run()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->preConvert()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$ISDocXConvertTaskCallback;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mPathList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->getSrcSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/app/converter/utils/ConvertingUtils;->getRequiredSizeForConverting(J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mListener:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$ISDocXConvertTaskCallback;->convertDocument(Ljava/util/List;JLcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;)V

    return-void
.end method

.method public setParams(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$IConvertParams;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mPathList:Ljava/util/List;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$IConvertParams;->getPathList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$IConvertParams;->isOrigin()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;->mIsOriginFile:Z

    return-void
.end method
