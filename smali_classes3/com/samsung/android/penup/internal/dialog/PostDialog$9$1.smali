.class Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/penup/ResourceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/PostDialog$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/penup/ResourceCallback<",
        "Lcom/samsung/android/penup/model/ArtworkResource;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$9;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/PostDialog$9;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/ArtworkResource;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1$1;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1;Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/ArtworkResource;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$9;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/dialog/PostDialog$9;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    invoke-virtual {p1}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->dismissProgressDialog()V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$9;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/dialog/PostDialog$9;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-virtual {p1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic onCompleted(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/Resource;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/penup/model/ArtworkResource;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1;->onCompleted(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/ArtworkResource;)V

    return-void
.end method
