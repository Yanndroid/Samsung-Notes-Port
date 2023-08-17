.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/pen/IBasePenModelList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&J\n\u0010\t\u001a\u0004\u0018\u00010\u0003H&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/pen/IBasePenModelList;",
        "",
        "getEraserPenModel",
        "Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;",
        "getPenModel",
        "index",
        "",
        "name",
        "",
        "getSelectedModel",
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


# virtual methods
.method public abstract getEraserPenModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPenModel(I)Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPenModel(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getSelectedModel()Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
