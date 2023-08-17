.class Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HolderContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;->e(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;)Landroid/widget/Button;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;->d(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HolderContract;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HolderContract;->onDownload(Ljava/lang/String;)V

    const-string p1, "581"

    const-string v0, "5826"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
