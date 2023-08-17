.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->init(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/IRotationModel;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->hasGestureNavigation()Z

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowInsetsCompat;->findRotationByWindowInsets(Landroid/view/WindowInsets;ZI)I

    move-result p1

    if-eq p1, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->d(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->e()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplyWindowInsets# before/after rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->c(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onApplyWindowInsets# onHalfWheelRotationChanged by detecting 180 degree rotation"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/IRotationModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/IRotationModel;->onHalfWheelRotationChanged()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/rotation/RotationModel;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
