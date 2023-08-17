.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IUnlockConfirmDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->showExportOptionPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

.field public final synthetic val$isSaveAs:Z

.field public final synthetic val$sharableNoteMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;ZLjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$6;->val$isSaveAs:Z

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$6;->val$sharableNoteMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unLock()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$6;->val$isSaveAs:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$6;->val$sharableNoteMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "key_save_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v1, 0x67

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$6;->val$sharableNoteMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "key_share_list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v1, 0x66

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mLockHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter$6;->val$sharableNoteMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v1, v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->verifyLockedNote(ILandroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method
