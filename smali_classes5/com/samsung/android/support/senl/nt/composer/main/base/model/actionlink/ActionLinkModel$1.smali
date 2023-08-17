.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$ObjectEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;

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

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;)Ljava/util/HashSet;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    instance-of p3, p2, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/actionlink/ActionLinkModel;)Ljava/util/HashSet;

    move-result-object p3

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
