.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostJobManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager$DialogRunnable;
    }
.end annotation


# instance fields
.field private final mDialogRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager$DialogRunnable;

.field private final mHandler:Landroid/os/Handler;

.field private mSubscribeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager$DialogRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager$DialogRunnable;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/c;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->mDialogRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager$DialogRunnable;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->mSubscribeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->clear()V

    return-void
.end method

.method private declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->clearSubscribeRunnable()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->clearDialogRunnable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private clearDialogRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->mDialogRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager$DialogRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->mDialogRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager$DialogRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager$DialogRunnable;->setDialogShowAction(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clearSubscribeRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->mSubscribeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->mSubscribeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public postSubscribe(Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->mSubscribeRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public declared-synchronized runDialogActionOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->clearDialogRunnable()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->isOnMainUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->mDialogRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager$DialogRunnable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager$DialogRunnable;->setDialogShowAction(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager;->mDialogRunnable:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/quicknote/QuickNotePresenter$PostJobManager$DialogRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
