.class Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;->initColorSetting(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$4;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->Menu:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->isValidEvent([Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x12c

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->setHoldingEventTime(JLcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout$4;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;->mTextPalette:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextColorPalette;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextColorPalette;->getPaletteList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;->d(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingTextModeLayout;Ljava/util/List;)V

    return-void
.end method
