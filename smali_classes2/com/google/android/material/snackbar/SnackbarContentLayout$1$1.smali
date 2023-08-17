.class Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/SnackbarContentLayout$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;->this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroidx/core/view/SeslTouchTargetDelegate;

    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;->this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;

    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-static {v1}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->access$000(Lcom/google/android/material/snackbar/SnackbarContentLayout;)Lcom/google/android/material/snackbar/SnackbarContentLayout;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/view/SeslTouchTargetDelegate;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;->this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;

    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-static {v1}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->access$100(Lcom/google/android/material/snackbar/SnackbarContentLayout;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;->this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;

    iget-object v2, v2, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-static {v2}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->access$100(Lcom/google/android/material/snackbar/SnackbarContentLayout;)Landroid/widget/Button;

    move-result-object v2

    invoke-static {v1, v1, v1, v1}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/core/view/SeslTouchTargetDelegate;->addTouchDelegate(Landroid/view/View;Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;)Landroid/view/TouchDelegate;

    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;->this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;

    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-static {v1}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->access$000(Lcom/google/android/material/snackbar/SnackbarContentLayout;)Lcom/google/android/material/snackbar/SnackbarContentLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
