.class abstract Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "JobRunner"
.end annotation


# instance fields
.field public mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

.field private final mTaskType:I

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mTaskType:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mTaskType:I

    return p0
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public cancel(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getInfo()Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;->getCallerId()I

    move-result v0

    if-ne v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel#, callerId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / type : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mTaskType:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / path : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->mItem:Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/WConvertQueueItem;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConvertServiceManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$JobRunner;->cancel()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
