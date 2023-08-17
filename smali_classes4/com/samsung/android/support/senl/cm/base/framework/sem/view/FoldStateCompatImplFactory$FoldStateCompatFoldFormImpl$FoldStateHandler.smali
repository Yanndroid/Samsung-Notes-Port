.class Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FoldStateHandler"
.end annotation


# static fields
.field private static final MESSAGE_TIME_OUT:I = 0x12381239

.field private static final TIME_OUT_MS:J = 0x12cL


# instance fields
.field private mCallback:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FolderStateCallback;

.field private mFinished:Z

.field private mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

.field private mFolded:Z

.field private mReceivedFoldStateChanged:Z

.field private mReceivedTabletModeChanged:Z

.field private mTabletMode:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FolderStateCallback;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mReceivedFoldStateChanged:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mReceivedTabletModeChanged:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mFinished:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mFolded:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mTabletMode:Z

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler$1;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mCallback:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FolderStateCallback;

    const p1, 0x12381239

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mFolded:Z

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mReceivedFoldStateChanged:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mReceivedTabletModeChanged:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mTabletMode:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->updateState()V

    return-void
.end method

.method private finish()V
    .locals 2

    const v0, 0x12381239

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mFinished:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mCallback:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FolderStateCallback;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    return-void
.end method

.method private updateState()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mFinished:Z

    const-string v1, "FoldStateCompatImpl"

    if-eqz v0, :cond_0

    const-string v0, "already finished"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mReceivedFoldStateChanged:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mReceivedTabletModeChanged:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mFolded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mTabletMode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fold state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mFolded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " & "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mTabletMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mCallback:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FolderStateCallback;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FolderStateCallback;->onSuccess(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->finish()V

    :cond_3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x12381239

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mFinished:Z

    if-nez p1, :cond_0

    const-string p1, "FoldStateCompatImpl"

    const-string v0, "time out"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->mCallback:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FolderStateCallback;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FolderStateCallback;->onFailed()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateHandler;->finish()V

    :cond_0
    return-void
.end method
