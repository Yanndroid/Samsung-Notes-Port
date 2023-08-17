.class Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;)I
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->getType()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->a(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;->a(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$LanguageInfo;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;->compareTo(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/HWLanguageAdapter$1;->compare(Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/adapter/holder/HWLanguageHolderInfo;)I

    move-result p1

    return p1
.end method
