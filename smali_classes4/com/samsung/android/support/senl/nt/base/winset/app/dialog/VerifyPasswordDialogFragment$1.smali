.class Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/VerifyPasswordDialogFragment;->verifyInputText(Landroid/text/Editable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
