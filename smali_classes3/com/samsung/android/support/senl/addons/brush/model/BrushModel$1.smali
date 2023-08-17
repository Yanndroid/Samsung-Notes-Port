.class public final Lcom/samsung/android/support/senl/addons/brush/model/BrushModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$BrushModelZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;Lcom/samsung/android/support/senl/addons/brush/model/color/IColorModelInjector;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/brush/model/BrushModel$1",
        "Lcom/samsung/android/support/senl/addons/brush/model/BrushPenModelManager$BrushModelZoomListener;",
        "notifyPenSelectionChange",
        "",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyPenSelectionChange()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/BrushModel$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/model/BrushModel;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    return-void
.end method
