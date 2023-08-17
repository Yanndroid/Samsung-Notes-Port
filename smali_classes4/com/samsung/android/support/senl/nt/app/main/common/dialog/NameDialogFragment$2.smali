.class Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/dialog/NameDialogFragment;->onNegative()V

    return-void
.end method
