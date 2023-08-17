.class Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Listenable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/LanguageDownloadCompleteEvent;->getDefinedEventName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/Event;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWLanguagePresenter;->onLoadLanguageData()V

    return-void
.end method
