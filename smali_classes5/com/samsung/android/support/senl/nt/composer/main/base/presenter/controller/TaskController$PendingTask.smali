.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingTask"
.end annotation


# instance fields
.field public callback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

.field public inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

.field public isSync:Z

.field public isWaitingPermission:Z

.field public task:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;->task:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;->inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;->callback:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;->isSync:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;->isWaitingPermission:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)V

    return-void
.end method


# virtual methods
.method public setWaitingPermission(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController$PendingTask;->isWaitingPermission:Z

    return-void
.end method
