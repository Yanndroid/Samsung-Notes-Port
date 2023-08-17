.class public abstract Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mFirstDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public mHandler:Landroid/os/Handler;

.field public mMainListView:Landroid/view/View;

.field public mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mFirstDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mMainListView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->executeLogicsPostDelay(J)V

    return-void
.end method

.method private executeLogicsPostDelay(J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mHandler:Landroid/os/Handler;

    :goto_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public abstract executeLogics()V
.end method

.method public executeOnPreDraw(Landroid/view/View;JLcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mMainListView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mFirstDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mFirstDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mMainListView:Landroid/view/View;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess$1;

    invoke-direct {p1, p0, p4, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;J)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mFirstDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mMainListView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mFirstDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public inactivate(Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mHandler:Landroid/os/Handler;

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mFirstDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mMainListView:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mFirstDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mFirstDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mMainListView:Landroid/view/View;

    return p1
.end method
