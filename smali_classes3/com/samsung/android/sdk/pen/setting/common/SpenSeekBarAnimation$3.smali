.class Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->setThumbAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;)Landroid/graphics/drawable/ScaleDrawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;)Landroid/graphics/drawable/ScaleDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;)Landroid/graphics/drawable/ScaleDrawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    :cond_0
    return-void
.end method
