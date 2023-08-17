.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$HistoryEventListenerImpl;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/HistoryEventListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryEventListenerImpl"
.end annotation


# instance fields
.field private final mIsMeasuredBodyText:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/HistoryEventListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$HistoryEventListenerImpl;->mIsMeasuredBodyText:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    return-void
.end method


# virtual methods
.method public onPreSubmit(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;III)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$HistoryEventListenerImpl;->mIsMeasuredBodyText:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->setValue(Z)V

    return-void
.end method

.method public onRedo(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$HistoryEventListenerImpl;->mIsMeasuredBodyText:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->setValue(Z)V

    return-void
.end method

.method public onUndo(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$HistoryEventListenerImpl;->mIsMeasuredBodyText:Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/BOOLEAN;->setValue(Z)V

    return-void
.end method
