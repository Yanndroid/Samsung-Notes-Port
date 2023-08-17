.class Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->setClickWithoutDismissListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->onNegative()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7;)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->c(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;Ljava/lang/Runnable;)V

    return-void
.end method
