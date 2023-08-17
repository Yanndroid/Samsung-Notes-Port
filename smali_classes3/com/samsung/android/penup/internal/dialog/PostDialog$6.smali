.class Lcom/samsung/android/penup/internal/dialog/PostDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/PostDialog;->setSetAsDownloadableTextView()V
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

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$6;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$6;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$900(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$6;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$900(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$6;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$900(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$6;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$900(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$6;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/samsung/android/penup/R$color;->set_as_downloadable_selected:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$6;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$900(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$6;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/samsung/android/penup/R$color;->set_as_downloadable_unselected:I

    :goto_0
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$6;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {p1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$900(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$6;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$900(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/samsung/android/penup/R$drawable;->btn_post_download_default:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/samsung/android/penup/R$drawable;->btn_post_download_off:I

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method
