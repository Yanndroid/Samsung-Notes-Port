.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "executeTask# start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareCreatedWNote;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "executeTask# isPDFViewer"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;->close(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "executeTask# end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
