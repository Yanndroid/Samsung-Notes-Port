.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->initApplyToAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

.field public final synthetic val$applyToAll:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$2;->val$applyToAll:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->e()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setApplyToAll onCheckedChanged# b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ApplyToAllData;->setApplyToAll(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView$2;->val$applyToAll:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;Landroidx/appcompat/widget/SwitchCompat;)V

    if-eqz p2, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string p2, "401"

    const-string v0, "3510"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
