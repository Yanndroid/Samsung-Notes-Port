.class Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$5;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->startDotAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;


# direct methods
.method public constructor <init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$5;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$5;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-static {p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->access$300(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;)Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$5;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-static {p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->access$300(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;)Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;

    move-result-object p1

    invoke-interface {p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$OnAnimationEndCallback;->OnAnimationEnd()V

    :cond_0
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$5;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-static {p1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->access$100(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$5;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
