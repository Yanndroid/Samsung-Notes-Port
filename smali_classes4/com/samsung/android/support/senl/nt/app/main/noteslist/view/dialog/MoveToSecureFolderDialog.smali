.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/MoveToSecureFolderDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private final mDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IMoveToSecureFolderDialog;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lz1/d;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->noteslist_unlock_notes_for_move_to_secure_folder:I

    goto :goto_1

    :cond_1
    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->noteslist_unlock_note_for_move_to_secure_folder:I

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v2, p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_continue:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/MoveToSecureFolderDialog$2;

    invoke-direct {v0, p0, p4}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/MoveToSecureFolderDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/MoveToSecureFolderDialog;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IMoveToSecureFolderDialog;)V

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->dialog_cancel:I

    new-instance p4, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/MoveToSecureFolderDialog$1;

    invoke-direct {p4, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/MoveToSecureFolderDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/MoveToSecureFolderDialog;)V

    invoke-virtual {p1, p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/MoveToSecureFolderDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper;->setAnchorView(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/MoveToSecureFolderDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
