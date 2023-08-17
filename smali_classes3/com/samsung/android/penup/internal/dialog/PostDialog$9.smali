.class Lcom/samsung/android/penup/internal/dialog/PostDialog$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/PostDialog;->setPostButton()V
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

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/samsung/android/penup/model/ArtworkResource;

    invoke-direct {p1}, Lcom/samsung/android/penup/model/ArtworkResource;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$1200(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/penup/model/ArtworkResource;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$800(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/penup/model/ArtworkResource;->setDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$900(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/samsung/android/penup/model/ArtworkResource;->setDownloadable(Ljava/lang/Boolean;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$100(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$600(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/penup/model/CollectionResource;

    invoke-virtual {v0}, Lcom/samsung/android/penup/model/CollectionResource;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/penup/model/ArtworkResource;->setCollectionId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    iget-object v1, v0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mPenupClient:Lcom/samsung/android/penup/PenupClient;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$1300(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1;-><init>(Lcom/samsung/android/penup/internal/dialog/PostDialog$9;)V

    invoke-static {v1, p1, v0, v2}, Lcom/samsung/android/penup/ArtworkApi;->postArtwork(Lcom/samsung/android/penup/PenupClient;Lcom/samsung/android/penup/model/ArtworkResource;Landroid/net/Uri;Lcom/samsung/android/penup/ResourceCallback;)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$1400(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    iget-object p1, p1, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mProgressDialogHelper:Lcom/samsung/android/penup/internal/ProgressDialogHelper;

    invoke-virtual {p1, v0}, Lcom/samsung/android/penup/internal/ProgressDialogHelper;->showProgressDialog(Z)V

    return-void
.end method
