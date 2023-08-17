.class Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->makeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$7;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$7;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$7;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string p1, "FloatLayout"

    const-string p2, "show Animation end"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout$7;->this$0:Lcom/samsung/android/support/senl/nt/base/winset/view/floater/FloatLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string p1, "FloatLayout"

    const-string v0, "show Animation start"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
