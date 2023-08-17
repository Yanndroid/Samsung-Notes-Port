.class final Lcom/samsung/android/app/sdk/deepsky/DeepSky$smartWidgetByLazy$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/sdk/deepsky/DeepSky;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0006\n\u0002\u0018\u0002\n\u0000\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic $appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$smartWidgetByLazy$2;->$appContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/common/Injector;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/common/Injector;

    iget-object v2, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$smartWidgetByLazy$2;->$appContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/sdk/deepsky/common/Injector;->provideServiceCaller$deepsky_sdk_2_2_9_release(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/sdk/deepsky/DeepSky$smartWidgetByLazy$2;->$appContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/sdk/deepsky/common/Injector;->shareSystemDatasource$deepsky_sdk_2_2_9_release(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;-><init>(Lcom/samsung/android/app/sdk/deepsky/common/ContentProviderCaller;Lcom/samsung/android/app/sdk/deepsky/common/SystemDataSource;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;->checkIfAccessAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/DeepSky$smartWidgetByLazy$2;->invoke()Lcom/samsung/android/app/sdk/deepsky/smartwidget/SmartWidgetImpl;

    move-result-object v0

    return-object v0
.end method
