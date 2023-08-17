.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;->showGuideTip(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/util/sa/ComposerSAConstants;->SCREEN_NONE:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "a"

    goto :goto_0

    :cond_0
    const-string v1, "b"

    :goto_0
    const-string v2, "8210"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;)V

    return-void
.end method
