.class public final Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager$mSelectedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;-><init>(Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager$mSelectedListener$1",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$OnSelectedListener;",
        "onSelected",
        "",
        "page",
        "",
        "position",
        "color",
        "Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;",
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


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager$mSelectedListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(IILcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V
    .locals 1
    .param p3    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager$mSelectedListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->access$getMSelectedPage$p(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager$mSelectedListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->access$releaseSelectedPage(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager$mSelectedListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->access$setMSelectedPage$p(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;I)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager$mSelectedListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorModelsManager;->updateColorAndPosition(Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;I)V

    :cond_1
    return-void
.end method
