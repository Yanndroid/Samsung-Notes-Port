.class Lcom/samsung/android/penup/internal/dialog/PostDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/penup/ResourceListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/penup/internal/dialog/PostDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/penup/ResourceListCallback<",
        "Lcom/samsung/android/penup/model/CollectionResource;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/PostDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$1;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/samsung/android/penup/ResponseResult;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/penup/ResponseResult;",
            "Ljava/util/List<",
            "Lcom/samsung/android/penup/model/CollectionResource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$1;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$000(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/penup/ResponseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/penup/model/CollectionResource;

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$1;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$100(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$1;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    if-eqz p3, :cond_1

    iget-object p2, p1, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    const/16 v0, 0x64

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$200(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Lcom/samsung/android/penup/ResourceListCallback;

    move-result-object p1

    invoke-static {p2, v0, p3, p1}, Lcom/samsung/android/penup/CollectionApi;->getMyCollections(Lcom/samsung/android/penup/PenupClient;ILjava/lang/String;Lcom/samsung/android/penup/ResourceListCallback;)V

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    invoke-virtual {p1}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->dismissProgressDialog()V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$1;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$300(Lcom/samsung/android/penup/internal/dialog/PostDialog;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$1;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    iget-object p2, p2, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    invoke-virtual {p2}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->dismissProgressDialog()V

    iget-object p2, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$1;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {p2}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$400(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Lcom/samsung/android/penup/ResourceCallback;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/penup/ResourceCallback;->onCompleted(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/Resource;)V

    :cond_3
    :goto_1
    return-void
.end method
