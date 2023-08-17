.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/CoeditState;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDisable(Landroid/widget/ImageButton;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method
