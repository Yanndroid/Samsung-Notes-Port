.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->executeLogicsPostDelay(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/postprocessing/AbsNotesListPostProcess;->executeLogics()V

    :cond_0
    return-void
.end method
