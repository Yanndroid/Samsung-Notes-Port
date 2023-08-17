.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->j()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationEnd# ScaleAnimation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->g(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/IPinAnimationListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->d(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/IPinAnimationListener;->onPinToAOD(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->j()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationRepeat# ScaleAnimation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/animation/pin/PinAnimation;->j()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationStart# ScaleAnimation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
