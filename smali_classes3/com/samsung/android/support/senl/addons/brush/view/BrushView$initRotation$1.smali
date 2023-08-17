.class public final Lcom/samsung/android/support/senl/addons/brush/view/BrushView$initRotation$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->initRotation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/brush/view/BrushView$initRotation$1",
        "Landroid/database/ContentObserver;",
        "deliverSelfNotifications",
        "",
        "onChange",
        "",
        "selfChange",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/view/BrushView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/view/BrushView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView$initRotation$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/BrushView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView$initRotation$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/BrushView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->access$isAutoRotateEnabled(Lcom/samsung/android/support/senl/addons/brush/view/BrushView;)Z

    move-result p1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/BrushView$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto rotation is enabled ? - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/BrushView$initRotation$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/BrushView;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/BrushView;->access$enableRotation(Lcom/samsung/android/support/senl/addons/brush/view/BrushView;Z)V

    return-void
.end method
