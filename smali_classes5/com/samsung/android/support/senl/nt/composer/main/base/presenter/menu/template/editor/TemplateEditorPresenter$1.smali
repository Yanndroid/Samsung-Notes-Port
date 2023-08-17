.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/image/FileOperationTask$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->finish(Z)V

    :cond_0
    return-void
.end method

.method public onStarted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->showProgressDialog()V

    :cond_0
    return-void
.end method
