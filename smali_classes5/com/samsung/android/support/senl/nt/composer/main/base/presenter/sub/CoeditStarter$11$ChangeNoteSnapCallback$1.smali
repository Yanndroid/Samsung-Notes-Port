.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;->readyComposer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$Contract;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->val$docState:Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$Contract;->attachLoadedDoc(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->p(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback$1;)V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->s(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback$1;->this$2:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11$ChangeNoteSnapCallback;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$11;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$Contract;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/CoeditStarter$Contract;->clearStateForChangeDoc(ZZ)V

    return-void
.end method
