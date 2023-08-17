.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->rotateVI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

.field public final synthetic val$rotateVI:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$3;->val$rotateVI:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$IView;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$IView;->onReadyToRotate()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer$3;->val$rotateVI:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;->n(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/mini/HwSettingPenMiniContainer;Ljava/lang/Runnable;)V

    return-void
.end method
