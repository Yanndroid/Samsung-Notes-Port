.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$LinkInvitationEventLister$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFinished(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goToInvitedNote#onDownloadFinished uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditMode"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->removeProgressCircle()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->k(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode$11;->val$caller:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;->o(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditMode;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
