.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParamFactory"
.end annotation


# instance fields
.field private final mPdfMenuParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;->mPdfMenuParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;

    return-void
.end method


# virtual methods
.method public create()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;->mPdfMenuParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;

    return-object v0
.end method

.method public setByExternal(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;->mPdfMenuParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;->k(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;->mPdfMenuParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;->mPdfMenuParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;->mPdfMenuParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;Z)V

    return-object p0
.end method

.method public setByNewTemplate()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;->mPdfMenuParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;->mPdfMenuParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;->l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;Z)V

    return-object p0
.end method

.method public setByTemplate(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;->mPdfMenuParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;->l(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$ParamFactory;->mPdfMenuParam:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;->j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPdfPresenter$Param;Z)V

    return-object p0
.end method
