.class Lcom/samsung/android/support/senl/nt/app/main/MainView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/MainView;->launchEditorByIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/MainView;

.field public final synthetic val$intent:Landroid/content/Intent;

.field public final synthetic val$type:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/MainView;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView$3;->val$type:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchEditorByIntent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView$3;->val$type:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView$3;->val$type:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;->SPEN_SDOCX:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView$3;->val$intent:Landroid/content/Intent;

    const-string v1, "execution_composer_uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/MainView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/MainView;->mMainActivity:Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "NotesFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onVerifyLockedNote(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
