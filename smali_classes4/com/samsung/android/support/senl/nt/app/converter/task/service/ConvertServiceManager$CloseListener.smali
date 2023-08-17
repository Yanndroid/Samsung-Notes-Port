.class Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$CloseListener;
.super Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloseListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$CloseListener;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;)V

    return-void
.end method


# virtual methods
.method public completed(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->completed(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "close completed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mSrcPath:Ljava/lang/String;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mTakenTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConvertServiceManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mListener:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    const/4 p2, 0x4

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;->onSuccess(ILcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$CloseListener;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->o(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)V

    return-void
.end method

.method public failed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "close failed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mSrcPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConvertServiceManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mListener:Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$BaseDocListener;->mSrcPath:Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;->onFailed(ILcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener$ServiceMsg;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$CloseListener;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->o(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)V

    return-void
.end method
