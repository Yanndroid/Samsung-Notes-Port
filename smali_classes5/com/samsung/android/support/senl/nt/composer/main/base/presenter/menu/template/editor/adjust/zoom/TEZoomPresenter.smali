.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

.field private mObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel$TEZoomObserver;

.field private mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/IZoomMenuView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->mObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel$TEZoomObserver;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->addObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel$TEZoomObserver;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/IZoomMenuView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/IZoomMenuView;

    return-object p0
.end method


# virtual methods
.method public attachView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/IZoomMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/IZoomMenuView;

    return-void
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/IZoomMenuView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->mObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel$TEZoomObserver;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->removeObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel$TEZoomObserver;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    return-void
.end method

.method public scrollZoom(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->zoomIn()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->zoomOut()V

    :goto_0
    return-void
.end method

.method public zoomIn()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    const v1, 0x3fa66666    # 1.3f

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->multiplyScale(F)V

    return-void
.end method

.method public zoomOut()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->multiplyScale(F)V

    return-void
.end method
