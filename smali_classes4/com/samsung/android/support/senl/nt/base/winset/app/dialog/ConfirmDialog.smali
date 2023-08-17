.class public Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mButtonId:I

.field private mConfirmSAParam:Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParam;

.field private mContent:Ljava/lang/String;

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mButtonId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mConfirmSAParam:Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParam;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mDismissRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mContent:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;)Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParam;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mConfirmSAParam:Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParam;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mDismissRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public buildDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mContent:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mButtonId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$string;->OK:I

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mDismissRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    new-instance p2, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog$2;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_1
    return-object p1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setButtonId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mButtonId:I

    return-void
.end method

.method public setConfirmSamsungAnalytics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParam;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mConfirmSAParam:Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics$LogParam;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mContent:Ljava/lang/String;

    return-void
.end method

.method public setPostRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mDismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/ConfirmDialog;->mTitle:Ljava/lang/String;

    return-void
.end method
