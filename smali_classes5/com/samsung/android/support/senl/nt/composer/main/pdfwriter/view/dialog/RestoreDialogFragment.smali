.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$Contract;
    }
.end annotation


# static fields
.field public static final KEY_LAST_MODIFIED_TIME:Ljava/lang/String; = "lastModifiedTime"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLastModifiedTime:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RestoreDialogFragment"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;->mLastModifiedTime:Ljava/lang/Long;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private loadData(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "lastModifiedTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;->mLastModifiedTime:Ljava/lang/Long;

    :cond_1
    return-void
.end method


# virtual methods
.method public getContract()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$Contract;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$Contract;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$Contract;

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;)V

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;->loadData(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->pdf_reader_restore_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;->mLastModifiedTime:Ljava/lang/Long;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;->mLastModifiedTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/DateTimeUtil;->convertFormattedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->pdf_reader_restore_desc_first:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->pdf_reader_restore_desc_second:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->action_restore:I

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->dialog_discard:I

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
