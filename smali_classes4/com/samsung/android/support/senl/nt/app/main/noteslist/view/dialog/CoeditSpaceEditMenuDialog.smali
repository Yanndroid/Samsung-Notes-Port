.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;
    }
.end annotation


# instance fields
.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mEditMenuDialogContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;->mEditMenuDialogContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_space_rename:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, p4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_space_leave:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v0

    const/4 p4, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_space_delete:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p4

    goto :goto_0

    :cond_1
    new-array p3, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_space_leave:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p4

    :goto_0
    new-instance p4, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$style;->NoteAlertDialogListThemeForAppCompat:I

    invoke-direct {p4, p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->shared_notebooks:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$1;

    invoke-direct {p2, p0, p3, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;[Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p4, p3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;->mEditMenuDialogContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog$IGroupEditMenuDialog;

    return-object p0
.end method


# virtual methods
.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/CoeditSpaceEditMenuDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
