.class Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler$2;->this$0:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler$2;->this$0:Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;->a(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler$2$a;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler$2$a;-><init>(Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic$CoeditBaseLogicHandler$2;I)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/coedit/sharelogic/CoeditBaseLogic;->c(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
