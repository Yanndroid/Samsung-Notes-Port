.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguageDownloadHelper$DeleteListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeleteListener"


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteResultCallback:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DeleteResultCallback;

.field private mLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DeleteResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DeleteResultCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;->mContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;->mLocale:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;->mDeleteResultCallback:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DeleteResultCallback;

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 5

    const-string v0, "DeleteListener"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot Delete "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;->mLocale:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;->mLocale:Ljava/lang/String;

    const-string v2, "Settings"

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v3

    const-string v4, "settings_handwriting_recognition_language"

    invoke-virtual {v3, v4, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    invoke-virtual {v1, v4, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;->mLocale:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Deleted"

    goto :goto_0

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;->mDeleteResultCallback:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DeleteResultCallback;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DeleteResultCallback;->onFinished()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;->mContext:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;->mContext:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;->mLocale:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/DeleteListener;->mDeleteResultCallback:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/listener/ListenerCallback$DeleteResultCallback;

    return-void
.end method
