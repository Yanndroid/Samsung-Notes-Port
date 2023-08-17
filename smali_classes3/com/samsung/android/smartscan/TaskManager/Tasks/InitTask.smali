.class public Lcom/samsung/android/smartscan/TaskManager/Tasks/InitTask;
.super Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;-><init>()V

    sget-object v0, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;->Init:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    iput-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->taskType:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    return-void
.end method


# virtual methods
.method public executeTask()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->taskListener:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->taskType:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    invoke-interface {v0, v1}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskListener;->onExecuteTask(Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
