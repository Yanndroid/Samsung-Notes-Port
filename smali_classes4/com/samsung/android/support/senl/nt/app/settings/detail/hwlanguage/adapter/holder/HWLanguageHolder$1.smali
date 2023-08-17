.class Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder$1;
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick# savedRecognition as : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HWLanguageHolder"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HolderContract;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolder;)Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HolderContract;->onHWLanguageChanged(Ljava/lang/String;)V

    const-string p1, "581"

    const-string v0, "5825"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
