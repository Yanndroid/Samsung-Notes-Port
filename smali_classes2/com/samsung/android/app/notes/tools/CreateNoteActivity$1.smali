.class Lcom/samsung/android/app/notes/tools/CreateNoteActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/tools/CreateNoteActivity;->checkHorizontalFolded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/tools/CreateNoteActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/tools/CreateNoteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/tools/CreateNoteActivity$1;->this$0:Lcom/samsung/android/app/notes/tools/CreateNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/app/ActivityOptions;)V
    .locals 3
    .param p1    # Landroid/app/ActivityOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/tools/CreateNoteActivity$1;->this$0:Lcom/samsung/android/app/notes/tools/CreateNoteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "posture_launched_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/notes/tools/CreateNoteActivity$1;->this$0:Lcom/samsung/android/app/notes/tools/CreateNoteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/tools/CreateNoteActivity$1;->this$0:Lcom/samsung/android/app/notes/tools/CreateNoteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
