.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;->showWriterGuideTip(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showWriterGuideTip# onDismissed "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditGuideTip;Z)V

    return-void
.end method
