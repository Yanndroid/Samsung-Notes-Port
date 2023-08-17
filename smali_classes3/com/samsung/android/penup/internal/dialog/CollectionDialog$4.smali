.class Lcom/samsung/android/penup/internal/dialog/CollectionDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$4;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$4;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->access$200(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$4;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$4;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->access$200(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
