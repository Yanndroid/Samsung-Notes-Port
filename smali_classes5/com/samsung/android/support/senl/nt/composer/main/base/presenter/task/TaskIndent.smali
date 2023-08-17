.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskIndent"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->clear()V

    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent;->TAG:Ljava/lang/String;

    const-string v1, "executeTask#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$InputValues;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskIndent$IndentHandler;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public isAvailableToSave()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
