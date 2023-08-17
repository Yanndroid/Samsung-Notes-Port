.class public abstract Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask;"
    }
.end annotation


# instance fields
.field public mCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mDstType:I

.field private mSrcType:I

.field public mTaskResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;


# direct methods
.method public constructor <init>(IILcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mSrcType:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mDstType:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;

    return-void
.end method


# virtual methods
.method public abstract getSrcSize()J
.end method

.method public postConvert()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;->onPostConvert(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V

    :cond_0
    return-void
.end method

.method public preConvert()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mTaskResult:Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertTaskResult;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;->onPreConvert(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertResult;)V

    :cond_0
    return-void
.end method

.method public abstract run()V
.end method

.method public abstract setParams(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$IConvertParams;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mSrcType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/sub/AbsConvertSubTask;->mDstType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
