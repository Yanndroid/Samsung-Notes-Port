.class Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->dismiss()V

    return-void
.end method
