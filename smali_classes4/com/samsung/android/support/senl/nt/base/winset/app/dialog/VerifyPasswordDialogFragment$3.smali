.class Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->initLayout(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string p1, "7151"

    const-string v0, "715"

    if-nez p2, :cond_0

    const-string p2, "1"

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod;->getInstance()Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLinePasswordTransformationMethod;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "0"

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod;->getInstance()Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/RemoveNewLineTransformationMethod;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
