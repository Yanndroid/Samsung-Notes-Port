.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenSizeLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenSizeLayout;->initPenSizeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenSizeLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenSizeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenSizeLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenSizeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(FI)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenSizeLayout;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenPenSizeView# onSizeChanged size/sizeLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenSizeLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingPenSizeLayout;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/ISettingViewManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/ISettingViewManager;->onUpdatedPenSize(FI)V

    return-void
.end method
