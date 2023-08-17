.class Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/stt/view/layout/WindowFocusLayout$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->b(Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->c(Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
