.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private executeTaskShare(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->syncPath()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeContract;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareCreatedWNote;

    invoke-direct {v3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareCreatedWNote;-><init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, v3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeContract;->getTaskShareBuilder(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareWNote;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->getCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareBuilder;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;)V

    return-void
.end method


# virtual methods
.method public closeDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "executeTask# close SpenWNote fail e : "

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 15

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "executeTask# start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->hasAllContentFiles()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v11

    new-instance v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)Landroid/content/Context;

    move-result-object v5

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v7

    const/16 v8, 0x2134

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getNewPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->saveAsDirectory(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    move-object v14, v3

    move v3, v0

    move-object v0, v14

    goto :goto_0

    :catch_0
    move-exception v0

    move v4, v1

    goto/16 :goto_1

    :cond_0
    move v3, v1

    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)Landroid/content/Context;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v7, 0x0

    sget-object v8, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getOrientation()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v10

    const/4 v11, 0x0

    move-object v5, v13

    move-object v6, v12

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isBackgroundColorInverted()Z

    move-result v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->invertBackgroundColor(Z)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getSpenNoteTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v9

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)Ljava/util/List;

    move-result-object v8

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v10

    move-object v5, v12

    move-object v6, v0

    move-object v7, v13

    invoke-static/range {v4 .. v10}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/List;Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;)Z

    move-result v2

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->closeDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getNewPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->saveAsDirectory(Ljava/lang/String;)V

    invoke-direct {p0, v13}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->executeTaskShare(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v2

    move v4, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v13

    goto :goto_1

    :catch_2
    move-exception v4

    move v14, v3

    move-object v3, v0

    move-object v0, v4

    move v4, v14

    goto :goto_1

    :catch_3
    move-exception v3

    move v4, v1

    move-object v14, v3

    move-object v3, v0

    move-object v0, v14

    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->f()Ljava/lang/String;

    move-result-object v5

    const-string v6, "executeTask# copyPage:"

    invoke-static {v5, v6, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->closeDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    :cond_2
    move-object v13, v2

    :cond_3
    invoke-virtual {p0, v13}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->closeDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$ResultValues;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote$ResultValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakeShareNote;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "executeTask# end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
