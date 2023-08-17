.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private executeTaskShare(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeContract;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeContract;->getTaskShareBuilder(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->getCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "executeTask# start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->hasAllContentFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;-><init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v8

    new-instance v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v4

    const/16 v5, 0x2134

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getNewPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->saveAsDirectory(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareCreatedWNote;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareCreatedWNote;-><init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->syncPath()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$ResultValues;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$ResultValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->executeTaskShare(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "executeTask# end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "new SpenWNote fail e#"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$ResultValues;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeNotCorruptShareNote$ResultValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method
