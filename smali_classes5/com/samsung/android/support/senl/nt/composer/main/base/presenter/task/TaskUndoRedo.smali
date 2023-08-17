.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoStartEndListener;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoHandler;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field public static final REDO:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field public static final UNDO:I = 0x1


# instance fields
.field private mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskUndoRedo"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;-><init>()V

    return-void
.end method

.method public static updateRtToolbar(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isFocusedTextBox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->updateRichTextState()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoHandler;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoHandler;

    :cond_0
    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo;->TAG:Ljava/lang/String;

    const-string v1, "executeTask#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;->getUndoRedoStartEndListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoStartEndListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoStartEndListener;->started()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoHandler;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;->getTaskCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;->getType()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;->getUndoRedoStartEndListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoStartEndListener;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoHandler;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;ILcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoStartEndListener;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo;->mHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskUndoRedo$UndoRedoHandler;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public isAvailableToSave()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKeepTaskDuringActivityRecreation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
