.class Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "AbsDialogFragment"

    const-string p3, "onLayoutChange# "

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;->a(Lcom/samsung/android/support/senl/nt/app/common/dialog/AbsDialogFragment;)V

    return-void
.end method
