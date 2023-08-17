.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;->notifyViewUpdate(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;

.field public final synthetic val$result:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1$1;->val$result:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1$1;->val$result:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;->notifyPageUpdate()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateInvertBackgroundColor()Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getInputValue()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;->m(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;

    iget v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;->val$curPageIndex:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1$1;->val$result:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$ResultValues;->getFirstPageIndex()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskWebClip$8$1;II)V

    return-void
.end method
