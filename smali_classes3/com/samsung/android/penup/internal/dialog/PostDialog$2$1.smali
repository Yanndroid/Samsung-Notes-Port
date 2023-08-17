.class Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/penup/ResourceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/PostDialog$2;->onSubmitted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/penup/ResourceCallback<",
        "Lcom/samsung/android/penup/model/CollectionResource;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/PostDialog$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/CollectionResource;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$2;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->dismissProgressDialog()V

    invoke-virtual {p1}, Lcom/samsung/android/penup/ResponseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$2;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$100(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$2;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$500(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$2;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$500(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$2;

    iget-object p2, p2, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {p2}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$100(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$2;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$500(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Lcom/samsung/android/penup/internal/dialog/PostDialog$CollectionListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1$1;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$2;

    iget-object p2, p2, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {p2}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$400(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Lcom/samsung/android/penup/ResourceCallback;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/penup/ResourceCallback;->onCompleted(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/Resource;)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$2;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/dialog/PostDialog$2;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-virtual {p1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCompleted(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/Resource;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/penup/model/CollectionResource;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/penup/internal/dialog/PostDialog$2$1;->onCompleted(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/CollectionResource;)V

    return-void
.end method
