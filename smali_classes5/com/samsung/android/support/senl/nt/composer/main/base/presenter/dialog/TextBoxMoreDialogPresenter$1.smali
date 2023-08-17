.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->getObjectEventListener()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObjectAdded(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public onObjectChanged(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;I)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    iget-object p2, p2, Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;->object:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onObjectChanged# "

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->hide()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onObjectRemoved(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onObjectRemoved# "

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/TextBoxMoreDialogPresenter;->hide()V

    :cond_2
    :goto_0
    return-void
.end method
