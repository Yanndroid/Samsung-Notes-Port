.class Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->b(Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;->b(Lcom/samsung/android/support/senl/nt/stt/view/dialog/EditSTTDialog;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
