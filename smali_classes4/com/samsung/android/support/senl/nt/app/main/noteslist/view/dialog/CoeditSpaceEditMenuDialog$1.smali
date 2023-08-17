.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$items:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$1;->val$items:[Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$1;->val$items:[Ljava/lang/String;

    aget-object p2, v0, p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_space_rename:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;->rename()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_space_leave:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;->leave()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_space_delete:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;->delete()V

    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
