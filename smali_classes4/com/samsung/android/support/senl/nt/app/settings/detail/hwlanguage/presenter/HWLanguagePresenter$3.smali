.class Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$InitFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFinished()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->onLoadLanguageData()V

    return-void
.end method
