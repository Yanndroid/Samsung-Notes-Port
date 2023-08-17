.class Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->g(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)Landroid/widget/ScrollView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;->g(Lcom/samsung/android/support/senl/nt/app/lock/view/base/AbsPasswordView;)Landroid/widget/ScrollView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ScrollView;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p4

    if-ge p3, p4, :cond_0

    const/16 p3, 0x30

    goto :goto_0

    :cond_0
    const/16 p3, 0x10

    :goto_0
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
