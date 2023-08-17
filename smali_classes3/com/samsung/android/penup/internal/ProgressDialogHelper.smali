.class public Lcom/samsung/android/penup/internal/ProgressDialogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;
    }
.end annotation


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInsideDialog:Z

.field private mProgressDialog:Landroid/app/Dialog;

.field private mProgressDialogListener:Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mContext:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialogListener:Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;

    iput-boolean p2, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mIsInsideDialog:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/penup/internal/ProgressDialogHelper;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/penup/internal/ProgressDialogHelper;)Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialogListener:Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;

    return-object p0
.end method


# virtual methods
.method public dismissProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mContext:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialog:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialogListener:Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;

    return-void
.end method

.method public setProgressDialogListener(Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialogListener:Lcom/samsung/android/penup/internal/ProgressDialogHelper$ProgressDialogListener;

    return-void
.end method

.method public showProgressDialog(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/samsung/android/penup/R$style;->ProgressDialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/samsung/android/penup/internal/ProgressDialogHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/penup/internal/ProgressDialogHelper$1;-><init>(Lcom/samsung/android/penup/internal/ProgressDialogHelper;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-boolean p1, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mIsInsideDialog:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialog:Landroid/app/Dialog;

    sget v0, Lcom/samsung/android/penup/R$layout;->progress_dialog:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialog:Landroid/app/Dialog;

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
