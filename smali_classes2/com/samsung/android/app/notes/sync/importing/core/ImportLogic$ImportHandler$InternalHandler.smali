.class Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalHandler"
.end annotation


# instance fields
.field private mImportLogic:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;",
            ">;"
        }
    .end annotation
.end field

.field private mParentHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;->mImportLogic:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;->mParentHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;->mParentHandler:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;->mImportLogic:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler$a;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler$a;-><init>(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic$ImportHandler$InternalHandler;I)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;->e(Lcom/samsung/android/app/notes/sync/importing/core/ImportLogic;Landroid/os/Message;)V

    :cond_0
    return-void
.end method
