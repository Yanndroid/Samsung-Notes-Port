.class Lcom/samsung/android/app/notes/memolist/MemoListActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$INoteListActivity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/memolist/MemoListActivity;->handleBixbyAppLink(Landroid/content/Intent;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/memolist/MemoListActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/memolist/MemoListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity$2;->this$0:Lcom/samsung/android/app/notes/memolist/MemoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerNoteListActivityBixby2()Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteListActivityBixby2;
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteListActivityBixby2;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteListActivityBixby2;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity$2;->this$0:Lcom/samsung/android/app/notes/memolist/MemoListActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteListActivityBixby2;->setActivity(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;)V

    return-object v0
.end method
