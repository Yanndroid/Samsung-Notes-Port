.class public Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;,
        Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$CircleProgressDialogFragment;,
        Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialogFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnchorView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/samsung/android/support/senl/nt/base/R$id;->anchor_view:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method public static getAnchorView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/base/R$id;->anchor_view:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getAnchorView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getAnchorView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->createAnchorView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v1, v0, :cond_1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setY(F)V

    return-object p0

    :cond_2
    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->createAnchorView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    :cond_3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v1, v0, :cond_4

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    :cond_4
    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setY(F)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "DialogUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAnchorView# IllegalStateException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v1, v0, :cond_4

    if-eq v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    goto :goto_0

    :goto_1
    return-object p0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    if-ne v2, v0, :cond_5

    if-eq v2, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    :cond_5
    invoke-virtual {p0, p2}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setY(F)V

    throw v1
.end method

.method public static getNotEnoughStorageString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$string;->not_enough_space_content:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$string;->composer_save_to_image_dir_galaxy:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/samsung/android/support/senl/nt/base/R$string;->composer_save_to_image_dir:I

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOverSizeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x400

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getOverSizeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOverSizeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$string;->note_file_size_over_notify:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceBtnToProgress(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/base/R$dimen;->notes_progress_circle_small_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$layout;->notes_progress_circle_small:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/view/View;->setForegroundGravity(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static showCircleProgressDialogFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$CircleProgressDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$CircleProgressDialogFragment;-><init>()V

    return-object v0
.end method

.method public static showItemsDialog(Landroid/content/Context;I[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method

.method public static showNotEnoughStorageDialog(Landroid/content/Context;Ljava/lang/Runnable;)Landroidx/appcompat/app/AlertDialog;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->not_enough_space:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getNotEnoughStorageString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->setPostRunnable(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->buildDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showNotEnoughStorageDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/appcompat/app/AlertDialog;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$string;->not_enough_space:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->setPostRunnable(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->buildDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showNotEnoughStorageDialogFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$string;->not_enough_space:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getNotEnoughStorageString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialogFragment;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "not_enougn_space"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object p0
.end method

.method public static showOverSizeItemsDialog(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;
    .locals 2

    const-wide/16 v0, 0x400

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showOverSizeItemsDialog(Landroid/content/Context;J)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static showOverSizeItemsDialog(Landroid/content/Context;J)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->getOverSizeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/samsung/android/support/senl/nt/base/R$string;->OK:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$1;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$1;-><init>()V

    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method

.method public static showProgressDialogFragment()Landroidx/fragment/app/DialogFragment;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialogFragment;-><init>()V

    return-object v0
.end method

.method public static showWidgetNoteWarning(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$string;->OK:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$2;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$string;->widget_dialog_try_to_lock_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$string;->widget_dialog_try_to_lock:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
