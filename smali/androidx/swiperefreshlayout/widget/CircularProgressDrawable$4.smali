.class Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field public final synthetic val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;


# direct methods
.method public constructor <init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;)V
    .locals 0

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iput-object p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;->val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;->val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->setRotation(F)V

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;->val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->setIsRunning(Z)V

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-static {p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->access$100(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;->val$fourDot:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$FourDot;->setAlpha(I)V

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-static {p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->access$200(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$4;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v0, 0x0

    iput v0, p1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    return-void
.end method
