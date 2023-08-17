.class Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->a(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$dimen;->drawer_corner_width_height:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->b(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr p2, p4

    :cond_0
    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->e(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->c(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->h(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
