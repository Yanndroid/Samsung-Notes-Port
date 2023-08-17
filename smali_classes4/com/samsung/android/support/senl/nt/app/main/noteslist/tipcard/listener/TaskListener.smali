.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mIsCancelled:Z

.field public final mTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;

.field public final mTipCardProgress:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;

.field public final mWeakRefActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;)V
    .locals 1
    .param p2    # Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mWeakRefActivity:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mTipCardProgress:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mIsCancelled:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->updateProgress()V

    return-void
.end method

.method private updateProgress()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mWeakRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;)V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/ViewModeUtils;->runOnUiThread(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public setOnCancelled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mIsCancelled:Z

    return-void
.end method

.method public setProgress(III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mTipCardProgress:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->setProgressInfo(III)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->updateProgress()V

    return-void
.end method
