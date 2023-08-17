.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->updateProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;

    iget-boolean v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mIsCancelled:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TaskListener;->mTipCardProgress:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;->updateProgress(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    return-void
.end method
