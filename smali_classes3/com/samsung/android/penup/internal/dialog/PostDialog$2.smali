.class Lcom/samsung/android/penup/internal/dialog/PostDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/penup/internal/dialog/CollectionDialog$CollectionDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/penup/internal/dialog/PostDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/PostDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$2;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSubmitted(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->showProgressDialog(Z)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    new-instance v1, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog$2;)V

    invoke-static {v0, p1, v1}, Lcom/samsung/android/penup/CollectionApi;->addCollection(Lcom/samsung/android/penup/PenupClient;Ljava/lang/String;Lcom/samsung/android/penup/ResourceCallback;)V

    return-void
.end method
