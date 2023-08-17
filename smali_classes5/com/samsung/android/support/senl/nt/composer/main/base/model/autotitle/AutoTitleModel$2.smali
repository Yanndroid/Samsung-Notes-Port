.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->getObjectEventListener()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

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

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onObjectChanged(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/changedInfo/SpenObjectChangedInfo;I)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
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

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/autotitle/AutoTitleModel;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
