.class public final Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "sInstanceModel",
        "Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;",
        "storeInstanceModel",
        "",
        "fragmentView",
        "Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final storeInstanceModel(Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fragmentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "storeInstanceModel - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getMModel()Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->getMModel()Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/base/view/fragmentbase/BaseFragmentView;->access$setSInstanceModel$cp(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;)V

    return-void
.end method
