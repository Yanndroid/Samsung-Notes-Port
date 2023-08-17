.class public Lcom/samsung/android/app/notes/widget/AppWidgetConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setup()V
    .locals 2

    const-class v0, Lcom/samsung/android/app/notes/widget/WidgetResolver;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->setWidgetResolverClass(Ljava/lang/Class;)V

    new-instance v0, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcaster;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/widget/broadcast/WidgetBroadcaster;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->setWidgetBroadcaster(Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;)V

    const-class v0, Lcom/samsung/android/app/notes/widget/WidgetProvider;

    const-class v1, Lcom/samsung/android/app/notes/widget/WidgetImgShortCutProvider;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/widget/util/ProviderUtils;->setProviderClasses(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method
