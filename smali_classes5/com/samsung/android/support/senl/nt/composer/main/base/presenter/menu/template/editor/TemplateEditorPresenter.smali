.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TemplateEditorPresenter"


# instance fields
.field private mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

.field private mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;

.field private mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

.field private mZoomPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->getImageModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/TEImageModel;->setCallback(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->getAdjustModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->getAdjustModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getZoomModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mZoomPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->close()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mZoomPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->close()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mZoomPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;

    invoke-virtual {v1}, Ljava/util/Observable;->deleteObservers()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->close()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;

    return-void
.end method

.method public getAdjustPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    return-object v0
.end method

.method public getModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;

    return-object v0
.end method

.method public getZoomPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mZoomPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "TemplateEditorPresenter"

    const-string v1, "onRestoreInstanceState#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "te_delta_scale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    const-string v1, "te_opacity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "te_img_x_trans_ratio"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    const-string v3, "te_img_y_trans_ratio"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->getAdjustModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->storeEditState(FIFF)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "TemplateEditorPresenter"

    const-string v1, "onSaveInstanceState#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->getAdjustModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->calculateDeltaScale()F

    move-result v0

    const-string v1, "te_delta_scale"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->getAdjustModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getOpacity()I

    move-result v0

    const-string v1, "te_opacity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->getAdjustModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->calculateImageXTransRatio()F

    move-result v0

    const-string v1, "te_img_x_trans_ratio"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->getAdjustModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->calculateImageYTransRatio()F

    move-result v0

    const-string v1, "te_img_y_trans_ratio"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public storeData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->getAdjustModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->storeEditState()V

    return-void
.end method
