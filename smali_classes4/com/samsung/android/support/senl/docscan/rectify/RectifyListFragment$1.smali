.class Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->a(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->setCurrentPosition(IZ)V

    return-void
.end method
