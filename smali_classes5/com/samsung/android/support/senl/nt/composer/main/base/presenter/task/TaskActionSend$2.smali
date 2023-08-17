.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->addPdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

.field public final synthetic val$targetPageIndex:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->val$targetPageIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifyViewUpdate(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$ActionSendHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)I

    move-result v1

    iget p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;->mErrorCode:I

    or-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;)I

    move-result v1

    iget v2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;->mErrorCode:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->notifyViewUpdate(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;->m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$InputValues;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskActionSend$2;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;)V

    return-void
.end method
