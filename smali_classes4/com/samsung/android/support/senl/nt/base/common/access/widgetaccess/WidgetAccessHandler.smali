.class public Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetAccessHandler"

.field private static WIDGET_NOTE_LIST_PROVIDER_CLASS:Ljava/lang/Class;

.field private static WIDGET_RESOLVER_CLASS:Ljava/lang/Class;

.field private static WIDGET_TOOLBAR_PROVIDER_CLASS:Ljava/lang/Class;

.field private static sWidgetBroadcast:Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNoteListWidgetProviderClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->WIDGET_NOTE_LIST_PROVIDER_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getWidgetBroadcaster()Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->sWidgetBroadcast:Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;

    return-object v0
.end method

.method public static getWidgetResolverClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->WIDGET_RESOLVER_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static getWidgetToolbarProviderClass()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->WIDGET_TOOLBAR_PROVIDER_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method public static setNoteListWidgetProviderClass(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->WIDGET_NOTE_LIST_PROVIDER_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->WIDGET_NOTE_LIST_PROVIDER_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "WidgetAccessHandler"

    const-string v0, "setNoteListWidgetProviderClass, twice access! only first trial is accepted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setWidgetBroadcaster(Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->sWidgetBroadcast:Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/IWidgetBroadcaster;

    return-void
.end method

.method public static setWidgetResolverClass(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->WIDGET_RESOLVER_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->WIDGET_RESOLVER_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "WidgetAccessHandler"

    const-string v0, "setWidgetResolverClass, twice access! only first trial is accepted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setWidgetToolbarProviderClass(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->WIDGET_TOOLBAR_PROVIDER_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->WIDGET_TOOLBAR_PROVIDER_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "WidgetAccessHandler"

    const-string v0, "setWidgetToolbarProviderClass, twice access! only first trial is accepted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
