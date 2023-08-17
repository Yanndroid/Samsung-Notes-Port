.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColorLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColorLayout;->startChildAnimation(Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColorLayout;

.field public final synthetic val$child:Landroid/view/View;

.field public final synthetic val$visibility:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColorLayout;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColorLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColorLayout;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColorLayout$1;->val$visibility:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColorLayout$1;->val$child:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColorLayout$1;->val$visibility:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColorLayout$1;->val$child:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColorLayout$1;->val$child:Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColorLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColorLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColorLayout;->b(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenColorLayout;Z)V

    return-void
.end method
