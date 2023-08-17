.class Lcom/samsung/android/penup/internal/dialog/PostDialog$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/PostDialog$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$8;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/PostDialog$8;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$8$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$8$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$8;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/PostDialog$8;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/BaseDialogFragment;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$8$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$8;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/dialog/PostDialog$8;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$1100(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$8$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$8;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/PostDialog$8;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-virtual {v0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->dismiss()V

    return-void
.end method
