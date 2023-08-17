.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel$TEZoomObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleChanged()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/IZoomMenuView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->getCurrentScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->getMaxScale()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->getCurrentScale()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->getMinScale()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/IZoomMenuView;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/IZoomMenuView;->update(ZZ)V

    :cond_2
    return-void
.end method
