.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/UnlockedConfirmDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private final mDialog:Landroidx/appcompat/app/AlertDialog;

.field private final mHelper:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IUnlockConfirmDialog;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/UnlockedConfirmDialog;->mHelper:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;->getPositiveButton()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/UnlockedConfirmDialog$2;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/UnlockedConfirmDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/UnlockedConfirmDialog;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IUnlockConfirmDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/UnlockConfirmDialogHelper;->getNegativeButton()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/UnlockedConfirmDialog$1;

    invoke-direct {p3, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/UnlockedConfirmDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/UnlockedConfirmDialog;)V

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/UnlockedConfirmDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/UnlockedConfirmDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
