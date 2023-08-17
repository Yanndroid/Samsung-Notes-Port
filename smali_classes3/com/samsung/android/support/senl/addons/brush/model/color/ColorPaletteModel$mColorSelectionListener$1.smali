.class public final Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$mColorSelectionListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel$OnSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;-><init>(I[I[Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$mColorSelectionListener$1",
        "Lcom/samsung/android/support/senl/addons/brush/model/color/MenuColorModel$OnSelectionListener;",
        "onSelected",
        "",
        "index",
        "",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$mColorSelectionListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(ILcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V
    .locals 1
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "color"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel$mColorSelectionListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;->access$onSelected(Lcom/samsung/android/support/senl/addons/brush/model/color/ColorPaletteModel;ILcom/samsung/android/support/senl/addons/base/model/color/IExtendedColor;)V

    return-void
.end method
